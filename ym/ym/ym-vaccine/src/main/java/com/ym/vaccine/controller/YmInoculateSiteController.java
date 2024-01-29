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
import com.ym.vaccine.domain.vo.YmInoculateSiteVo;
import com.ym.vaccine.domain.bo.YmInoculateSiteBo;
import com.ym.vaccine.service.IYmInoculateSiteService;
import com.ym.common.core.page.TableDataInfo;

/**
 * 疫苗接种站点管理
 *
 * @author ym
 * @date 2024-01-29
 */
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/vaccine/inoculateSite")
public class YmInoculateSiteController extends BaseController {

    private final IYmInoculateSiteService iYmInoculateSiteService;

    /**
     * 查询疫苗接种站点管理列表
     */
    @SaCheckPermission("vaccine:inoculateSite:list")
    @GetMapping("/list")
    public TableDataInfo<YmInoculateSiteVo> list(YmInoculateSiteBo bo, PageQuery pageQuery) {
        return iYmInoculateSiteService.queryPageList(bo, pageQuery);
    }

    /**
     * 导出疫苗接种站点管理列表
     */
    @SaCheckPermission("vaccine:inoculateSite:export")
    @Log(title = "疫苗接种站点管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(YmInoculateSiteBo bo, HttpServletResponse response) {
        List<YmInoculateSiteVo> list = iYmInoculateSiteService.queryList(bo);
        ExcelUtil.exportExcel(list, "疫苗接种站点管理", YmInoculateSiteVo.class, response);
    }

    /**
     * 获取疫苗接种站点管理详细信息
     *
     * @param id 主键
     */
    @SaCheckPermission("vaccine:inoculateSite:query")
    @GetMapping("/{id}")
    public R<YmInoculateSiteVo> getInfo(@NotNull(message = "主键不能为空")
                                     @PathVariable Long id) {
        return R.ok(iYmInoculateSiteService.queryById(id));
    }

    /**
     * 新增疫苗接种站点管理
     */
    @SaCheckPermission("vaccine:inoculateSite:add")
    @Log(title = "疫苗接种站点管理", businessType = BusinessType.INSERT)
    @RepeatSubmit()
    @PostMapping()
    public R<Void> add(@Validated(AddGroup.class) @RequestBody YmInoculateSiteBo bo) {
        return toAjax(iYmInoculateSiteService.insertByBo(bo));
    }

    /**
     * 修改疫苗接种站点管理
     */
    @SaCheckPermission("vaccine:inoculateSite:edit")
    @Log(title = "疫苗接种站点管理", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody YmInoculateSiteBo bo) {
        return toAjax(iYmInoculateSiteService.updateByBo(bo));
    }

    /**
     * 删除疫苗接种站点管理
     *
     * @param ids 主键串
     */
    @SaCheckPermission("vaccine:inoculateSite:remove")
    @Log(title = "疫苗接种站点管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public R<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Long[] ids) {
        return toAjax(iYmInoculateSiteService.deleteWithValidByIds(Arrays.asList(ids), true));
    }
}
