package com.ym.vaccine.controller;

import java.text.SimpleDateFormat;
import java.util.*;
import java.util.concurrent.TimeUnit;

import cn.dev33.satoken.annotation.SaIgnore;
import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.ym.vaccine.annotation.PassToken;
import com.ym.vaccine.domain.*;
import com.ym.vaccine.domain.common.Result;
import com.ym.vaccine.exception.TokenUnavailable;
import com.ym.vaccine.service.*;
import com.ym.vaccine.utils.JwtUtils;
import lombok.RequiredArgsConstructor;
import javax.servlet.http.HttpServletResponse;
import javax.validation.constraints.*;
import cn.dev33.satoken.annotation.SaCheckPermission;
import org.apache.commons.lang3.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.validation.annotation.Validated;
import com.ym.common.annotation.RepeatSubmit;
import com.ym.common.annotation.Log;
import com.ym.common.core.controller.BaseController;
import com.ym.common.core.domain.PageQuery;
import com.ym.common.core.domain.R;
import com.ym.common.core.validate.AddGroup;
import com.ym.common.core.validate.EditGroup;
import com.ym.common.core.validate.QueryGroup;
import com.ym.common.enums.BusinessType;
import com.ym.common.utils.poi.ExcelUtil;
import com.ym.vaccine.domain.vo.YmUserVo;
import com.ym.vaccine.domain.bo.YmUserBo;
import com.ym.common.core.page.TableDataInfo;

/**
 * 疫苗预约用户
 *
 * @author ym
 * @date 2024-01-29
 */
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/vaccine/user")
public class YmUserController extends BaseController {

    private final IYmUserService iYmUserService;
    private final DistrictService districtService;
    private final IYmAppointService appointService;
    private final IYmPlanService planService;
    private final IVaccineService vaccineService;
    private final IYmInoculateService inoculateService;
    private final IYmInoculateSiteService inoculateSiteService;
    private final IYmPayService payService;
    private final IYmWorkerService workerService;
    private final IYmPreCheckService preCheckService;
    @SaIgnore
    @PostMapping("/login")
    public Result login(@RequestBody YmUser user) {
        if (StringUtils.isBlank(user.getUsername())) {
            return Result.error("用户名不能为空");
        }
        if (StringUtils.isBlank(user.getPassword())) {
            return Result.error("用户密码不能为空");
        }

        QueryWrapper<YmUser> userQueryWrapper = new QueryWrapper<>();
        userQueryWrapper.eq("username", user.getUsername());
        List<YmUser> list = iYmUserService.list(userQueryWrapper);
        if (list.size() == 0) {
            return Result.error("用户不存在");
        }
        YmUser target = list.get(0);
        if (!target.getPassword().equals(user.getPassword())) {
            return Result.error("密码错误");
        }
        target.setPassword(null);

        QueryWrapper<District> districtQueryWrapper = new QueryWrapper<>();
        districtQueryWrapper.eq("code", target.getDistrictCode());
        District district = districtService.list(districtQueryWrapper).get(0);
        districtQueryWrapper.clear();
        districtQueryWrapper.eq("code", district.getParent());
        District city = districtService.list(districtQueryWrapper).get(0);
        districtQueryWrapper.clear();
        districtQueryWrapper.eq("code", city.getParent());
        District province = districtService.list(districtQueryWrapper).get(0);

        JSONObject obj = new JSONObject();
        obj.put("area", province.getName() + city.getName() + district.getName());
        obj.put("user", target);
        obj.put("userType","user");
        obj.put("token", JwtUtils.createToken(target.getId() + "", target.getUsername(), target.getRealName(), "user"));
        return Result.ok(obj, "登录成功");
    }
    @SaIgnore
    @PostMapping(value = "/validate")
    public Result validate(@RequestBody Map<String, Object> params) {
        if (params.get("token") == null || params.get("userType") == null) {
            return Result.error("参数有误");
        }
        String userType = null;
        try {
            userType = JwtUtils.getClaimByName((String) params.get("token"),"userType").asString();
        } catch (TokenUnavailable tokenUnavailable) {
            return Result.error("验证失败");
        }
        if(!((String) params.get("userType")).equals(userType)){
            return Result.error("用户身份不匹配");
        }
        try {
            String userId = JwtUtils.getAudience((String) params.get("token"));
            JwtUtils.verifyToken((String) params.get("token"), userId);
        } catch (TokenUnavailable tokenUnavailable) {
            return Result.error("验证失败");
        }
        return Result.ok("验证成功");

    }
    @SaIgnore
    @GetMapping("/findAppoint")
    @PassToken(required = false)
    public Result findAppoint(@RequestHeader("x-token") String token) {
        String userId = null;
        try {
            userId = JwtUtils.getAudience(token);
        } catch (TokenUnavailable tokenUnavailable) {
            return Result.error("token无效");
        }

        QueryWrapper<YmAppoint> appointQueryWrapper = new QueryWrapper<>();
        appointQueryWrapper.eq("user_id", userId);
        appointQueryWrapper.ne("status", 4);
        appointQueryWrapper.ne("status", 5);
        appointQueryWrapper.ne("status", 6);
        appointQueryWrapper.ne("status", 7);

        List<YmAppoint> list = appointService.list(appointQueryWrapper);
        if (list.size() > 1) {
            return Result.error("预约信息有误");
        }
        return Result.ok(list, "查询成功");
    }
    @SaIgnore
    @PutMapping("/cancelAppoint")
    @PassToken(required = false)
    public Result cancelAppoint(@RequestHeader("x-token") String token) {
        String userId = null;
        try {
            userId = JwtUtils.getAudience(token);
        } catch (TokenUnavailable tokenUnavailable) {
            return Result.error("token无效");
        }

        QueryWrapper<YmAppoint> appointQueryWrapper = new QueryWrapper<>();
        appointQueryWrapper.eq("user_id", userId);
        appointQueryWrapper.eq("status", 0);
        List<YmAppoint> list = appointService.list(appointQueryWrapper);
        if (list.size() != 1) {
            return Result.error("取消预约失败，请刷新二维码");
        }
        YmAppoint appoint = list.get(0);
        YmPlan plan = planService.getById(appoint.getPlanId());
        if (plan == null) {
            return Result.error("预约信息有误");
        }
        appointService.cancelAppoint(appoint, plan);
        return Result.ok("更新成功");
    }
    @SaIgnore
    @PostMapping("/save")
    @PassToken
    public Result save(@RequestBody YmUser user) {
        user.setId(null);
        if (StringUtils.isBlank(user.getUsername())) {
            return Result.error("用户名不能为空");
        }
        if (StringUtils.isBlank(user.getPassword())) {
            return Result.error("密码不能为空");
        }
        if (StringUtils.isBlank(user.getRealName())) {
            return Result.error("姓名不能为空");
        }
        if (StringUtils.isBlank(user.getCardId())) {
            return Result.error("身份证号不能为空");
        }
        if (StringUtils.isBlank(user.getPhone())) {
            return Result.error("手机号不能为空");
        }
        if (StringUtils.isBlank(user.getAddress())) {
            return Result.error("地址不能为空");
        }
        if (user.getDistrictCode() == null) {
            return Result.error("区域编码不能为空");
        }

        QueryWrapper<YmUser> userQueryWrapper = new QueryWrapper<>();
        userQueryWrapper.eq("username", user.getUsername());
        List<YmUser> userList = iYmUserService.list(userQueryWrapper);
        if (userList.size() != 0) {
            return Result.error("用户名已存在");
        }

        QueryWrapper<District> districtQueryWrapper = new QueryWrapper<>();
        districtQueryWrapper.eq("code", user.getDistrictCode());
        List<District> districtList = districtService.list(districtQueryWrapper);
        if (districtList.size() != 1) {
            return Result.error("区域编码有误");
        }

        iYmUserService.save(user);
        return Result.ok("新增成功");
    }
    @SaIgnore
    @GetMapping("/findAppointHistories")
    @PassToken(required = false)
    public Result findAppointHistories(@RequestHeader("x-token") String token) {
        String userId = null;
        try {
            userId = JwtUtils.getAudience(token);
        } catch (TokenUnavailable tokenUnavailable) {
            return Result.error("token无效");
        }

        QueryWrapper<YmAppoint> appointQueryWrapper = new QueryWrapper<>();
        appointQueryWrapper.eq("user_id", userId);
        List<YmAppoint> list = appointService.list(appointQueryWrapper);
        List<Map<String, Object>> results = new ArrayList<>();
        for (int i = 0; i < list.size(); i ++) {
            Map<String, Object> result = new HashMap<>();
            result.put("appointDate", new SimpleDateFormat("yyyy-MM-dd").format(list.get(i).getAppointDate()));
            if (list.get(i).getStatus() == 0) {
                result.put("status", "待签到");
            } else if (list.get(i).getStatus() == 1) {
                result.put("status", "待预检");
            } else if (list.get(i).getStatus() == 2) {
                result.put("status", "待接种");
            } else if (list.get(i).getStatus() == 3) {
                result.put("status", "留观中");
            } else if (list.get(i).getStatus() == 4) {
                result.put("status", "接种结束");
            } else if (list.get(i).getStatus() == 5) {
                result.put("status", "预约过期");
            } else if (list.get(i).getStatus() == 6) {
                result.put("status", "取消预约");
            } else {
                result.put("status", "接种流程异常");
            }
            result.put("createTime", new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(list.get(i).getCreateTime()));
            YmPlan plan = planService.getById(list.get(i).getPlanId());
            if (list.get(i).getTimeSlot() == 0) {
                result.put("timeSlot", "上午" + plan.getStartTimeMorning() + "-" + plan.getEndTimeMorning() + "点");
            } else if (list.get(i).getTimeSlot() == 1) {
                result.put("timeSlot", "下午" + plan.getStartTimeAfternoon() + "-" + plan.getEndTimeAfternoon() + "点");
            } else {
                result.put("timeSlot", "夜晚" + plan.getStartTimeEvening() + "-" + plan.getEndTimeEvening() + "点");
            }
            Vaccine vaccine = vaccineService.getById(plan.getVaccineId());
            result.put("vaccineName", vaccine.getName());
            YmInoculateSite inoculateSite = inoculateSiteService.getById(plan.getInoculateSiteId());
            result.put("inoculateSiteName", inoculateSite.getName());
            results.add(result);
        }
        return Result.ok(results, "查询成功");
    }
    @SaIgnore
    @GetMapping("/findInoculateHistories")
    @PassToken(required = false)
    public Result findInoculateHistories(@RequestHeader("x-token") String token) {
        String userId = null;
        try {
            userId = JwtUtils.getAudience(token);
        } catch (TokenUnavailable tokenUnavailable) {
            return Result.error("token无效");
        }

        QueryWrapper<YmAppoint> appointQueryWrapper = new QueryWrapper<>();
        appointQueryWrapper.eq("user_id", userId);
        List<YmAppoint> appointList = appointService.list(appointQueryWrapper);


        QueryWrapper<YmInoculate> inoculateQueryWrapper = new QueryWrapper<>();
        if (appointList.size() == 0) {
            inoculateQueryWrapper.eq("appoint_id", null);
        }
        for (int i = 0; i < appointList.size(); i ++) {
            inoculateQueryWrapper.eq("appoint_id", appointList.get(i).getId());
            inoculateQueryWrapper.or();
        }
        List<YmInoculate> inoculateList = inoculateService.list(inoculateQueryWrapper);
        List<Map<String, Object>> results = new ArrayList<>();
        for (int i = 0; i < inoculateList.size(); i ++) {
            Map<String, Object> result = new HashMap<>();
            result.put("part", inoculateList.get(i).getPart());
            result.put("vaccineBatchCode", inoculateList.get(i).getVaccineBatchCode());
            YmWorker worker = workerService.getById(inoculateList.get(i).getWorkerId());
            result.put("workerRealName", worker.getRealName());
            result.put("createTime", new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(inoculateList.get(i).getCreateTime()));
            if (StringUtils.isBlank(inoculateList.get(i).getNote())) {
                result.put("note", "无");
            } else {
                result.put("note", inoculateList.get(i).getNote());
            }
            YmAppoint appoint = appointService.getById(inoculateList.get(i).getAppointId());
            YmPlan plan = planService.getById(appoint.getPlanId());
            Vaccine vaccine = vaccineService.getById(plan.getVaccineId());
            result.put("vaccineName", vaccine.getName());
            YmInoculateSite inoculateSite = inoculateSiteService.getById(plan.getInoculateSiteId());
            result.put("inoculateSiteName", inoculateSite.getName());
            results.add(result);
        }
        return Result.ok(results, "查询成功");
    }
    @SaIgnore
    @GetMapping("/findPayHistories")
    @PassToken(required = false)
    public Result findPayHistories(@RequestHeader("x-token") String token) {
        String userId = null;
        try {
            userId = JwtUtils.getAudience(token);
        } catch (TokenUnavailable tokenUnavailable) {
            return Result.error("token无效");
        }

        QueryWrapper<YmAppoint> appointQueryWrapper = new QueryWrapper<>();
        appointQueryWrapper.eq("user_id", userId);
        List<YmAppoint> appointList = appointService.list(appointQueryWrapper);

        QueryWrapper<YmPay> payQueryWrapper = new QueryWrapper<>();
        if (appointList.size() == 0) {
            payQueryWrapper.eq("appoint_id", null);
        }
        for (int i = 0; i < appointList.size(); i ++) {
            payQueryWrapper.eq("appoint_id", appointList.get(i).getId());
            payQueryWrapper.or();
        }

        List<YmPay> payList = payService.list(payQueryWrapper);
        List<Map<String, Object>> results = new ArrayList<>();
        for (int i = 0; i < payList.size(); i ++) {
            Map<String, Object> result = new HashMap<>();
            result.put("cost", payList.get(i).getCost());
            result.put("createTime", new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(payList.get(i).getCreateTime()));
            YmAppoint appoint = appointService.getById(payList.get(i).getAppointId());
            YmPlan plan = planService.getById(appoint.getPlanId());
            Vaccine vaccine = vaccineService.getById(plan.getVaccineId());
            result.put("vaccineName", vaccine.getName());
            results.add(result);
        }
        return Result.ok(results, "查询成功");
    }
    @SaIgnore
    @GetMapping("/findPreCheckHistories")
    @PassToken(required = false)
    public Result findPreCheckHistories(@RequestHeader("x-token") String token) {
        String userId = null;
        try {
            userId = JwtUtils.getAudience(token);
        } catch (TokenUnavailable tokenUnavailable) {
            return Result.error("token无效");
        }

        QueryWrapper<YmAppoint> appointQueryWrapper = new QueryWrapper<>();
        appointQueryWrapper.eq("user_id", userId);
        List<YmAppoint> appointList = appointService.list(appointQueryWrapper);

        QueryWrapper<YmPreCheck> preCheckQueryWrapper = new QueryWrapper<>();
        if (appointList.size() == 0) {
            preCheckQueryWrapper.eq("appoint_id", null);
        }
        for (int i = 0; i < appointList.size(); i ++) {
            preCheckQueryWrapper.eq("appoint_id", appointList.get(i).getId());
            preCheckQueryWrapper.or();
        }

        List<YmPreCheck> preCheckList = preCheckService.list(preCheckQueryWrapper);
        List<Map<String, Object>> results = new ArrayList<>();
        for (int i = 0; i < preCheckList.size(); i ++) {
            Map<String, Object> result = new HashMap<>();
            if (preCheckList.get(i).getIsMedicine() == 0) {
                result.put("medicine", "无");
            } else {
                result.put("medicine", preCheckList.get(i).getMedicine());
            }
            if (preCheckList.get(i).getIsContraindication() == 0) {
                result.put("contraindication", "无");
            } else {
                result.put("contraindication", preCheckList.get(i).getContraindication());
            }
            result.put("bloodPressureHigh", preCheckList.get(i).getBloodPressureHigh());
            result.put("bloodPressureLow", preCheckList.get(i).getBloodPressureLow());
            result.put("temperature", preCheckList.get(i).getTemperature());
            result.put("createTime", new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(preCheckList.get(i).getCreateTime()));
            if (StringUtils.isBlank(preCheckList.get(i).getNote())) {
                result.put("note", "无");
            } else {
                result.put("note", preCheckList.get(i).getNote());
            }
            YmAppoint appoint = appointService.getById(preCheckList.get(i).getAppointId());
            YmWorker worker = workerService.getById(preCheckList.get(i).getWorkerId());
            result.put("workRealName", worker.getRealName());
            YmPlan plan = planService.getById(appoint.getPlanId());
            YmInoculateSite inoculateSite = inoculateSiteService.getById(plan.getInoculateSiteId());
            result.put("inoculateSiteName", inoculateSite.getName());
            results.add(result);
        }
        return Result.ok(results, "查询成功");
    }
    @SaIgnore
    @PutMapping("/change")
    @PassToken(required = false)
    public Result Change(@RequestBody YmUser user, @RequestHeader("x-token") String token) {
        String userId = null;
        try {
            userId = JwtUtils.getAudience(token);
        } catch (TokenUnavailable tokenUnavailable) {
            return Result.error("token无效");
        }

        YmUser target = iYmUserService.getById(userId);
        user.setId(target.getId());
        if (StringUtils.isBlank(user.getUsername())) {
            user.setUsername(target.getUsername());
        }
        if (!target.getUsername().equals(user.getUsername())) {
            QueryWrapper<YmUser> userQueryWrapper = new QueryWrapper<>();
            userQueryWrapper.eq("username", user.getUsername());
            List<YmUser> list = iYmUserService.list(userQueryWrapper);
            if (list.size() != 0) {
                return Result.error("用户名已存在");
            }
        }
        if (StringUtils.isBlank(user.getPassword())) {
            user.setPassword(target.getPassword());
        }
        user.setRealName(target.getRealName());
        user.setCardId(target.getCardId());
        user.setPhone(target.getPhone());
        if (StringUtils.isBlank(user.getAddress())) {
            user.setAddress(target.getAddress());
        }
        if (StringUtils.isBlank(user.getDistrictCode())) {
            user.setDistrictCode(target.getDistrictCode());
        } else {
            QueryWrapper<District> districtQueryWrapper = new QueryWrapper<>();
            districtQueryWrapper.eq("code", user.getDistrictCode());
            List<District> districtList = districtService.list(districtQueryWrapper);
            if (districtList.size() == 0) {
                return Result.error("区域编码有误");
            } else {
                if (districtList.get(0).getParent().equals("86")) {
                    return Result.error("非区域级编码");
                }
                districtQueryWrapper.clear();
                districtQueryWrapper.eq("parent", districtList.get(0).getCode());
                if (districtService.list(districtQueryWrapper).size() != 0) {
                    return Result.error("非区域级编码");
                }
            }
        }
        iYmUserService.updateById(user);
        return Result.ok("修改成功");
    }

    /**
     * 查询疫苗预约用户列表
     */
    @SaCheckPermission("vaccine:ym_user:list")
    @GetMapping("/list")
    public TableDataInfo<YmUserVo> list(YmUserBo bo, PageQuery pageQuery) {
        return iYmUserService.queryPageList(bo, pageQuery);
    }

    /**
     * 导出疫苗预约用户列表
     */
    @SaCheckPermission("vaccine:ym_user:export")
    @Log(title = "疫苗预约用户", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(YmUserBo bo, HttpServletResponse response) {
        List<YmUserVo> list = iYmUserService.queryList(bo);
        ExcelUtil.exportExcel(list, "疫苗预约用户", YmUserVo.class, response);
    }

    /**
     * 获取疫苗预约用户详细信息
     *
     * @param id 主键
     */
    @SaCheckPermission("vaccine:ym_user:query")
    @GetMapping("/{id}")
    public R<YmUserVo> getInfo(@NotNull(message = "主键不能为空")
                                     @PathVariable Long id) {
        return R.ok(iYmUserService.queryById(id));
    }

    /**
     * 新增疫苗预约用户
     */
    @SaCheckPermission("vaccine:ym_user:add")
    @Log(title = "疫苗预约用户", businessType = BusinessType.INSERT)
    @RepeatSubmit()
    @PostMapping()
    public R<Void> add(@Validated(AddGroup.class) @RequestBody YmUserBo bo) {
        return toAjax(iYmUserService.insertByBo(bo));
    }

    /**
     * 修改疫苗预约用户
     */
    @SaCheckPermission("vaccine:ym_user:edit")
    @Log(title = "疫苗预约用户", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody YmUserBo bo) {
        return toAjax(iYmUserService.updateByBo(bo));
    }

    /**
     * 删除疫苗预约用户
     *
     * @param ids 主键串
     */
    @SaCheckPermission("vaccine:ym_user:remove")
    @Log(title = "疫苗预约用户", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public R<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Long[] ids) {
        return toAjax(iYmUserService.deleteWithValidByIds(Arrays.asList(ids), true));
    }
}
