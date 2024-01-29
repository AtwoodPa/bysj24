package com.ym.vaccine.controller;

import java.util.List;
import java.util.Arrays;

import com.ym.vaccine.domain.vo.VaccineVo;
import com.ym.vaccine.service.IVaccineService;
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
import com.ym.common.enums.BusinessType;
import com.ym.common.utils.poi.ExcelUtil;

import com.ym.vaccine.domain.bo.VaccineBo;

import com.ym.common.core.page.TableDataInfo;

/**
 * 疫苗信息
 *
 * @author ym
 * @date 2024-01-29
 */
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/vaccine/vaccine")
public class VaccineController extends BaseController {

    private final IVaccineService iVaccineService;

    /**
     * 查询疫苗信息列表
     */
    @SaCheckPermission("vaccine:vaccine:list")
    @GetMapping("/list")
    public TableDataInfo<VaccineVo> list(VaccineBo bo, PageQuery pageQuery) {
        return iVaccineService.queryPageList(bo, pageQuery);
    }

    /**
     * 导出疫苗信息列表
     */
    @SaCheckPermission("vaccine:vaccine:export")
    @Log(title = "疫苗信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(VaccineBo bo, HttpServletResponse response) {
        List<VaccineVo> list = iVaccineService.queryList(bo);
        ExcelUtil.exportExcel(list, "疫苗信息", VaccineVo.class, response);
    }

    /**
     * 获取疫苗信息详细信息
     *
     * @param id 主键
     */
    @SaCheckPermission("vaccine:vaccine:query")
    @GetMapping("/{id}")
    public R<VaccineVo> getInfo(@NotNull(message = "主键不能为空")
                                     @PathVariable Long id) {
        return R.ok(iVaccineService.queryById(id));
    }

    /**
     * 新增疫苗信息
     */
    @SaCheckPermission("vaccine:vaccine:add")
    @Log(title = "疫苗信息", businessType = BusinessType.INSERT)
    @RepeatSubmit()
    @PostMapping()
    public R<Void> add(@Validated(AddGroup.class) @RequestBody VaccineBo bo) {
        return toAjax(iVaccineService.insertByBo(bo));
    }

    /**
     * 修改疫苗信息
     */
    @SaCheckPermission("vaccine:vaccine:edit")
    @Log(title = "疫苗信息", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody VaccineBo bo) {
        return toAjax(iVaccineService.updateByBo(bo));
    }

    /**
     * 删除疫苗信息
     *
     * @param ids 主键串
     */
    @SaCheckPermission("vaccine:vaccine:remove")
    @Log(title = "疫苗信息", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public R<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Long[] ids) {
        return toAjax(iVaccineService.deleteWithValidByIds(Arrays.asList(ids), true));
    }
}
