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
import com.ym.vaccine.domain.YmInoculate;
import com.ym.vaccine.domain.YmPlan;
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
import com.ym.vaccine.domain.vo.YmInoculateVo;
import com.ym.vaccine.domain.bo.YmInoculateBo;
import com.ym.vaccine.service.IYmInoculateService;
import com.ym.common.core.page.TableDataInfo;

/**
 * 疫苗接种记录
 *
 * @author ym
 * @date 2024-01-29
 */
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/vaccine/inoculate")
public class YmInoculateController extends BaseController {
    private final IYmAppointService appointService;
    private final IYmPlanService planService;
    private final IYmWorkerService workerService;
    private final IYmInoculateService iYmInoculateService;
    private final YmWorkerMapper workerMapper;
    private final YmInoculateSiteMapper siteMapper;
    private final YmPlanMapper planMapper;
    private final YmUserMapper userMapper;
    private final YmAppointMapper appointMapper;
    private final VaccineMapper vaccineMapper;

    /* 客户端接口 */
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
        if (target.getStatus() != 2) {
            return Result.error("请先预检");
        }

        YmWorker worker = workerService.getById(workerId);
        YmPlan plan = planService.getById(target.getPlanId());
        if (worker.getInoculateSiteId().intValue() != plan.getInoculateSiteId().intValue()) {
            return Result.error("接种点不匹配");
        }

        return Result.ok("可以接种");
    }

    @PostMapping("/worker/save")
    @PassToken(required = false)
    public Result save(@RequestBody YmInoculate inoculate, @RequestHeader("x-token") String token, Integer isSucceeded) {
        String workerId = null;
        try {
            workerId = JwtUtils.getAudience(token);
        } catch (TokenUnavailable tokenUnavailable) {
            return Result.error("token无效");
        }

        if (isSucceeded == null) {
            return Result.error("是否接种有误不能为空");
        }
        if (isSucceeded != 1 && isSucceeded != 0) {
            return Result.error("是否接种有误参数只能为01");
        }

        inoculate.setId(null);
        if (org.apache.commons.lang3.StringUtils.isBlank(inoculate.getPart())) {
            return Result.error("接种部位不能为空");
        }
        if (!("左臂".equals(inoculate.getPart()) || "右臂".equals(inoculate.getPart()) || "左腿".equals(inoculate.getPart()) || "右腿".equals(inoculate.getPart()) || "臀部".equals(inoculate.getPart()))) {
            return Result.error("接种部位有误");
        }
        if (org.apache.commons.lang3.StringUtils.isBlank(inoculate.getVaccineBatchCode())) {
            return Result.error("疫苗批号不能为空");
        }
        if (org.apache.commons.lang3.StringUtils.isBlank(inoculate.getNote())) {
            return Result.error("备注不能为空");
        }

        if (inoculate.getAppointId() == null) {
            return Result.error("预约ID为空");
        }

        YmAppoint appoint = appointService.getById(inoculate.getAppointId());
        if (appoint == null) {
            return Result.error("预约ID不存在");
        }
        if (appoint.getStatus() != 2) {
            return Result.error("请先预检");
        }

        YmWorker worker = workerService.getById(workerId);
        YmPlan plan = planService.getById(appoint.getPlanId());
        if (worker.getInoculateSiteId().intValue() != plan.getInoculateSiteId().intValue()) {
            return Result.error("接种点不匹配");
        }

        inoculate.setWorkerId(Long.valueOf(workerId));
        inoculate.setCreateTime(new Date());

        if (isSucceeded == 0) {
            iYmInoculateService.inoculate(appoint, inoculate);
            return Result.ok("接种成功");
        }
        iYmInoculateService.notSucceeded(appoint, inoculate);
        return Result.ok("接种异常登记成功");
    }
    /* 管理后台接口*/
    /**
     * 查询疫苗接种记录列表
     */
    @SaCheckPermission("vaccine:inoculate:list")
    @GetMapping("/list")
    public TableDataInfo<YmInoculateVo> list(YmInoculateBo bo, PageQuery pageQuery) {
        TableDataInfo<YmInoculateVo> data = iYmInoculateService.queryPageList(bo, pageQuery);
        List<YmInoculateVo> dataList = data.getRows();
        dataList = dataList.stream().map(item -> {
            item.setRealName(userMapper.selectById(appointMapper.selectById(item.getAppointId()).getUserId()).getRealName());
            item.setWorkerName(workerMapper.selectById(item.getWorkerId()).getRealName());
            item.setSiteName(siteMapper.selectById(planMapper.selectById(appointMapper.selectById(item.getAppointId()).getPlanId()).getInoculateSiteId()).getName());
            item.setVaccineName(vaccineMapper.selectById(planMapper.selectById(appointMapper.selectById(item.getAppointId()).getPlanId()).getVaccineId()).getName());
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
     * 导出疫苗接种记录列表
     */
    @SaCheckPermission("vaccine:inoculate:export")
    @Log(title = "疫苗接种记录", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(YmInoculateBo bo, HttpServletResponse response) {
        List<YmInoculateVo> list = iYmInoculateService.queryList(bo);
        ExcelUtil.exportExcel(list, "疫苗接种记录", YmInoculateVo.class, response);
    }

    /**
     * 获取疫苗接种记录详细信息
     *
     * @param id 主键
     */
    @SaCheckPermission("vaccine:inoculate:query")
    @GetMapping("/{id}")
    public R<YmInoculateVo> getInfo(@NotNull(message = "主键不能为空")
                                     @PathVariable Long id) {
        return R.ok(iYmInoculateService.queryById(id));
    }

    /**
     * 新增疫苗接种记录
     */
    @SaCheckPermission("vaccine:inoculate:add")
    @Log(title = "疫苗接种记录", businessType = BusinessType.INSERT)
    @RepeatSubmit()
    @PostMapping()
    public R<Void> add(@Validated(AddGroup.class) @RequestBody YmInoculateBo bo) {
        return toAjax(iYmInoculateService.insertByBo(bo));
    }

    /**
     * 修改疫苗接种记录
     */
    @SaCheckPermission("vaccine:inoculate:edit")
    @Log(title = "疫苗接种记录", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody YmInoculateBo bo) {
        return toAjax(iYmInoculateService.updateByBo(bo));
    }

    /**
     * 删除疫苗接种记录
     *
     * @param ids 主键串
     */
    @SaCheckPermission("vaccine:inoculate:remove")
    @Log(title = "疫苗接种记录", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public R<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Long[] ids) {
        return toAjax(iYmInoculateService.deleteWithValidByIds(Arrays.asList(ids), true));
    }
}
