package com.house.core.controller;

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
import com.house.common.annotation.RepeatSubmit;
import com.house.common.annotation.Log;
import com.house.common.core.controller.BaseController;
import com.house.common.core.domain.PageQuery;
import com.house.common.core.domain.R;
import com.house.common.core.validate.AddGroup;
import com.house.common.core.validate.EditGroup;
import com.house.common.core.validate.QueryGroup;
import com.house.common.enums.BusinessType;
import com.house.common.utils.poi.ExcelUtil;
import com.house.core.domain.vo.CmsArticleVo;
import com.house.core.domain.bo.CmsArticleBo;
import com.house.core.service.ICmsArticleService;
import com.house.common.core.page.TableDataInfo;

/**
 * 文章内容管理
 *
 * @author house
 * @date 2024-03-05
 */
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/core/article")
public class CmsArticleController extends BaseController {

    private final ICmsArticleService iCmsArticleService;

    /**
     * 查询文章内容管理列表
     */
    @SaIgnore
    @GetMapping("/list")
    public TableDataInfo<CmsArticleVo> list(CmsArticleBo bo, PageQuery pageQuery) {
        return iCmsArticleService.queryPageList(bo, pageQuery);
    }

    /**
     * 导出文章内容管理列表
     */
    @SaIgnore
    @Log(title = "文章内容管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(CmsArticleBo bo, HttpServletResponse response) {
        List<CmsArticleVo> list = iCmsArticleService.queryList(bo);
        ExcelUtil.exportExcel(list, "文章内容管理", CmsArticleVo.class, response);
    }

    /**
     * 获取文章内容管理详细信息
     *
     * @param id 主键
     */
    @SaIgnore
    @GetMapping("/{id}")
    public R<CmsArticleVo> getInfo(@NotNull(message = "主键不能为空")
                                     @PathVariable Long id) {
        return R.ok(iCmsArticleService.queryById(id));
    }

    /**
     * 新增文章内容管理
     */
    @SaIgnore
    @Log(title = "文章内容管理", businessType = BusinessType.INSERT)
    @RepeatSubmit()
    @PostMapping()
    public R<Void> add(@Validated(AddGroup.class) @RequestBody CmsArticleBo bo) {
        return toAjax(iCmsArticleService.insertByBo(bo));
    }

    /**
     * 修改文章内容管理
     */
    @SaIgnore
    @Log(title = "文章内容管理", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody CmsArticleBo bo) {
        return toAjax(iCmsArticleService.updateByBo(bo));
    }

    /**
     * 删除文章内容管理
     *
     * @param ids 主键串
     */
    @SaIgnore
    @Log(title = "文章内容管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public R<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Long[] ids) {
        return toAjax(iCmsArticleService.deleteWithValidByIds(Arrays.asList(ids), true));
    }
}
