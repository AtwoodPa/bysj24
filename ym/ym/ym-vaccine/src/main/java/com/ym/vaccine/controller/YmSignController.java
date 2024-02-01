package com.ym.vaccine.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Arrays;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;

import cn.dev33.satoken.annotation.SaIgnore;
import cn.hutool.crypto.asymmetric.Sign;
import com.ym.common.utils.StringUtils;
import com.ym.vaccine.annotation.PassToken;
import com.ym.vaccine.domain.*;
import com.ym.vaccine.domain.common.Result;
import com.ym.vaccine.exception.TokenUnavailable;
import com.ym.vaccine.mapper.*;
import com.ym.vaccine.service.IYmAppointService;
import com.ym.vaccine.service.IYmPlanService;
import com.ym.vaccine.service.IYmWorkerService;
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
import com.ym.vaccine.domain.vo.YmSignVo;
import com.ym.vaccine.domain.bo.YmSignBo;
import com.ym.vaccine.service.IYmSignService;
import com.ym.common.core.page.TableDataInfo;

/**
 * 接种签到
 *
 * @author ym
 * @date 2024-01-29
 */
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/vaccine/sign")
public class YmSignController extends BaseController {

    private final IYmSignService iYmSignService;
    private final YmUserMapper userMapper;
    private final YmAppointMapper appointMapper;
    private final YmWorkerMapper workerMapper;
    private final YmPlanMapper planMapper;
    private final YmInoculateSiteMapper siteMapper;
    private final IYmAppointService appointService;
    private final IYmWorkerService workerService;
    private final IYmPlanService planService;
    private final IYmSignService signService;


    @SaIgnore
    @PostMapping("/worker/save")
    @PassToken(required = false)
    public Result save(@RequestBody YmAppoint appoint, @RequestHeader("x-token") String token) {
        String workerId = null;
        try {
            workerId = JwtUtils.getAudience(token);
        } catch (TokenUnavailable tokenUnavailable) {
            return Result.error("token无效");
        }

        if (appoint.getId() == null) {
            return Result.error("预约ID为空");
        }

        YmAppoint target = appointService.getById(appoint.getId());
        if (target == null) {
            return Result.error("预约ID不存在");
        }
        if (target.getStatus() != 0) {
            return Result.error("预约二维码无效");
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String nowDateStr = simpleDateFormat.format(new Date());
        String appointDateStr = simpleDateFormat.format(target.getAppointDate());
        if (!appointDateStr.equals(nowDateStr)) {
            return Result.error("预约时间不匹配");
        }

        YmWorker worker = workerService.getById(workerId);
        YmPlan plan = planService.getById(target.getPlanId());
        if (worker.getInoculateSiteId().intValue() != plan.getInoculateSiteId().intValue()) {
            return Result.error("预约接种点不匹配");
        }

        Long timeSlot = target.getTimeSlot();
        Calendar calendar = Calendar.getInstance();
        int hour = calendar.get(Calendar.HOUR_OF_DAY);
        if (timeSlot == 0) {
            if (hour < plan.getStartTimeMorning() || hour > plan.getEndTimeMorning()) {
                return Result.error("预约时间段不匹配");
            }
        } else if (timeSlot == 1) {
            if (hour < plan.getStartTimeAfternoon() || hour > plan.getEndTimeAfternoon()) {
                return Result.error("预约时间段不匹配");
            }
        } else {
            if (hour < plan.getStartTimeEvening() || hour > plan.getEndTimeEvening()) {
                return Result.error("预约时间段不匹配");
            }
        }

        YmSign sign = new YmSign();
        sign.setAppointId(target.getId());
        sign.setCreateTime(new Date());
        sign.setWorkerId(worker.getId());

        signService.sign(appoint, sign);

        return Result.error("签到成功");
    }

    /**
     * 查询接种签到列表
     */
    @SaCheckPermission("vaccine:sign:list")
    @GetMapping("/list")
    public TableDataInfo<YmSignVo> list(YmSignBo bo, PageQuery pageQuery) {
        TableDataInfo<YmSignVo> data = iYmSignService.queryPageList(bo, pageQuery);
        List<YmSignVo> dataList = data.getRows();
        List<YmSignVo> resultData = dataList.stream().map(item -> {

            item.setRealName(userMapper.selectById(appointMapper.selectById(item.getAppointId()).getUserId()).getRealName());
            item.setWorkerName(workerMapper.selectById(item.getWorkerId()).getRealName());
            item.setSiteName(siteMapper.selectById(planMapper.selectById(appointMapper.selectById(item.getAppointId()).getPlanId()).getInoculateSiteId()).getName());
            return item;
        }).collect(Collectors.toList());
        if (StringUtils.isNotBlank(bo.getRealName())){
            // 只保留realName匹配的数据
            resultData = resultData.stream().filter(item->item.getRealName().equals(bo.getRealName())).collect(Collectors.toList());
        }
        data.setRows(resultData);
        return data;
    }

    /**
     * 导出接种签到列表
     */
    @SaCheckPermission("vaccine:sign:export")
    @Log(title = "接种签到", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @PassToken
    public void export(YmSignBo bo, HttpServletResponse response) {
        List<YmSignVo> list = iYmSignService.queryList(bo);
        ExcelUtil.exportExcel(list, "接种签到", YmSignVo.class, response);
    }

    /**
     * 获取接种签到详细信息
     *
     * @param id 主键
     */
    @SaCheckPermission("vaccine:sign:query")
    @GetMapping("/{id}")
    @PassToken
    public R<YmSignVo> getInfo(@NotNull(message = "主键不能为空")
                                     @PathVariable Long id) {
        return R.ok(iYmSignService.queryById(id));
    }

    /**
     * 新增接种签到
     */
    @SaCheckPermission("vaccine:sign:add")
    @Log(title = "接种签到", businessType = BusinessType.INSERT)
    @RepeatSubmit()
    @PostMapping()
    @PassToken
    public R<Void> add(@Validated(AddGroup.class) @RequestBody YmSignBo bo) {
        return toAjax(iYmSignService.insertByBo(bo));
    }

    /**
     * 修改接种签到
     */
    @SaCheckPermission("vaccine:sign:edit")
    @Log(title = "接种签到", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    @PassToken
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody YmSignBo bo) {
        return toAjax(iYmSignService.updateByBo(bo));
    }

    /**
     * 删除接种签到
     *
     * @param ids 主键串
     */
    @SaCheckPermission("vaccine:sign:remove")
    @Log(title = "接种签到", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    @PassToken
    public R<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Long[] ids) {
        return toAjax(iYmSignService.deleteWithValidByIds(Arrays.asList(ids), true));
    }
}
