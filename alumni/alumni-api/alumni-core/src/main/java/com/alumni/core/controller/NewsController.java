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
import com.alumni.core.domain.vo.NewsVo;
import com.alumni.core.domain.bo.NewsBo;
import com.alumni.core.service.INewsService;
import com.alumni.common.core.page.TableDataInfo;

/**
 * 新闻动态管理
 *
 * @author alumni
 * @date 2024-03-03
 */
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/core/news")
public class NewsController extends BaseController {

    private final INewsService iNewsService;

    /**
     * 查询新闻动态管理列表
     */
    @SaIgnore
    @GetMapping("/list")
    public TableDataInfo<NewsVo> list(NewsBo bo, PageQuery pageQuery) {
        return iNewsService.queryPageList(bo, pageQuery);
    }

    /**
     * 导出新闻动态管理列表
     */
    @SaIgnore
    @Log(title = "新闻动态管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(NewsBo bo, HttpServletResponse response) {
        List<NewsVo> list = iNewsService.queryList(bo);
        ExcelUtil.exportExcel(list, "新闻动态管理", NewsVo.class, response);
    }

    /**
     * 获取新闻动态管理详细信息
     *
     * @param id 主键
     */
    @SaIgnore
    @GetMapping("/{id}")
    public R<NewsVo> getInfo(@NotNull(message = "主键不能为空")
                                     @PathVariable Long id) {
        return R.ok(iNewsService.queryById(id));
    }

    /**
     * 新增新闻动态管理
     */
    @SaIgnore
    @Log(title = "新闻动态管理", businessType = BusinessType.INSERT)
    @RepeatSubmit()
    @PostMapping()
    public R<Void> add(@Validated(AddGroup.class) @RequestBody NewsBo bo) {
        return toAjax(iNewsService.insertByBo(bo));
    }

    /**
     * 修改新闻动态管理
     */
    @SaIgnore
    @Log(title = "新闻动态管理", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody NewsBo bo) {
        return toAjax(iNewsService.updateByBo(bo));
    }

    /**
     * 删除新闻动态管理
     *
     * @param ids 主键串
     */
    @SaIgnore
    @Log(title = "新闻动态管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public R<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Long[] ids) {
        return toAjax(iNewsService.deleteWithValidByIds(Arrays.asList(ids), true));
    }
}
