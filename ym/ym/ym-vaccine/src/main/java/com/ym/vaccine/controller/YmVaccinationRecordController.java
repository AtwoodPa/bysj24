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
import com.ym.vaccine.domain.vo.YmVaccinationRecordVo;
import com.ym.vaccine.domain.bo.YmVaccinationRecordBo;
import com.ym.vaccine.service.IYmVaccinationRecordService;
import com.ym.common.core.page.TableDataInfo;

/**
 * 接种记录，存储用户接种记录
 *
 * @author ym
 * @date 2024-01-18
 */
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/vaccine/vaccinationRecord")
public class YmVaccinationRecordController extends BaseController {

    private final IYmVaccinationRecordService iYmVaccinationRecordService;

    /**
     * 查询接种记录，存储用户接种记录列表
     */
    @SaCheckPermission("vaccine:vaccinationRecord:list")
    @GetMapping("/list")
    public TableDataInfo<YmVaccinationRecordVo> list(YmVaccinationRecordBo bo, PageQuery pageQuery) {
        return iYmVaccinationRecordService.queryPageList(bo, pageQuery);
    }

    /**
     * 导出接种记录，存储用户接种记录列表
     */
    @SaCheckPermission("vaccine:vaccinationRecord:export")
    @Log(title = "接种记录，存储用户接种记录", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(YmVaccinationRecordBo bo, HttpServletResponse response) {
        List<YmVaccinationRecordVo> list = iYmVaccinationRecordService.queryList(bo);
        ExcelUtil.exportExcel(list, "接种记录，存储用户接种记录", YmVaccinationRecordVo.class, response);
    }

    /**
     * 获取接种记录，存储用户接种记录详细信息
     *
     * @param recordId 主键
     */
    @SaCheckPermission("vaccine:vaccinationRecord:query")
    @GetMapping("/{recordId}")
    public R<YmVaccinationRecordVo> getInfo(@NotNull(message = "主键不能为空")
                                     @PathVariable Long recordId) {
        return R.ok(iYmVaccinationRecordService.queryById(recordId));
    }

    /**
     * 新增接种记录，存储用户接种记录
     */
    @SaCheckPermission("vaccine:vaccinationRecord:add")
    @Log(title = "接种记录，存储用户接种记录", businessType = BusinessType.INSERT)
    @RepeatSubmit()
    @PostMapping()
    public R<Void> add(@Validated(AddGroup.class) @RequestBody YmVaccinationRecordBo bo) {
        return toAjax(iYmVaccinationRecordService.insertByBo(bo));
    }

    /**
     * 修改接种记录，存储用户接种记录
     */
    @SaCheckPermission("vaccine:vaccinationRecord:edit")
    @Log(title = "接种记录，存储用户接种记录", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody YmVaccinationRecordBo bo) {
        return toAjax(iYmVaccinationRecordService.updateByBo(bo));
    }

    /**
     * 删除接种记录，存储用户接种记录
     *
     * @param recordIds 主键串
     */
    @SaCheckPermission("vaccine:vaccinationRecord:remove")
    @Log(title = "接种记录，存储用户接种记录", businessType = BusinessType.DELETE)
    @DeleteMapping("/{recordIds}")
    public R<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Long[] recordIds) {
        return toAjax(iYmVaccinationRecordService.deleteWithValidByIds(Arrays.asList(recordIds), true));
    }
}
