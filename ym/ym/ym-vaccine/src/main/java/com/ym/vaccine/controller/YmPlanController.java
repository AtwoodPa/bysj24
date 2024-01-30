package com.ym.vaccine.controller;

import java.util.List;
import java.util.Arrays;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.ym.common.utils.StringUtils;
import com.ym.vaccine.domain.Vaccine;
import com.ym.vaccine.domain.YmInoculateSite;
import com.ym.vaccine.domain.YmPlan;
import com.ym.vaccine.domain.bo.SelectOption;
import com.ym.vaccine.mapper.VaccineMapper;
import com.ym.vaccine.mapper.YmInoculateSiteMapper;
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
import com.ym.vaccine.domain.vo.YmPlanVo;
import com.ym.vaccine.domain.bo.YmPlanBo;
import com.ym.vaccine.service.IYmPlanService;
import com.ym.common.core.page.TableDataInfo;

/**
 * 预约计划管理
 *
 * @author ym
 * @date 2024-01-29
 */
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/vaccine/plan")
public class YmPlanController extends BaseController {

    private final IYmPlanService iYmPlanService;

    private final VaccineMapper vaccineMapper;

    private final YmInoculateSiteMapper ymInoculateSiteMapper;
    /**
     * 查询预约计划管理列表
     */
    @SaCheckPermission("vaccine:plan:list")
    @GetMapping("/list")
    public TableDataInfo<YmPlanVo> list(YmPlanBo bo, PageQuery pageQuery) {

        if(StringUtils.isNotBlank(bo.getVaccineName())){
            vaccineMapper.selectVaccineByName(bo.getVaccineName()).ifPresent(item -> {
                bo.setVaccineId(item.getId());
            });
        }

        if (StringUtils.isNotBlank(bo.getInoculateSiteName())) {
            ymInoculateSiteMapper.selectInoculateSiteByName(bo.getInoculateSiteName()).ifPresent(item -> {
                bo.setInoculateSiteId(item.getId());
            });
        }


        TableDataInfo<YmPlanVo> result = iYmPlanService.queryPageList(bo, pageQuery);
        List<YmPlanVo> list = result.getRows();
        List<YmPlanVo> resultList = list.stream().map(item -> {
            item.setVaccineName(vaccineMapper.selectById(item.getVaccineId()).getName());
            item.setInoculateSiteName(ymInoculateSiteMapper.selectById(item.getInoculateSiteId()).getName());
            return item;
        }).collect(Collectors.toList());
        result.setRows(resultList);
        return result;
    }

    @SaCheckPermission("vaccine:plan:list")
    @GetMapping("/getVaccineSelectOption")
    public R<List<SelectOption>> getVaccineSelectOption() {
        List<Vaccine> list = vaccineMapper.selectList(Wrappers.emptyWrapper());
        List<SelectOption> result = list.stream().map(item -> {
            SelectOption selectOption = new SelectOption();
            selectOption.setValue(item.getName());
            selectOption.setKey(item.getId().toString());
            return selectOption;
        }).collect(Collectors.toList());
        return R.ok(result);
    }

    @SaCheckPermission("vaccine:plan:list")
    @GetMapping("/getInoculateSiteSelectOption")
    public R<List<SelectOption>> getInoculateSiteSelectOption() {
        List<YmInoculateSite> list = ymInoculateSiteMapper.selectList(Wrappers.emptyWrapper());
        List<SelectOption> result = list.stream().map(item -> {
            SelectOption selectOption = new SelectOption();
            selectOption.setKey(item.getId().toString());
            selectOption.setValue(item.getName());
            return selectOption;
        }).collect(Collectors.toList());
        return R.ok(result);
    }

    /**
     * 导出预约计划管理列表
     */
    @SaCheckPermission("vaccine:plan:export")
    @Log(title = "预约计划管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(YmPlanBo bo, HttpServletResponse response) {
        List<YmPlanVo> list = iYmPlanService.queryList(bo);
        List<YmPlanVo> result = list.stream().map(item -> {
            String name = vaccineMapper.selectById(item.getVaccineId()).getName();
            System.out.println("name = " + name);
            item.setVaccineName(name);
            item.setInoculateSiteName(ymInoculateSiteMapper.selectById(item.getInoculateSiteId()).getName());
            return item;
        }).collect(Collectors.toList());
        ExcelUtil.exportExcel(result, "预约计划管理", YmPlanVo.class, response);
    }

    /**
     * 获取预约计划管理详细信息
     *
     * @param id 主键
     */
    @SaCheckPermission("vaccine:plan:query")
    @GetMapping("/{id}")
    public R<YmPlanVo> getInfo(@NotNull(message = "主键不能为空")
                                     @PathVariable Long id) {
        return R.ok(iYmPlanService.queryById(id));
    }

    /**
     * 新增预约计划管理
     */
    @SaCheckPermission("vaccine:plan:add")
    @Log(title = "预约计划管理", businessType = BusinessType.INSERT)
    @RepeatSubmit()
    @PostMapping()
    public R<Void> add(@Validated(AddGroup.class) @RequestBody YmPlanBo bo) {
        return toAjax(iYmPlanService.insertByBo(bo));
    }

    /**
     * 修改预约计划管理
     */
    @SaCheckPermission("vaccine:plan:edit")
    @Log(title = "预约计划管理", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody YmPlanBo bo) {
        return toAjax(iYmPlanService.updateByBo(bo));
    }

    /**
     * 删除预约计划管理
     *
     * @param ids 主键串
     */
    @SaCheckPermission("vaccine:plan:remove")
    @Log(title = "预约计划管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public R<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Long[] ids) {
        return toAjax(iYmPlanService.deleteWithValidByIds(Arrays.asList(ids), true));
    }
}
