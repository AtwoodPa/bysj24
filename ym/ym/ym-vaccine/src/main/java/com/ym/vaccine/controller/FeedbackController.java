package com.ym.vaccine.controller;

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
import com.ym.vaccine.domain.vo.FeedbackVo;
import com.ym.vaccine.domain.bo.FeedbackBo;
import com.ym.vaccine.service.IFeedbackService;
import com.ym.common.core.page.TableDataInfo;

/**
 * 用户反馈管理
 *
 * @author ym
 * @date 2024-02-24
 */
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/vaccine/feedback")
public class FeedbackController extends BaseController {

    private final IFeedbackService iFeedbackService;

    /**
     * 查询用户反馈管理列表
     */
    @SaIgnore
    @GetMapping("/list")
    public TableDataInfo<FeedbackVo> list(FeedbackBo bo, PageQuery pageQuery) {
        return iFeedbackService.queryPageList(bo, pageQuery);
    }

    /**
     * 导出用户反馈管理列表
     */
    @SaIgnore
    @Log(title = "用户反馈管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(FeedbackBo bo, HttpServletResponse response) {
        List<FeedbackVo> list = iFeedbackService.queryList(bo);
        ExcelUtil.exportExcel(list, "用户反馈管理", FeedbackVo.class, response);
    }

    /**
     * 获取用户反馈管理详细信息
     *
     * @param id 主键
     */
    @SaIgnore
    @GetMapping("/{id}")
    public R<FeedbackVo> getInfo(@NotNull(message = "主键不能为空")
                                     @PathVariable Long id) {
        return R.ok(iFeedbackService.queryById(id));
    }

    /**
     * 新增用户反馈管理
     */

    @SaIgnore
    @PostMapping()
    public R<Void> add( @RequestBody FeedbackBo bo) {
        return toAjax(iFeedbackService.insertByBo(bo));
    }

    /**
     * 修改用户反馈管理
     */
    @SaIgnore
    @Log(title = "用户反馈管理", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody FeedbackBo bo) {
        return toAjax(iFeedbackService.updateByBo(bo));
    }

    /**
     * 删除用户反馈管理
     *
     * @param ids 主键串
     */
    @SaIgnore
    @Log(title = "用户反馈管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public R<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Long[] ids) {
        return toAjax(iFeedbackService.deleteWithValidByIds(Arrays.asList(ids), true));
    }
}
