package com.ym.vaccine.controller;

import java.text.SimpleDateFormat;
import java.util.*;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;

import cn.dev33.satoken.annotation.SaIgnore;
import cn.hutool.crypto.asymmetric.Sign;
import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.ym.vaccine.annotation.PassToken;
import com.ym.vaccine.domain.*;
import com.ym.vaccine.domain.common.Result;
import com.ym.vaccine.exception.TokenUnavailable;
import com.ym.vaccine.mapper.YmInoculateSiteMapper;
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
import com.ym.vaccine.domain.vo.YmWorkerVo;
import com.ym.vaccine.domain.bo.YmWorkerBo;
import com.ym.common.core.page.TableDataInfo;

/**
 * 医护人员信息
 *
 * @author ym
 * @date 2024-01-29
 */
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/vaccine/worker")
public class YmWorkerController extends BaseController {

    private final IYmWorkerService iYmWorkerService;
    private final IYmUserService userService;
    private final IYmObserveService observeService;
    private final IYmAppointService appointService;
    private final IYmPlanService planService;
    private final IVaccineService vaccineService;
    private final IYmInoculateService inoculateService;
    private final IYmInoculateSiteService inoculateSiteService;
    private final IYmSignService signService;
    private final IYmPreCheckService preCheckService;

    private final YmInoculateSiteMapper ymInoculateSiteMapper;
    @SaIgnore
    @GetMapping("/findSignHistories")
    @PassToken(required = false)
    public Result findSignHistories(@RequestHeader("x-token") String token) {
        String workerId = null;
        try {
            workerId = JwtUtils.getAudience(token);
        } catch (TokenUnavailable tokenUnavailable) {
            return Result.error("token无效");
        }

        QueryWrapper<YmSign> signQueryWrapper = new QueryWrapper<>();
        signQueryWrapper.eq("worker_id", workerId);
        List<YmSign> list = signService.list(signQueryWrapper);
        List<Map<String, Object>> results = new ArrayList<>();
        for (int i = 0; i < list.size(); i ++) {
            Map<String, Object> result = new HashMap<>();
            YmAppoint appoint = appointService.getById(list.get(i).getAppointId());
            YmUser user = userService.getById(appoint.getUserId());
            result.put("createTime", new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(list.get(i).getCreateTime()));
            result.put("userRealName", user.getRealName());
            results.add(result);
        }
        return Result.ok(results, "查询成功");
    }
    @SaIgnore
    @GetMapping("/findPreCheckHistories")
    @PassToken(required = false)
    public Result findPreCheckHistories(@RequestHeader("x-token") String token) {
        String workerId = null;
        try {
            workerId = JwtUtils.getAudience(token);
        } catch (TokenUnavailable tokenUnavailable) {
            return Result.error("token无效");
        }

        QueryWrapper<YmPreCheck> preCheckQueryWrapper = new QueryWrapper<>();
        preCheckQueryWrapper.eq("worker_id", workerId);
        List<YmPreCheck> list = preCheckService.list(preCheckQueryWrapper);
        List<Map<String, Object>> results = new ArrayList<>();
        for (int i = 0; i < list.size(); i ++) {
            Map<String, Object> result = new HashMap<>();
            if (list.get(i).getIsMedicine() == 0) {
                result.put("medicine", "无");
            } else {
                result.put("medicine", list.get(i).getMedicine());
            }
            if (list.get(i).getIsContraindication() == 0) {
                result.put("contraindication", "无");
            } else {
                result.put("contraindication", list.get(i).getContraindication());
            }
            result.put("bloodPressureHigh", list.get(i).getBloodPressureHigh());
            result.put("bloodPressureLow", list.get(i).getBloodPressureLow());
            result.put("temperature", list.get(i).getTemperature());
            result.put("createTime", new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(list.get(i).getCreateTime()));
            if (StringUtils.isBlank(list.get(i).getNote())) {
                result.put("note", "无");
            } else {
                result.put("note", list.get(i).getNote());
            }
            YmAppoint appoint = appointService.getById(list.get(i).getAppointId());
            YmUser user = userService.getById(appoint.getUserId());
            result.put("userRealName", user.getRealName());
            results.add(result);
        }
        return Result.ok(results, "查询成功");
    }

    @SaIgnore
    @GetMapping("/findInoculateHistories")
    @PassToken(required = false)
    public Result findInoculateHistories(@RequestHeader("x-token") String token) {
        String workerId = null;
        try {
            workerId = JwtUtils.getAudience(token);
        } catch (TokenUnavailable tokenUnavailable) {
            return Result.error("token无效");
        }

        QueryWrapper<YmInoculate> inoculateQueryWrapper = new QueryWrapper<>();
        inoculateQueryWrapper.eq("worker_id", workerId);
        List<YmInoculate> list = inoculateService.list(inoculateQueryWrapper);
        List<Map<String, Object>> results = new ArrayList<>();
        for (int i = 0; i < list.size(); i ++) {
            Map<String, Object> result = new HashMap<>();
            result.put("part", list.get(i).getPart());
            result.put("vaccineBatchCode", list.get(i).getVaccineBatchCode());
            result.put("createTime", new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(list.get(i).getCreateTime()));
            if (StringUtils.isBlank(list.get(i).getNote())) {
                result.put("note", "无");
            } else {
                result.put("note", list.get(i).getNote());
            }
            YmAppoint appoint = appointService.getById(list.get(i).getAppointId());
            YmUser user = userService.getById(appoint.getUserId());
            result.put("userRealName", user.getRealName());
            YmPlan plan = planService.getById(appoint.getPlanId());
            Vaccine vaccine = vaccineService.getById(plan.getVaccineId());
            result.put("vaccineName", vaccine.getName());
            results.add(result);
        }
        return Result.ok(results, "查询成功");
    }
    @SaIgnore
    @GetMapping("/findObserveHistories")
    @PassToken(required = false)
    public Result findObserveHistories(@RequestHeader("x-token") String token) {
        String workerId = null;
        try {
            workerId = JwtUtils.getAudience(token);
        } catch (TokenUnavailable tokenUnavailable) {
            return Result.error("token无效");
        }

        QueryWrapper<YmObserve> observeQueryWrapper = new QueryWrapper<>();
        observeQueryWrapper.eq("worker_id", workerId);
        List<YmObserve> list = observeService.list(observeQueryWrapper);
        List<Map<String, Object>> results = new ArrayList<>();
        for (int i = 0; i < list.size(); i ++) {
            Map<String, Object> result = new HashMap<>();
            result.put("createTime", new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(list.get(i).getCreateTime()));
            if (list.get(i).getIsFinish() == 0) {
                result.put("status", "留观中");
                result.put("endTime", "留观尚未结束");
            } else {
                result.put("status", "留观结束");
                result.put("endTime", new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(list.get(i).getEndTime()));
            }
            if (StringUtils.isBlank(list.get(i).getNote())) {
                result.put("note", "无");
            } else {
                result.put("note", list.get(i).getNote());
            }
            YmAppoint appoint = appointService.getById(list.get(i).getAppointId());
            YmUser user = userService.getById(appoint.getUserId());
            result.put("userRealName", user.getRealName());
            results.add(result);
        }
        return Result.ok(results, "查询成功");
    }
    @SaIgnore
    @PostMapping("/login")
    public Result login(@RequestBody YmWorker worker) {
        if (StringUtils.isBlank(worker.getUsername())) {
            return Result.error("用户名不能为空");
        }
        if (StringUtils.isBlank(worker.getPassword())) {
            return Result.error("密码不能为空");
        }

        QueryWrapper<YmWorker> workerQueryWrapper = new QueryWrapper<>();
        workerQueryWrapper.eq("username", worker.getUsername());
        List<YmWorker> list = iYmWorkerService.list(workerQueryWrapper);
        if (list.size() == 0) {
            return Result.error("用户不存在");
        }
        YmWorker target = list.get(0);
        if (!target.getPassword().equals(worker.getPassword())) {
            return Result.error("密码错误");
        }
        target.setPassword(null);

        YmInoculateSite inoculateSite = inoculateSiteService.getById(target.getInoculateSiteId());


        JSONObject obj = new JSONObject();
        obj.put("inoculateSiteName", inoculateSite.getName());
        obj.put("worker", target);
        obj.put("userType","worker");
        obj.put("token", JwtUtils.createToken(target.getId() + "", target.getUsername(), target.getRealName(), "worker"));
        return Result.ok(obj, "登录成功");
    }
    @SaIgnore
    @PutMapping("/change")
    @PassToken(required = false)
    public Result Change(@RequestBody YmWorker worker, @RequestHeader("x-token") String token) {
        String workerId = null;
        try {
            workerId = JwtUtils.getAudience(token);
        } catch (TokenUnavailable tokenUnavailable) {
            return Result.error("token无效");
        }

        YmWorker target = iYmWorkerService.getById(workerId);
        worker.setId(target.getId());
        if (StringUtils.isBlank(worker.getUsername())) {
            worker.setUsername(target.getUsername());
        }
        if (!target.getUsername().equals(worker.getUsername())) {
            QueryWrapper<YmWorker> workerQueryWrapper = new QueryWrapper<>();
            workerQueryWrapper.eq("username", worker.getUsername());
            List<YmWorker> list = iYmWorkerService.list(workerQueryWrapper);
            if (list.size() != 0) {
                return Result.error("用户名已存在");
            }
        }
        if (StringUtils.isBlank(worker.getPassword())) {
            worker.setPassword(target.getPassword());
        }
        worker.setRealName(target.getRealName());
        worker.setCardId(target.getCardId());
        worker.setPhone(target.getPhone());
        worker.setInoculateSiteId(target.getInoculateSiteId());
        iYmWorkerService.updateById(worker);
        return Result.ok("修改成功");
    }
    /**
     * 查询医护人员信息列表
     */
    @SaCheckPermission("vaccine:worker:list")
    @GetMapping("/list")
    public TableDataInfo<YmWorkerVo> list(YmWorkerBo bo, PageQuery pageQuery) {
        TableDataInfo<YmWorkerVo> ymWorkerVoTableDataInfo = iYmWorkerService.queryPageList(bo, pageQuery);
        List<YmWorkerVo> rows = ymWorkerVoTableDataInfo.getRows();
        List<YmWorkerVo> collect = rows.stream().map(ymWorkerVo -> {
            ymWorkerVo.setInoculateSiteName(ymInoculateSiteMapper.selectById(ymWorkerVo.getInoculateSiteId()).getName());
            return ymWorkerVo;
        }).collect(Collectors.toList());
        ymWorkerVoTableDataInfo.setRows(collect);
        return ymWorkerVoTableDataInfo;
    }

    /**
     * 导出医护人员信息列表
     */
    @SaCheckPermission("vaccine:worker:export")
    @Log(title = "医护人员信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(YmWorkerBo bo, HttpServletResponse response) {
        List<YmWorkerVo> list = iYmWorkerService.queryList(bo);
        ExcelUtil.exportExcel(list, "医护人员信息", YmWorkerVo.class, response);
    }

    /**
     * 获取医护人员信息详细信息
     *
     * @param id 主键
     */
    @SaCheckPermission("vaccine:worker:query")
    @GetMapping("/{id}")
    public R<YmWorkerVo> getInfo(@NotNull(message = "主键不能为空")
                                     @PathVariable Long id) {
        return R.ok(iYmWorkerService.queryById(id));
    }

    /**
     * 新增医护人员信息
     */
    @SaCheckPermission("vaccine:worker:add")
    @Log(title = "医护人员信息", businessType = BusinessType.INSERT)
    @RepeatSubmit()
    @PostMapping()
    public R<Void> add(@Validated(AddGroup.class) @RequestBody YmWorkerBo bo) {
        return toAjax(iYmWorkerService.insertByBo(bo));
    }

    /**
     * 修改医护人员信息
     */
    @SaCheckPermission("vaccine:worker:edit")
    @Log(title = "医护人员信息", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody YmWorkerBo bo) {
        return toAjax(iYmWorkerService.updateByBo(bo));
    }

    /**
     * 删除医护人员信息
     *
     * @param ids 主键串
     */
    @SaCheckPermission("vaccine:worker:remove")
    @Log(title = "医护人员信息", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public R<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Long[] ids) {
        return toAjax(iYmWorkerService.deleteWithValidByIds(Arrays.asList(ids), true));
    }
}
