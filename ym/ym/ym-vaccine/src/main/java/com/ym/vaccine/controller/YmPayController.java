package com.ym.vaccine.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Arrays;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;

import cn.dev33.satoken.annotation.SaIgnore;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.ym.common.utils.StringUtils;
import com.ym.vaccine.annotation.PassToken;
import com.ym.vaccine.domain.YmAppoint;
import com.ym.vaccine.domain.YmPlan;
import com.ym.vaccine.domain.YmUser;
import com.ym.vaccine.domain.common.Result;
import com.ym.vaccine.exception.TokenUnavailable;
import com.ym.vaccine.mapper.VaccineMapper;
import com.ym.vaccine.mapper.YmAppointMapper;
import com.ym.vaccine.mapper.YmPlanMapper;
import com.ym.vaccine.mapper.YmUserMapper;
import com.ym.vaccine.service.IYmAppointService;
import com.ym.vaccine.service.IYmPlanService;
import com.ym.vaccine.service.IYmUserService;
import com.ym.vaccine.utils.JwtUtils;
import lombok.RequiredArgsConstructor;
import javax.servlet.http.HttpServletResponse;
import javax.validation.constraints.*;
import cn.dev33.satoken.annotation.SaCheckPermission;
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
import com.ym.vaccine.domain.vo.YmPayVo;
import com.ym.vaccine.domain.bo.YmPayBo;
import com.ym.vaccine.service.IYmPayService;
import com.ym.common.core.page.TableDataInfo;

/**
 * 支付功能
 *
 * @author ym
 * @date 2024-01-29
 */
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/vaccine/pay")
public class YmPayController extends BaseController {

    private final IYmPayService iYmPayService;
    private final YmAppointMapper appointMapper;
    private final YmPlanMapper planMapper;
    private final YmUserMapper userMapper;
    private final VaccineMapper vaccineMapper;
    private final IYmPlanService planService;
    private final IYmAppointService appointService;
    private final IYmUserService userService;

    @SaIgnore
    @PostMapping("/user/pay/save")
    @PassToken(required = false)
    public Result save(@RequestBody YmAppoint appoint, @RequestHeader("x-token") String token) {
        String userId = null;
        try {
            userId = JwtUtils.getAudience(token);
        } catch (TokenUnavailable tokenUnavailable) {
            return Result.error("token无效");
        }

        appoint.setId(null);
        if (appoint.getPlanId() == null) {
            return Result.error("预约计划ID不能为空");
        }
        if (appoint.getAppointDate() == null) {
            return Result.error("预约日期不能为空");
        }
        if (appoint.getTimeSlot() == null) {
            return Result.error("预约时间段不能为空");
        }
        YmPlan plan = planService.getById(appoint.getPlanId());
        if (plan == null) {
            return Result.error("预约计划不存在");
        }
        Date now = new Date();
        if (now.after(plan.getEndDate())) {
            return Result.error("该预约计划已过期，请选择其他预约计划");
        }
        if (!(appoint.getAppointDate().after(now) && appoint.getAppointDate().before(new Date(plan.getEndDate().getTime() + 1000 * 60 * 60 * 24 * 1)))) {
            return Result.error("预约日期不在明日到预约计划结束之间");
        }
        if (plan.getAmount() < 1) {
            return Result.error("可预约量不足");
        }
        if (appoint.getTimeSlot() != 1 && appoint.getTimeSlot() != 0 && appoint.getTimeSlot() != 2) {
            return Result.error("预约时间段有误");
        }

        QueryWrapper<YmAppoint> appointQueryWrapper = new QueryWrapper<>();
        if (appoint.getTimeSlot() == 0) {
            appointQueryWrapper.ne("status", 6);
            if (appoint.getAppointDate() != null) {
                appointQueryWrapper.eq("appoint_date", new SimpleDateFormat("yyyy-MM-dd").format(appoint.getAppointDate()));
            } else {
                appointQueryWrapper.eq("appoint_date", new SimpleDateFormat("yyyy-MM-dd").format(plan.getEndDate()));
            }
            appointQueryWrapper.eq("time_slot", 0);
            appointQueryWrapper.eq("plan_id", plan.getId());
            if (plan.getMorningLimit() - appointService.count(appointQueryWrapper) < 1) {
                return Result.error("该时间段无可预约疫苗");
            }
        } else if (appoint.getTimeSlot() == 1) {
            appointQueryWrapper.ne("status", 6);
            if (appoint.getAppointDate() != null) {
                appointQueryWrapper.eq("appoint_date", new SimpleDateFormat("yyyy-MM-dd").format(appoint.getAppointDate()));
            } else {
                appointQueryWrapper.eq("appoint_date", new SimpleDateFormat("yyyy-MM-dd").format(plan.getEndDate()));
            }
            appointQueryWrapper.eq("time_slot", 1);
            appointQueryWrapper.eq("plan_id", plan.getId());
            if(plan.getAfternoonLimit() - appointService.count(appointQueryWrapper) < 1) {
                return Result.error("该时间段无可预约疫苗");
            }
        } else {
            appointQueryWrapper.ne("status", 6);
            if (appoint.getAppointDate() != null) {
                appointQueryWrapper.eq("appoint_date", new SimpleDateFormat("yyyy-MM-dd").format(appoint.getAppointDate()));
            } else {
                appointQueryWrapper.eq("appoint_date", new SimpleDateFormat("yyyy-MM-dd").format(plan.getEndDate()));
            }
            appointQueryWrapper.eq("time_slot", 2);
            appointQueryWrapper.eq("plan_id", plan.getId());
            if (plan.getEveningLimit() - appointService.count(appointQueryWrapper) < 1) {
                return Result.error("该时间段无可预约疫苗");
            }
        }

        appointQueryWrapper.clear();;
        appointQueryWrapper.eq("status", 0);
        appointQueryWrapper.eq("user_id", userId);
        List<YmAppoint> list = appointService.list(appointQueryWrapper);
        if (list.size() != 0) {
            return Result.error("您还有未完成的预约");
        }
        YmUser user = userService.getById(appoint.getUserId());
        if (user == null) {
            return Result.error("用户不存在");
        }
        try {
            appointService.appoint(appoint, plan);
        } catch (Exception e) {
            return Result.error("预约失败");
        }
        return Result.ok("预约成功");
    }

    /**
     * 查询支付功能列表
     */
    @SaCheckPermission("vaccine:pay:list")
    @GetMapping("/list")
    public TableDataInfo<YmPayVo> list(YmPayBo bo, PageQuery pageQuery) {

        TableDataInfo<YmPayVo> data = iYmPayService.queryPageList(bo, pageQuery);
        List<YmPayVo> dataList = data.getRows();
        dataList.stream().map(item->{
            item.setRealName(userMapper.selectById(appointMapper.selectById(item.getAppointId()).getUserId()).getRealName());
            item.setVaccineName(
                vaccineMapper.selectById(
                    planMapper.selectById(
                        appointMapper.selectById(item.getAppointId()).getPlanId()).getVaccineId()).getName());
            return item;
        }).collect(Collectors.toList());
        if (StringUtils.isNotBlank(bo.getRealName())){
            // 只保留realName匹配的数据
            dataList = dataList.stream().filter(item->item.getRealName().equals(bo.getRealName())).collect(Collectors.toList());

        }
        data.setRows(dataList);
        return data;
    }

    /**
     * 导出支付功能列表
     */
    @SaCheckPermission("vaccine:pay:export")
    @Log(title = "支付功能", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(YmPayBo bo, HttpServletResponse response) {
        List<YmPayVo> list = iYmPayService.queryList(bo);
        ExcelUtil.exportExcel(list, "支付功能", YmPayVo.class, response);
    }

    /**
     * 获取支付功能详细信息
     *
     * @param id 主键
     */
    @SaCheckPermission("vaccine:pay:query")
    @GetMapping("/{id}")
    public R<YmPayVo> getInfo(@NotNull(message = "主键不能为空")
                                     @PathVariable Long id) {
        return R.ok(iYmPayService.queryById(id));
    }

    /**
     * 新增支付功能
     */
    @SaCheckPermission("vaccine:pay:add")
    @Log(title = "支付功能", businessType = BusinessType.INSERT)
    @RepeatSubmit()
    @PostMapping()
    public R<Void> add(@Validated(AddGroup.class) @RequestBody YmPayBo bo) {
        return toAjax(iYmPayService.insertByBo(bo));
    }

    /**
     * 修改支付功能
     */
    @SaCheckPermission("vaccine:pay:edit")
    @Log(title = "支付功能", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody YmPayBo bo) {
        return toAjax(iYmPayService.updateByBo(bo));
    }

    /**
     * 删除支付功能
     *
     * @param ids 主键串
     */
    @SaCheckPermission("vaccine:pay:remove")
    @Log(title = "支付功能", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public R<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Long[] ids) {
        return toAjax(iYmPayService.deleteWithValidByIds(Arrays.asList(ids), true));
    }
}
