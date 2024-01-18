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
import com.ym.vaccine.domain.vo.YmAppointmentVo;
import com.ym.vaccine.domain.bo.YmAppointmentBo;
import com.ym.vaccine.service.IYmAppointmentService;
import com.ym.common.core.page.TableDataInfo;

/**
 * 疫苗预约，存储用户预约信息
 *
 * @author ym
 * @date 2024-01-18
 */
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/vaccine/appointment")
public class YmAppointmentController extends BaseController {

    private final IYmAppointmentService iYmAppointmentService;

    /**
     * 查询疫苗预约，存储用户预约信息列表
     */
    @SaCheckPermission("vaccine:appointment:list")
    @GetMapping("/list")
    public TableDataInfo<YmAppointmentVo> list(YmAppointmentBo bo, PageQuery pageQuery) {
        return iYmAppointmentService.queryPageList(bo, pageQuery);
    }

    /**
     * 导出疫苗预约，存储用户预约信息列表
     */
    @SaCheckPermission("vaccine:appointment:export")
    @Log(title = "疫苗预约，存储用户预约信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(YmAppointmentBo bo, HttpServletResponse response) {
        List<YmAppointmentVo> list = iYmAppointmentService.queryList(bo);
        ExcelUtil.exportExcel(list, "疫苗预约，存储用户预约信息", YmAppointmentVo.class, response);
    }

    /**
     * 获取疫苗预约，存储用户预约信息详细信息
     *
     * @param appointmentId 主键
     */
    @SaCheckPermission("vaccine:appointment:query")
    @GetMapping("/{appointmentId}")
    public R<YmAppointmentVo> getInfo(@NotNull(message = "主键不能为空")
                                     @PathVariable Long appointmentId) {
        return R.ok(iYmAppointmentService.queryById(appointmentId));
    }

    /**
     * 新增疫苗预约，存储用户预约信息
     */
    @SaCheckPermission("vaccine:appointment:add")
    @Log(title = "疫苗预约，存储用户预约信息", businessType = BusinessType.INSERT)
    @RepeatSubmit()
    @PostMapping()
    public R<Void> add(@Validated(AddGroup.class) @RequestBody YmAppointmentBo bo) {
        return toAjax(iYmAppointmentService.insertByBo(bo));
    }

    /**
     * 修改疫苗预约，存储用户预约信息
     */
    @SaCheckPermission("vaccine:appointment:edit")
    @Log(title = "疫苗预约，存储用户预约信息", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody YmAppointmentBo bo) {
        return toAjax(iYmAppointmentService.updateByBo(bo));
    }

    /**
     * 删除疫苗预约，存储用户预约信息
     *
     * @param appointmentIds 主键串
     */
    @SaCheckPermission("vaccine:appointment:remove")
    @Log(title = "疫苗预约，存储用户预约信息", businessType = BusinessType.DELETE)
    @DeleteMapping("/{appointmentIds}")
    public R<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Long[] appointmentIds) {
        return toAjax(iYmAppointmentService.deleteWithValidByIds(Arrays.asList(appointmentIds), true));
    }
}
