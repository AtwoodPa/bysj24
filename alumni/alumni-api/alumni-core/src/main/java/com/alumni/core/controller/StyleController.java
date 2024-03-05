package com.alumni.core.controller;

import java.util.List;
import java.util.Arrays;
import java.util.concurrent.TimeUnit;

import cn.dev33.satoken.annotation.SaIgnore;
import lombok.RequiredArgsConstructor;
import javax.servlet.http.HttpServletResponse;
import javax.validation.constraints.*;
import cn.dev33.satoken.annotation.SaCheckPermission;
import org.springframework.web.bind.annotation.*;
import org.springframework.validation.annotation.Validated;
import com.alumni.common.annotation.RepeatSubmit;
import com.alumni.common.annotation.Log;
import com.alumni.common.core.controller.BaseController;
import com.alumni.common.core.domain.PageQuery;
import com.alumni.common.core.domain.R;
import com.alumni.common.core.validate.AddGroup;
import com.alumni.common.core.validate.EditGroup;
import com.alumni.common.core.validate.QueryGroup;
import com.alumni.common.enums.BusinessType;
import com.alumni.common.utils.poi.ExcelUtil;
import com.alumni.core.domain.vo.StyleVo;
import com.alumni.core.domain.bo.StyleBo;
import com.alumni.core.service.IStyleService;
import com.alumni.common.core.page.TableDataInfo;

/**
 * 校友风采管理
 *
 * @author alumni
 * @date 2024-03-03
 */
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/core/style")
public class StyleController extends BaseController {

    private final IStyleService iStyleService;

    /**
     * 查询校友风采管理列表
     */
    @SaIgnore
    @GetMapping("/list")
    public TableDataInfo<StyleVo> list(StyleBo bo, PageQuery pageQuery) {
        return iStyleService.queryPageList(bo, pageQuery);
    }

    /**
     * 导出校友风采管理列表
     */
    @SaIgnore
    @Log(title = "校友风采管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(StyleBo bo, HttpServletResponse response) {
        List<StyleVo> list = iStyleService.queryList(bo);
        ExcelUtil.exportExcel(list, "校友风采管理", StyleVo.class, response);
    }

    /**
     * 获取校友风采管理详细信息
     *
     * @param id 主键
     */
    @SaIgnore
    @GetMapping("/{id}")
    public R<StyleVo> getInfo(@NotNull(message = "主键不能为空")
                                     @PathVariable Long id) {
        return R.ok(iStyleService.queryById(id));
    }

    /**
     * 新增校友风采管理
     */
    @SaIgnore
    @Log(title = "校友风采管理", businessType = BusinessType.INSERT)
    @RepeatSubmit()
    @PostMapping()
    public R<Void> add(@Validated(AddGroup.class) @RequestBody StyleBo bo) {
        return toAjax(iStyleService.insertByBo(bo));
    }

    /**
     * 修改校友风采管理
     */
    @SaIgnore
    @Log(title = "校友风采管理", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody StyleBo bo) {
        return toAjax(iStyleService.updateByBo(bo));
    }

    /**
     * 删除校友风采管理
     *
     * @param ids 主键串
     */
    @SaIgnore
    @Log(title = "校友风采管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public R<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Long[] ids) {
        return toAjax(iStyleService.deleteWithValidByIds(Arrays.asList(ids), true));
    }
}
