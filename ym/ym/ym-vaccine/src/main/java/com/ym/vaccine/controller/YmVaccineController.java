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
import com.ym.vaccine.domain.vo.YmVaccineVo;
import com.ym.vaccine.domain.bo.YmVaccineBo;
import com.ym.vaccine.service.IYmVaccineService;
import com.ym.common.core.page.TableDataInfo;

/**
 * 疫苗，存储疫苗信息
 *
 * @author ym
 * @date 2024-01-18
 */
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/vaccine/vaccine")
public class YmVaccineController extends BaseController {

    private final IYmVaccineService iYmVaccineService;

    /**
     * 查询疫苗，存储疫苗信息列表
     */
    @SaCheckPermission("vaccine:vaccine:list")
    @GetMapping("/list")
    public TableDataInfo<YmVaccineVo> list(YmVaccineBo bo, PageQuery pageQuery) {
        return iYmVaccineService.queryPageList(bo, pageQuery);
    }

    /**
     * 导出疫苗，存储疫苗信息列表
     */
    @SaCheckPermission("vaccine:vaccine:export")
    @Log(title = "疫苗，存储疫苗信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(YmVaccineBo bo, HttpServletResponse response) {
        List<YmVaccineVo> list = iYmVaccineService.queryList(bo);
        ExcelUtil.exportExcel(list, "疫苗，存储疫苗信息", YmVaccineVo.class, response);
    }

    /**
     * 获取疫苗，存储疫苗信息详细信息
     *
     * @param vaccineId 主键
     */
    @SaCheckPermission("vaccine:vaccine:query")
    @GetMapping("/{vaccineId}")
    public R<YmVaccineVo> getInfo(@NotNull(message = "主键不能为空")
                                     @PathVariable Long vaccineId) {
        return R.ok(iYmVaccineService.queryById(vaccineId));
    }

    /**
     * 新增疫苗，存储疫苗信息
     */
    @SaCheckPermission("vaccine:vaccine:add")
    @Log(title = "疫苗，存储疫苗信息", businessType = BusinessType.INSERT)
    @RepeatSubmit()
    @PostMapping()
    public R<Void> add(@Validated(AddGroup.class) @RequestBody YmVaccineBo bo) {
        return toAjax(iYmVaccineService.insertByBo(bo));
    }

    /**
     * 修改疫苗，存储疫苗信息
     */
    @SaCheckPermission("vaccine:vaccine:edit")
    @Log(title = "疫苗，存储疫苗信息", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody YmVaccineBo bo) {
        return toAjax(iYmVaccineService.updateByBo(bo));
    }

    /**
     * 删除疫苗，存储疫苗信息
     *
     * @param vaccineIds 主键串
     */
    @SaCheckPermission("vaccine:vaccine:remove")
    @Log(title = "疫苗，存储疫苗信息", businessType = BusinessType.DELETE)
    @DeleteMapping("/{vaccineIds}")
    public R<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Long[] vaccineIds) {
        return toAjax(iYmVaccineService.deleteWithValidByIds(Arrays.asList(vaccineIds), true));
    }
}
