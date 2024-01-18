package com.ym.vaccine.controller;

import java.util.List;
import java.util.Arrays;
import java.util.concurrent.TimeUnit;

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
import com.ym.vaccine.domain.vo.YmVaccineTypeVo;
import com.ym.vaccine.domain.bo.YmVaccineTypeBo;
import com.ym.vaccine.service.IYmVaccineTypeService;
import com.ym.common.core.page.TableDataInfo;

/**
 * 疫苗类型，存储疫苗的类型信息
 *
 * @author ym
 * @date 2024-01-17
 */
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/vaccine/vaccineType")
public class YmVaccineTypeController extends BaseController {

    private final IYmVaccineTypeService iYmVaccineTypeService;

    /**
     * 查询疫苗类型，存储疫苗的类型信息列表
     */
    @SaCheckPermission("vaccine:vaccineType:list")
    @GetMapping("/list")
    public TableDataInfo<YmVaccineTypeVo> list(YmVaccineTypeBo bo, PageQuery pageQuery) {
        return iYmVaccineTypeService.queryPageList(bo, pageQuery);
    }

    /**
     * 导出疫苗类型，存储疫苗的类型信息列表
     */
    @SaCheckPermission("vaccine:vaccineType:export")
    @Log(title = "疫苗类型，存储疫苗的类型信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(YmVaccineTypeBo bo, HttpServletResponse response) {
        List<YmVaccineTypeVo> list = iYmVaccineTypeService.queryList(bo);
        ExcelUtil.exportExcel(list, "疫苗类型，存储疫苗的类型信息", YmVaccineTypeVo.class, response);
    }

    /**
     * 获取疫苗类型，存储疫苗的类型信息详细信息
     *
     * @param typeId 主键
     */
    @SaCheckPermission("vaccine:vaccineType:query")
    @GetMapping("/{typeId}")
    public R<YmVaccineTypeVo> getInfo(@NotNull(message = "主键不能为空")
                                     @PathVariable Long typeId) {
        return R.ok(iYmVaccineTypeService.queryById(typeId));
    }

    /**
     * 新增疫苗类型，存储疫苗的类型信息
     */
    @SaCheckPermission("vaccine:vaccineType:add")
    @Log(title = "疫苗类型，存储疫苗的类型信息", businessType = BusinessType.INSERT)
    @RepeatSubmit()
    @PostMapping()
    public R<Void> add(@Validated(AddGroup.class) @RequestBody YmVaccineTypeBo bo) {
        return toAjax(iYmVaccineTypeService.insertByBo(bo));
    }

    /**
     * 修改疫苗类型，存储疫苗的类型信息
     */
    @SaCheckPermission("vaccine:vaccineType:edit")
    @Log(title = "疫苗类型，存储疫苗的类型信息", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody YmVaccineTypeBo bo) {
        return toAjax(iYmVaccineTypeService.updateByBo(bo));
    }

    /**
     * 删除疫苗类型，存储疫苗的类型信息
     *
     * @param typeIds 主键串
     */
    @SaCheckPermission("vaccine:vaccineType:remove")
    @Log(title = "疫苗类型，存储疫苗的类型信息", businessType = BusinessType.DELETE)
    @DeleteMapping("/{typeIds}")
    public R<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Long[] typeIds) {
        return toAjax(iYmVaccineTypeService.deleteWithValidByIds(Arrays.asList(typeIds), true));
    }
}
