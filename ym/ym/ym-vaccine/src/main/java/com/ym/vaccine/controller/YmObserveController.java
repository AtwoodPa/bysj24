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
import com.ym.vaccine.domain.vo.YmObserveVo;
import com.ym.vaccine.domain.bo.YmObserveBo;
import com.ym.vaccine.service.IYmObserveService;
import com.ym.common.core.page.TableDataInfo;

/**
 * 留观查询
 *
 * @author ym
 * @date 2024-01-29
 */
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/vaccine/observe")
public class YmObserveController extends BaseController {

    private final IYmObserveService iYmObserveService;

    /**
     * 查询留观查询列表
     */
    @SaCheckPermission("vaccine:observe:list")
    @GetMapping("/list")
    public TableDataInfo<YmObserveVo> list(YmObserveBo bo, PageQuery pageQuery) {
        return iYmObserveService.queryPageList(bo, pageQuery);
    }

    /**
     * 导出留观查询列表
     */
    @SaCheckPermission("vaccine:observe:export")
    @Log(title = "留观查询", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(YmObserveBo bo, HttpServletResponse response) {
        List<YmObserveVo> list = iYmObserveService.queryList(bo);
        ExcelUtil.exportExcel(list, "留观查询", YmObserveVo.class, response);
    }

    /**
     * 获取留观查询详细信息
     *
     * @param id 主键
     */
    @SaCheckPermission("vaccine:observe:query")
    @GetMapping("/{id}")
    public R<YmObserveVo> getInfo(@NotNull(message = "主键不能为空")
                                     @PathVariable Long id) {
        return R.ok(iYmObserveService.queryById(id));
    }

    /**
     * 新增留观查询
     */
    @SaCheckPermission("vaccine:observe:add")
    @Log(title = "留观查询", businessType = BusinessType.INSERT)
    @RepeatSubmit()
    @PostMapping()
    public R<Void> add(@Validated(AddGroup.class) @RequestBody YmObserveBo bo) {
        return toAjax(iYmObserveService.insertByBo(bo));
    }

    /**
     * 修改留观查询
     */
    @SaCheckPermission("vaccine:observe:edit")
    @Log(title = "留观查询", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody YmObserveBo bo) {
        return toAjax(iYmObserveService.updateByBo(bo));
    }

    /**
     * 删除留观查询
     *
     * @param ids 主键串
     */
    @SaCheckPermission("vaccine:observe:remove")
    @Log(title = "留观查询", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public R<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Long[] ids) {
        return toAjax(iYmObserveService.deleteWithValidByIds(Arrays.asList(ids), true));
    }
}
