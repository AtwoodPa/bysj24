package com.house.core.controller;

import java.util.List;
import java.util.Arrays;
import java.util.concurrent.TimeUnit;

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
import com.house.core.domain.vo.CmsFeedbackVo;
import com.house.core.domain.bo.CmsFeedbackBo;
import com.house.core.service.ICmsFeedbackService;
import com.house.common.core.page.TableDataInfo;

/**
 * 用户反馈管理
 *
 * @author house
 * @date 2024-03-05
 */
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/core/feedback")
public class CmsFeedbackController extends BaseController {

    private final ICmsFeedbackService iCmsFeedbackService;

    /**
     * 查询用户反馈管理列表
     */
    @SaCheckPermission("core:feedback:list")
    @GetMapping("/list")
    public TableDataInfo<CmsFeedbackVo> list(CmsFeedbackBo bo, PageQuery pageQuery) {
        return iCmsFeedbackService.queryPageList(bo, pageQuery);
    }

    /**
     * 导出用户反馈管理列表
     */
    @SaCheckPermission("core:feedback:export")
    @Log(title = "用户反馈管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(CmsFeedbackBo bo, HttpServletResponse response) {
        List<CmsFeedbackVo> list = iCmsFeedbackService.queryList(bo);
        ExcelUtil.exportExcel(list, "用户反馈管理", CmsFeedbackVo.class, response);
    }

    /**
     * 获取用户反馈管理详细信息
     *
     * @param id 主键
     */
    @SaCheckPermission("core:feedback:query")
    @GetMapping("/{id}")
    public R<CmsFeedbackVo> getInfo(@NotNull(message = "主键不能为空")
                                     @PathVariable Long id) {
        return R.ok(iCmsFeedbackService.queryById(id));
    }

    /**
     * 新增用户反馈管理
     */
    @SaCheckPermission("core:feedback:add")
    @Log(title = "用户反馈管理", businessType = BusinessType.INSERT)
    @RepeatSubmit()
    @PostMapping()
    public R<Void> add(@Validated(AddGroup.class) @RequestBody CmsFeedbackBo bo) {
        return toAjax(iCmsFeedbackService.insertByBo(bo));
    }

    /**
     * 修改用户反馈管理
     */
    @SaCheckPermission("core:feedback:edit")
    @Log(title = "用户反馈管理", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody CmsFeedbackBo bo) {
        return toAjax(iCmsFeedbackService.updateByBo(bo));
    }

    /**
     * 删除用户反馈管理
     *
     * @param ids 主键串
     */
    @SaCheckPermission("core:feedback:remove")
    @Log(title = "用户反馈管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public R<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Long[] ids) {
        return toAjax(iCmsFeedbackService.deleteWithValidByIds(Arrays.asList(ids), true));
    }
}
