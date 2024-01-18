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
import com.ym.vaccine.domain.vo.YmManufacturerVo;
import com.ym.vaccine.domain.bo.YmManufacturerBo;
import com.ym.vaccine.service.IYmManufacturerService;
import com.ym.common.core.page.TableDataInfo;

/**
 * 疫苗厂家，存储疫苗厂家信息
 *
 * @author ym
 * @date 2024-01-17
 */
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/vaccine/manufacturer")
public class YmManufacturerController extends BaseController {

    private final IYmManufacturerService iYmManufacturerService;

    /**
     * 查询疫苗厂家，存储疫苗厂家信息列表
     */
    @SaCheckPermission("vaccine:manufacturer:list")
    @GetMapping("/list")
    public TableDataInfo<YmManufacturerVo> list(YmManufacturerBo bo, PageQuery pageQuery) {
        return iYmManufacturerService.queryPageList(bo, pageQuery);
    }

    /**
     * 导出疫苗厂家，存储疫苗厂家信息列表
     */
    @SaCheckPermission("vaccine:manufacturer:export")
    @Log(title = "疫苗厂家，存储疫苗厂家信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(YmManufacturerBo bo, HttpServletResponse response) {
        List<YmManufacturerVo> list = iYmManufacturerService.queryList(bo);
        ExcelUtil.exportExcel(list, "疫苗厂家，存储疫苗厂家信息", YmManufacturerVo.class, response);
    }

    /**
     * 获取疫苗厂家，存储疫苗厂家信息详细信息
     *
     * @param manufacturerId 主键
     */
    @SaCheckPermission("vaccine:manufacturer:query")
    @GetMapping("/{manufacturerId}")
    public R<YmManufacturerVo> getInfo(@NotNull(message = "主键不能为空")
                                     @PathVariable Long manufacturerId) {
        return R.ok(iYmManufacturerService.queryById(manufacturerId));
    }

    /**
     * 新增疫苗厂家，存储疫苗厂家信息
     */
    @SaCheckPermission("vaccine:manufacturer:add")
    @Log(title = "疫苗厂家，存储疫苗厂家信息", businessType = BusinessType.INSERT)
    @RepeatSubmit()
    @PostMapping()
    public R<Void> add(@Validated(AddGroup.class) @RequestBody YmManufacturerBo bo) {
        return toAjax(iYmManufacturerService.insertByBo(bo));
    }

    /**
     * 修改疫苗厂家，存储疫苗厂家信息
     */
    @SaCheckPermission("vaccine:manufacturer:edit")
    @Log(title = "疫苗厂家，存储疫苗厂家信息", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody YmManufacturerBo bo) {
        return toAjax(iYmManufacturerService.updateByBo(bo));
    }

    /**
     * 删除疫苗厂家，存储疫苗厂家信息
     *
     * @param manufacturerIds 主键串
     */
    @SaCheckPermission("vaccine:manufacturer:remove")
    @Log(title = "疫苗厂家，存储疫苗厂家信息", businessType = BusinessType.DELETE)
    @DeleteMapping("/{manufacturerIds}")
    public R<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Long[] manufacturerIds) {
        return toAjax(iYmManufacturerService.deleteWithValidByIds(Arrays.asList(manufacturerIds), true));
    }
}
