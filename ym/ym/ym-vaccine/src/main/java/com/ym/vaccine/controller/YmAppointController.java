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
import com.ym.vaccine.domain.common.Result;
import com.ym.vaccine.exception.TokenUnavailable;
import com.ym.vaccine.mapper.VaccineMapper;
import com.ym.vaccine.mapper.YmInoculateSiteMapper;
import com.ym.vaccine.mapper.YmPlanMapper;
import com.ym.vaccine.mapper.YmUserMapper;
import com.ym.vaccine.service.IYmPlanService;
import com.ym.vaccine.utils.JwtUtils;
import jodd.util.StringUtil;
import lombok.RequiredArgsConstructor;
import javax.servlet.http.HttpServletResponse;
import javax.validation.constraints.*;
import cn.dev33.satoken.annotation.SaCheckPermission;
import org.springframework.beans.factory.annotation.Autowired;
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
import com.ym.vaccine.domain.vo.YmAppointVo;
import com.ym.vaccine.domain.bo.YmAppointBo;
import com.ym.vaccine.service.IYmAppointService;
import com.ym.common.core.page.TableDataInfo;

/**
 * 预约
 *
 * @author ym
 * @date 2024-01-29
 */
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/vaccine/appoint")
public class YmAppointController extends BaseController {

    private final IYmAppointService iYmAppointService;

    @Autowired
    private IYmPlanService planService;
    private final YmUserMapper userMapper;
    private final YmPlanMapper planMapper;
    private final YmInoculateSiteMapper inoculateSiteMapper;
    private final VaccineMapper vaccineMapper;

    /* 客户端接口 */
    @SaIgnore
    @PostMapping("/user/appoint/ok")
    @PassToken(required = false)
    public Result ok(@RequestBody YmAppoint appoint, @RequestHeader("x-token") String token){
        String userId = null;
        try {
            userId = JwtUtils.getAudience(token);
        } catch (TokenUnavailable tokenUnavailable) {
            return Result.error("token无效");
        }

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
            if (plan.getMorningLimit() - iYmAppointService.count(appointQueryWrapper) < 1) {
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
            if(plan.getAfternoonLimit() - iYmAppointService.count(appointQueryWrapper) < 1) {
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
            if (plan.getEveningLimit() - iYmAppointService.count(appointQueryWrapper) < 1) {
                return Result.error("该时间段无可预约疫苗");
            }
        }

        appointQueryWrapper.clear();;
        appointQueryWrapper.eq("status", 0);
        appointQueryWrapper.eq("user_id", userId);
        List<YmAppoint> list = iYmAppointService.list(appointQueryWrapper);
        if (list.size() != 0) {
            return Result.error("您还有未完成的预约");
        }
        return Result.ok("可以预约");
    }

    /* 后台管理接口 */

    /**
     * 查询预约列表
     */
    @SaCheckPermission("vaccine:appoint:list")
    @GetMapping("/list")
    public TableDataInfo<YmAppointVo> list(YmAppointBo bo, PageQuery pageQuery) {
        if(StringUtils.isNotBlank(bo.getRealName())){
            userMapper.selectUserByRealName(bo.getRealName()).ifPresent(item->{
                bo.setUserId(item.getId());
            });
        }
        TableDataInfo<YmAppointVo> data = iYmAppointService.queryPageList(bo, pageQuery);
        List<YmAppointVo> dataList = data.getRows();
        List<YmAppointVo> resultData = dataList.stream().map(item -> {
            item.setRealName(userMapper.selectById(item.getUserId()).getRealName());
            item.setInoculateSiteName(inoculateSiteMapper.selectById(planMapper.selectById(item.getPlanId()).getInoculateSiteId()).getName());
            item.setVaccineName(vaccineMapper.selectById(planMapper.selectById(item.getPlanId()).getVaccineId()).getName());
            return item;
        }).collect(Collectors.toList());



        data.setRows(resultData);
        return data;
    }

    /**
     * 导出预约列表
     */
    @SaCheckPermission("vaccine:appoint:export")
    @Log(title = "预约", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(YmAppointBo bo, HttpServletResponse response) {
        List<YmAppointVo> list = iYmAppointService.queryList(bo);
        ExcelUtil.exportExcel(list, "预约", YmAppointVo.class, response);
    }

    /**
     * 获取预约详细信息
     *
     * @param id 主键
     */
    @SaCheckPermission("vaccine:appoint:query")
    @GetMapping("/{id}")
    public R<YmAppointVo> getInfo(@NotNull(message = "主键不能为空")
                                     @PathVariable Long id) {
        return R.ok(iYmAppointService.queryById(id));
    }

    /**
     * 新增预约
     */
    @SaCheckPermission("vaccine:appoint:add")
    @Log(title = "预约", businessType = BusinessType.INSERT)
    @RepeatSubmit()
    @PostMapping()
    public R<Void> add(@Validated(AddGroup.class) @RequestBody YmAppointBo bo) {
        return toAjax(iYmAppointService.insertByBo(bo));
    }

    /**
     * 修改预约
     */
    @SaCheckPermission("vaccine:appoint:edit")
    @Log(title = "预约", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody YmAppointBo bo) {
        return toAjax(iYmAppointService.updateByBo(bo));
    }

    /**
     * 删除预约
     *
     * @param ids 主键串
     */
    @SaCheckPermission("vaccine:appoint:remove")
    @Log(title = "预约", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public R<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Long[] ids) {
        return toAjax(iYmAppointService.deleteWithValidByIds(Arrays.asList(ids), true));
    }
}
