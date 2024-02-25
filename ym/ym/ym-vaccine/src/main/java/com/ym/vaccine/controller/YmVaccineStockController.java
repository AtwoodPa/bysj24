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
import com.ym.vaccine.domain.vo.YmVaccineStockVo;
import com.ym.vaccine.domain.bo.YmVaccineStockBo;
import com.ym.vaccine.service.IYmVaccineStockService;
import com.ym.common.core.page.TableDataInfo;

/**
 * 疫苗出入库
 *
 * @author ym
 * @date 2024-02-25
 */
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/vaccine/vaccineStock")
public class YmVaccineStockController extends BaseController {

    private final IYmVaccineStockService iYmVaccineStockService;

    /**
     * 查询疫苗出入库列表
     */
    @SaCheckPermission("vaccine:vaccineStock:list")
    @GetMapping("/list")
    public TableDataInfo<YmVaccineStockVo> list(YmVaccineStockBo bo, PageQuery pageQuery) {
        return iYmVaccineStockService.queryPageList(bo, pageQuery);
    }

    /**
     * 导出疫苗出入库列表
     */
    @SaCheckPermission("vaccine:vaccineStock:export")
    @Log(title = "疫苗出入库", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(YmVaccineStockBo bo, HttpServletResponse response) {
        List<YmVaccineStockVo> list = iYmVaccineStockService.queryList(bo);
        ExcelUtil.exportExcel(list, "疫苗出入库", YmVaccineStockVo.class, response);
    }

    /**
     * 获取疫苗出入库详细信息
     *
     * @param siteId 主键
     */
    @SaCheckPermission("vaccine:vaccineStock:query")
    @GetMapping("/{siteId}")
    public R<YmVaccineStockVo> getInfo(@NotNull(message = "主键不能为空")
                                     @PathVariable Long siteId) {
        return R.ok(iYmVaccineStockService.queryById(siteId));
    }

    /**
     * 新增疫苗出入库
     */
    @SaCheckPermission("vaccine:vaccineStock:add")
    @Log(title = "疫苗出入库", businessType = BusinessType.INSERT)
    @RepeatSubmit()
    @PostMapping()
    public R<Void> add(@Validated(AddGroup.class) @RequestBody YmVaccineStockBo bo) {
        return toAjax(iYmVaccineStockService.insertByBo(bo));
    }

    /**
     * 修改疫苗出入库
     */
    @SaCheckPermission("vaccine:vaccineStock:edit")
    @Log(title = "疫苗出入库", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody YmVaccineStockBo bo) {
        return toAjax(iYmVaccineStockService.updateByBo(bo));
    }

    /**
     * 删除疫苗出入库
     *
     * @param siteIds 主键串
     */
    @SaCheckPermission("vaccine:vaccineStock:remove")
    @Log(title = "疫苗出入库", businessType = BusinessType.DELETE)
    @DeleteMapping("/{siteIds}")
    public R<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Long[] siteIds) {
        return toAjax(iYmVaccineStockService.deleteWithValidByIds(Arrays.asList(siteIds), true));
    }
}
