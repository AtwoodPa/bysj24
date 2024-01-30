package com.ym.vaccine.controller;

import java.util.List;
import java.util.Arrays;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;

import com.ym.common.utils.StringUtils;
import com.ym.vaccine.mapper.VaccineMapper;
import com.ym.vaccine.mapper.YmAppointMapper;
import com.ym.vaccine.mapper.YmPlanMapper;
import com.ym.vaccine.mapper.YmUserMapper;
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
import com.ym.vaccine.domain.vo.YmPayVo;
import com.ym.vaccine.domain.bo.YmPayBo;
import com.ym.vaccine.service.IYmPayService;
import com.ym.common.core.page.TableDataInfo;

/**
 * 支付功能
 *
 * @author ym
 * @date 2024-01-29
 */
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/vaccine/pay")
public class YmPayController extends BaseController {

    private final IYmPayService iYmPayService;
    private final YmAppointMapper appointMapper;
    private final YmPlanMapper planMapper;
    private final YmUserMapper userMapper;
    private final VaccineMapper vaccineMapper;

    /**
     * 查询支付功能列表
     */
    @SaCheckPermission("vaccine:pay:list")
    @GetMapping("/list")
    public TableDataInfo<YmPayVo> list(YmPayBo bo, PageQuery pageQuery) {

        TableDataInfo<YmPayVo> data = iYmPayService.queryPageList(bo, pageQuery);
        List<YmPayVo> dataList = data.getRows();
        dataList.stream().map(item->{
            item.setRealName(userMapper.selectById(appointMapper.selectById(item.getAppointId()).getUserId()).getRealName());
            item.setVaccineName(
                vaccineMapper.selectById(
                    planMapper.selectById(
                        appointMapper.selectById(item.getAppointId()).getPlanId()).getVaccineId()).getName());
            return item;
        }).collect(Collectors.toList());
        if (StringUtils.isNotBlank(bo.getRealName())){
            // 只保留realName匹配的数据
            dataList = dataList.stream().filter(item->item.getRealName().equals(bo.getRealName())).collect(Collectors.toList());

        }
        data.setRows(dataList);
        return data;
    }

    /**
     * 导出支付功能列表
     */
    @SaCheckPermission("vaccine:pay:export")
    @Log(title = "支付功能", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(YmPayBo bo, HttpServletResponse response) {
        List<YmPayVo> list = iYmPayService.queryList(bo);
        ExcelUtil.exportExcel(list, "支付功能", YmPayVo.class, response);
    }

    /**
     * 获取支付功能详细信息
     *
     * @param id 主键
     */
    @SaCheckPermission("vaccine:pay:query")
    @GetMapping("/{id}")
    public R<YmPayVo> getInfo(@NotNull(message = "主键不能为空")
                                     @PathVariable Long id) {
        return R.ok(iYmPayService.queryById(id));
    }

    /**
     * 新增支付功能
     */
    @SaCheckPermission("vaccine:pay:add")
    @Log(title = "支付功能", businessType = BusinessType.INSERT)
    @RepeatSubmit()
    @PostMapping()
    public R<Void> add(@Validated(AddGroup.class) @RequestBody YmPayBo bo) {
        return toAjax(iYmPayService.insertByBo(bo));
    }

    /**
     * 修改支付功能
     */
    @SaCheckPermission("vaccine:pay:edit")
    @Log(title = "支付功能", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody YmPayBo bo) {
        return toAjax(iYmPayService.updateByBo(bo));
    }

    /**
     * 删除支付功能
     *
     * @param ids 主键串
     */
    @SaCheckPermission("vaccine:pay:remove")
    @Log(title = "支付功能", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public R<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Long[] ids) {
        return toAjax(iYmPayService.deleteWithValidByIds(Arrays.asList(ids), true));
    }
}
