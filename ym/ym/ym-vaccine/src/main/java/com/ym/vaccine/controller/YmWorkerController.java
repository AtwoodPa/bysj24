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
import com.ym.vaccine.domain.vo.YmWorkerVo;
import com.ym.vaccine.domain.bo.YmWorkerBo;
import com.ym.vaccine.service.IYmWorkerService;
import com.ym.common.core.page.TableDataInfo;

/**
 * 医护人员信息
 *
 * @author ym
 * @date 2024-01-29
 */
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/vaccine/worker")
public class YmWorkerController extends BaseController {

    private final IYmWorkerService iYmWorkerService;

    /**
     * 查询医护人员信息列表
     */
    @SaCheckPermission("vaccine:worker:list")
    @GetMapping("/list")
    public TableDataInfo<YmWorkerVo> list(YmWorkerBo bo, PageQuery pageQuery) {
        return iYmWorkerService.queryPageList(bo, pageQuery);
    }

    /**
     * 导出医护人员信息列表
     */
    @SaCheckPermission("vaccine:worker:export")
    @Log(title = "医护人员信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(YmWorkerBo bo, HttpServletResponse response) {
        List<YmWorkerVo> list = iYmWorkerService.queryList(bo);
        ExcelUtil.exportExcel(list, "医护人员信息", YmWorkerVo.class, response);
    }

    /**
     * 获取医护人员信息详细信息
     *
     * @param id 主键
     */
    @SaCheckPermission("vaccine:worker:query")
    @GetMapping("/{id}")
    public R<YmWorkerVo> getInfo(@NotNull(message = "主键不能为空")
                                     @PathVariable Long id) {
        return R.ok(iYmWorkerService.queryById(id));
    }

    /**
     * 新增医护人员信息
     */
    @SaCheckPermission("vaccine:worker:add")
    @Log(title = "医护人员信息", businessType = BusinessType.INSERT)
    @RepeatSubmit()
    @PostMapping()
    public R<Void> add(@Validated(AddGroup.class) @RequestBody YmWorkerBo bo) {
        return toAjax(iYmWorkerService.insertByBo(bo));
    }

    /**
     * 修改医护人员信息
     */
    @SaCheckPermission("vaccine:worker:edit")
    @Log(title = "医护人员信息", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody YmWorkerBo bo) {
        return toAjax(iYmWorkerService.updateByBo(bo));
    }

    /**
     * 删除医护人员信息
     *
     * @param ids 主键串
     */
    @SaCheckPermission("vaccine:worker:remove")
    @Log(title = "医护人员信息", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public R<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Long[] ids) {
        return toAjax(iYmWorkerService.deleteWithValidByIds(Arrays.asList(ids), true));
    }
}
