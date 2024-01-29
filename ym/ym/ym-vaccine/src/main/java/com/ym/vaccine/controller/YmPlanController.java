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
import com.ym.vaccine.domain.vo.YmPlanVo;
import com.ym.vaccine.domain.bo.YmPlanBo;
import com.ym.vaccine.service.IYmPlanService;
import com.ym.common.core.page.TableDataInfo;

/**
 * 预约计划管理
 *
 * @author ym
 * @date 2024-01-29
 */
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/vaccine/plan")
public class YmPlanController extends BaseController {

    private final IYmPlanService iYmPlanService;

    /**
     * 查询预约计划管理列表
     */
    @SaCheckPermission("vaccine:plan:list")
    @GetMapping("/list")
    public TableDataInfo<YmPlanVo> list(YmPlanBo bo, PageQuery pageQuery) {
        return iYmPlanService.queryPageList(bo, pageQuery);
    }

    /**
     * 导出预约计划管理列表
     */
    @SaCheckPermission("vaccine:plan:export")
    @Log(title = "预约计划管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(YmPlanBo bo, HttpServletResponse response) {
        List<YmPlanVo> list = iYmPlanService.queryList(bo);
        ExcelUtil.exportExcel(list, "预约计划管理", YmPlanVo.class, response);
    }

    /**
     * 获取预约计划管理详细信息
     *
     * @param id 主键
     */
    @SaCheckPermission("vaccine:plan:query")
    @GetMapping("/{id}")
    public R<YmPlanVo> getInfo(@NotNull(message = "主键不能为空")
                                     @PathVariable Long id) {
        return R.ok(iYmPlanService.queryById(id));
    }

    /**
     * 新增预约计划管理
     */
    @SaCheckPermission("vaccine:plan:add")
    @Log(title = "预约计划管理", businessType = BusinessType.INSERT)
    @RepeatSubmit()
    @PostMapping()
    public R<Void> add(@Validated(AddGroup.class) @RequestBody YmPlanBo bo) {
        return toAjax(iYmPlanService.insertByBo(bo));
    }

    /**
     * 修改预约计划管理
     */
    @SaCheckPermission("vaccine:plan:edit")
    @Log(title = "预约计划管理", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody YmPlanBo bo) {
        return toAjax(iYmPlanService.updateByBo(bo));
    }

    /**
     * 删除预约计划管理
     *
     * @param ids 主键串
     */
    @SaCheckPermission("vaccine:plan:remove")
    @Log(title = "预约计划管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public R<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Long[] ids) {
        return toAjax(iYmPlanService.deleteWithValidByIds(Arrays.asList(ids), true));
    }
}
