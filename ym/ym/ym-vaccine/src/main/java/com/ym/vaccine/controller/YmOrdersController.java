package com.ym.vaccine.controller;

import cn.dev33.satoken.annotation.SaCheckPermission;
import com.ym.common.annotation.Log;
import com.ym.common.annotation.RepeatSubmit;
import com.ym.common.core.controller.BaseController;
import com.ym.common.core.domain.PageQuery;
import com.ym.common.core.domain.R;
import com.ym.common.core.page.TableDataInfo;
import com.ym.common.core.validate.AddGroup;
import com.ym.common.core.validate.EditGroup;
import com.ym.common.enums.BusinessType;
import com.ym.common.utils.poi.ExcelUtil;
import com.ym.system.service.ISysUserService;
import com.ym.vaccine.domain.YmAppoint;
import com.ym.vaccine.domain.bo.YmOrdersBo;
import com.ym.vaccine.domain.vo.YmOrdersVo;
import com.ym.vaccine.service.IYmAppointService;
import com.ym.vaccine.service.IYmInoculateSiteService;
import com.ym.vaccine.service.IYmOrdersService;
import com.ym.vaccine.service.IYmVaccineService;
import lombok.RequiredArgsConstructor;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

/**
 * 订单管理
 *
 * @author ym
 * @date 2024-02-19
 */
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/vaccine/orders")
public class YmOrdersController extends BaseController {

    private final IYmOrdersService iYmOrdersService;
    private final IYmVaccineService vaccineService;
    private final IYmInoculateSiteService inoculateSiteService;
    private final IYmAppointService appointService;
    private final ISysUserService userService;


    /**
     * 查询订单管理列表
     */
    @SaCheckPermission("vaccine:orders:list")
    @GetMapping("/list")
    public TableDataInfo<YmOrdersVo> list(YmOrdersBo bo, PageQuery pageQuery) {
        TableDataInfo<YmOrdersVo> resultData = iYmOrdersService.queryPageList(bo, pageQuery);
        List<YmOrdersVo> rows = resultData.getRows();
        List<YmOrdersVo> toRowsData = rows.stream().map(item -> {
            Long status = item.getStatus();
            if (status == 0L) {
                item.setStatusName("待支付");
            } else if (status == 1L) {
                item.setStatusName("已支付");
            } else if (status == 2L) {
                item.setStatusName("已取消");
            }
            YmAppoint appoint = appointService.getById(item.getAppointId());
            item.setVaccineName(vaccineService.queryById(appoint.getVaccineId()).getName());
            item.setInoculateSiteName(inoculateSiteService.queryById(appoint.getInoculateSiteId()).getName());
            item.setNickName(userService.selectUserById(appoint.getUserId()).getNickName());
            return item;
        }).collect(Collectors.toList());
        resultData.setRows(toRowsData);
        return resultData;
    }

    /**
     * 导出订单管理列表
     */
    @SaCheckPermission("vaccine:orders:export")
    @Log(title = "订单管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(YmOrdersBo bo, HttpServletResponse response) {
        List<YmOrdersVo> list = iYmOrdersService.queryList(bo);
        ExcelUtil.exportExcel(list, "订单管理", YmOrdersVo.class, response);
    }

    /**
     * 获取订单管理详细信息
     *
     * @param id 主键
     */
    @SaCheckPermission("vaccine:orders:query")
    @GetMapping("/{id}")
    public R<YmOrdersVo> getInfo(@NotNull(message = "主键不能为空")
                                 @PathVariable Long id) {
        return R.ok(iYmOrdersService.queryById(id));
    }

    /**
     * 新增订单管理
     */
    @SaCheckPermission("vaccine:orders:add")
    @Log(title = "订单管理", businessType = BusinessType.INSERT)
    @RepeatSubmit()
    @PostMapping()
    public R<Void> add(@Validated(AddGroup.class) @RequestBody YmOrdersBo bo) {
        return toAjax(iYmOrdersService.insertByBo(bo));
    }

    /**
     * 修改订单管理
     */
    @SaCheckPermission("vaccine:orders:edit")
    @Log(title = "订单管理", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody YmOrdersBo bo) {
        return toAjax(iYmOrdersService.updateByBo(bo));
    }

    /**
     * 删除订单管理
     *
     * @param ids 主键串
     */
    @SaCheckPermission("vaccine:orders:remove")
    @Log(title = "订单管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public R<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Long[] ids) {
        return toAjax(iYmOrdersService.deleteWithValidByIds(Arrays.asList(ids), true));
    }
}
