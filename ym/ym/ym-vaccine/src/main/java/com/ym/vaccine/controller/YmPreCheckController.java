package com.ym.vaccine.controller;

import java.util.Date;
import java.util.List;
import java.util.Arrays;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;

import cn.dev33.satoken.annotation.SaIgnore;
import com.ym.common.utils.StringUtils;
import com.ym.vaccine.annotation.PassToken;
import com.ym.vaccine.domain.YmAppoint;
import com.ym.vaccine.domain.YmPlan;
import com.ym.vaccine.domain.YmPreCheck;
import com.ym.vaccine.domain.YmWorker;
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
import com.ym.vaccine.domain.vo.YmPreCheckVo;
import com.ym.vaccine.domain.bo.YmPreCheckBo;
import com.ym.vaccine.service.IYmPreCheckService;
import com.ym.common.core.page.TableDataInfo;

/**
 * 预检信息查询
 *
 * @author ym
 * @date 2024-01-29
 */
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/vaccine/preCheck")
public class YmPreCheckController extends BaseController {

    private final IYmPreCheckService iYmPreCheckService;
    private final IYmAppointService appointService;
    private final IYmPlanService planService;
    private final IYmPreCheckService preCheckService;
    private final IYmWorkerService workerService;
    private final YmUserMapper userMapper;
    private final YmAppointMapper appointMapper;
    private final YmWorkerMapper workerMapper;

    private final YmPlanMapper planMapper;
    private final YmInoculateSiteMapper siteMapper;

    @SaIgnore
    @PostMapping("/worker/ok")
    @PassToken(required = false)
    public Result ok(@RequestBody YmAppoint appoint, @RequestHeader("x-token") String token) {
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
        if (target.getStatus() != 1) {
            return Result.error("请先签到");
        }

        YmWorker worker = workerService.getById(workerId);
        YmPlan plan = planService.getById(target.getPlanId());
        if (worker.getInoculateSiteId().intValue() != plan.getInoculateSiteId().intValue()) {
            return Result.error("接种点接不匹配");
        }

        return Result.ok("可以预检");
    }
    @SaIgnore
    @PostMapping("/worker/save")
    @PassToken(required = false)
    public Result save(@RequestBody YmPreCheck preCheck, @RequestHeader("x-token") String token, Integer isSuited) {
        String workerId = null;
        try {
            workerId = JwtUtils.getAudience(token);
        } catch (TokenUnavailable tokenUnavailable) {
            return Result.error("token无效");
        }

        if (isSuited == null) {
            return Result.error("是否适宜接种不能为空");
        }
        if (isSuited != 1 && isSuited != 0) {
            return Result.error("是否适宜接种参数只能为01");
        }

        preCheck.setId(null);
        if (org.apache.commons.lang3.StringUtils.isBlank(preCheck.getNote())) {
            return Result.error("备注不能为空");
        }
        if (preCheck.getIsMedicine() == null) {
            return Result.error("是否服药参数为空");
        }
        if (preCheck.getIsContraindication() == null) {
            return Result.error("是否禁忌症参数为空");
        }
        if (preCheck.getIsMedicine() != 0 && preCheck.getIsMedicine() != 1) {
            return Result.error("是否服药参数只能为01");
        }
        if (preCheck.getIsContraindication() != 0 && preCheck.getIsContraindication() != 1) {
            return Result.error("是否禁忌症参数只能为01");
        }
        if (preCheck.getIsMedicine() == 0) {
            preCheck.setMedicine(null);
        } else {
            if (org.apache.commons.lang3.StringUtils.isBlank(preCheck.getMedicine())) {
                return Result.error("药物名称不能为空");
            }
        }
        if (preCheck.getIsContraindication() == 0) {
            preCheck.setContraindication(null);
        } else {
            if (org.apache.commons.lang3.StringUtils.isBlank(preCheck.getContraindication())) {
                return Result.error("禁忌症名称不能为空");
            }
        }
        if (preCheck.getBloodPressureHigh() == null || preCheck.getBloodPressureLow() == null) {
            return Result.error("血压值不能为空");
        }
        if (preCheck.getBloodPressureLow() < 0 || preCheck.getBloodPressureLow() > 300 || preCheck.getBloodPressureHigh() < 0 || preCheck.getBloodPressureHigh() > 300) {
            return Result.error("请重测血压");
        }
        if (preCheck.getTemperature() == null) {
            return Result.error("体温不能为空");
        }
        if (preCheck.getTemperature() < 0 || preCheck.getTemperature() > 50) {
            return Result.error("请重测体温");
        }

        if (preCheck.getAppointId() == null) {
            return Result.error("预约ID为空");
        }
        YmAppoint appoint = appointService.getById(preCheck.getAppointId());
        if (appoint == null) {
            return Result.error("预约ID不存在");
        }
        if (appoint.getStatus() != 1) {
            return Result.error("请先签到");
        }

        YmWorker worker = workerService.getById(workerId);
        YmPlan plan = planService.getById(appoint.getPlanId());
        if (worker.getInoculateSiteId().intValue() != plan.getInoculateSiteId().intValue()) {
            return Result.error("接种点不匹配");
        }

        preCheck.setWorkerId(Long.valueOf(workerId));
        preCheck.setCreateTime(new Date());

        if (isSuited == 0) {
            preCheckService.preCheck(appoint, preCheck);
            return Result.ok("预检成功");
        }
        preCheckService.notSuited(appoint, preCheck);
        return Result.ok("不适宜接种登记成功");
    }


    /**
     * 查询预检信息查询列表
     */
    @SaCheckPermission("vaccine:preCheck:list")
    @GetMapping("/list")
    @PassToken
    public TableDataInfo<YmPreCheckVo> list(YmPreCheckBo bo, PageQuery pageQuery) {


        TableDataInfo<YmPreCheckVo> data = iYmPreCheckService.queryPageList(bo, pageQuery);
        List<YmPreCheckVo> dataList = data.getRows();
        dataList = dataList.stream().map(item ->{

            item.setRealName(userMapper.selectById(appointMapper.selectById(item.getAppointId()).getUserId()).getRealName());
            item.setWorkerName(workerMapper.selectById(item.getWorkerId()).getRealName());
            item.setSiteName(siteMapper.selectById(planMapper.selectById(appointMapper.selectById(item.getAppointId()).getPlanId()).getInoculateSiteId()).getName());
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
     * 导出预检信息查询列表
     */
    @SaCheckPermission("vaccine:preCheck:export")
    @Log(title = "预检信息查询", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @PassToken
    public void export(YmPreCheckBo bo, HttpServletResponse response) {
        List<YmPreCheckVo> list = iYmPreCheckService.queryList(bo);
        ExcelUtil.exportExcel(list, "预检信息查询", YmPreCheckVo.class, response);
    }

    /**
     * 获取预检信息查询详细信息
     *
     * @param id 主键
     */
    @SaCheckPermission("vaccine:preCheck:query")
    @GetMapping("/{id}")
    @PassToken
    public R<YmPreCheckVo> getInfo(@NotNull(message = "主键不能为空")
                                     @PathVariable Long id) {
        return R.ok(iYmPreCheckService.queryById(id));
    }

    /**
     * 新增预检信息查询
     */
    @SaCheckPermission("vaccine:preCheck:add")
    @Log(title = "预检信息查询", businessType = BusinessType.INSERT)
    @RepeatSubmit()
    @PostMapping()
    @PassToken
    public R<Void> add(@Validated(AddGroup.class) @RequestBody YmPreCheckBo bo) {
        return toAjax(iYmPreCheckService.insertByBo(bo));
    }

    /**
     * 修改预检信息查询
     */
    @SaCheckPermission("vaccine:preCheck:edit")
    @Log(title = "预检信息查询", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    @PassToken
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody YmPreCheckBo bo) {
        return toAjax(iYmPreCheckService.updateByBo(bo));
    }

    /**
     * 删除预检信息查询
     *
     * @param ids 主键串
     */
    @SaCheckPermission("vaccine:preCheck:remove")
    @Log(title = "预检信息查询", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    @PassToken
    public R<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Long[] ids) {
        return toAjax(iYmPreCheckService.deleteWithValidByIds(Arrays.asList(ids), true));
    }
}
