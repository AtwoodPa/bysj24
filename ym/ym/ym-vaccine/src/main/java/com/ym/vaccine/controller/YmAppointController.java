package com.ym.vaccine.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Arrays;
import java.util.Map;
import java.util.stream.Collectors;

import cn.dev33.satoken.annotation.SaIgnore;
import cn.hutool.core.bean.BeanUtil;
import com.ym.common.core.domain.entity.SysUser;
import com.ym.common.core.domain.model.LoginUser;
import com.ym.common.helper.LoginHelper;
import com.ym.system.service.ISysUserService;
import com.ym.vaccine.domain.YmInoculateSite;
import com.ym.vaccine.domain.YmVaccine;
import com.ym.vaccine.domain.bo.OnlineAppointBo;
import com.ym.vaccine.domain.bo.YmOrdersBo;
import com.ym.vaccine.domain.common.SelectOption;
import com.ym.vaccine.service.IYmInoculateSiteService;
import com.ym.vaccine.service.IYmOrdersService;
import com.ym.vaccine.service.IYmVaccineService;
import lombok.RequiredArgsConstructor;

import javax.servlet.http.HttpServletResponse;
import javax.validation.constraints.*;

import cn.dev33.satoken.annotation.SaCheckPermission;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;
import org.springframework.validation.annotation.Validated;
import com.ym.common.annotation.RepeatSubmit;
import com.ym.common.annotation.Log;
import com.ym.common.core.controller.BaseController;
import com.ym.common.core.domain.PageQuery;
import com.ym.common.core.domain.R;
import com.ym.common.core.validate.AddGroup;
import com.ym.common.core.validate.EditGroup;
import com.ym.common.enums.BusinessType;
import com.ym.common.utils.poi.ExcelUtil;
import com.ym.vaccine.domain.vo.YmAppointVo;
import com.ym.vaccine.domain.bo.YmAppointBo;
import com.ym.vaccine.service.IYmAppointService;
import com.ym.common.core.page.TableDataInfo;

/**
 * 预约
 *
 * @author ym
 * @date 2024-01-29
 */
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/vaccine/appoint")
@Slf4j
public class YmAppointController extends BaseController {

    private final IYmAppointService iYmAppointService;
    private final IYmVaccineService iYmVaccineService;
    private final IYmInoculateSiteService iYmInoculateSiteService;
    /* 支付相关 */
    private final IYmOrdersService ordersService;


    private final ISysUserService userService;


    /**
     * 用户在线预约
     */
    @SaIgnore
    @PostMapping("/appoint")
    public R appoint(@RequestBody OnlineAppointBo bo) {
        Boolean result = iYmAppointService.appoint(bo);
        return R.ok(result);
    }

    /**
     * 获取所有疫苗信息
     *
     * @return
     */
    @SaIgnore
    @GetMapping("/getVaccines")
    public List<SelectOption> getVaccines() {
        return iYmVaccineService.list().stream().map(item -> SelectOption.of(String.valueOf(item.getId()), item.getName())).collect(Collectors.toList());
    }

    /**
     * 获取所有接种点信息
     *
     * @return
     */
    @SaIgnore
    @GetMapping("/getAppointAddress")
    public List<SelectOption> getAppointAddress() {
        return iYmInoculateSiteService.list().stream().map(item -> SelectOption.of(String.valueOf(item.getId()), item.getName())).collect(Collectors.toList());
    }

    /**
     * 获取用户预约记录，当前登陆账户的所有预约记录
     * @param pageQuery
     * @return
     */
    @SaIgnore
    @GetMapping("/getAppointRecordsByUserId")
    public TableDataInfo<YmAppointVo> getAppointRecordsByUserId(PageQuery pageQuery) {
        Long userId = LoginHelper.getUserId();
        YmAppointBo bo = new YmAppointBo();
        TableDataInfo<YmAppointVo> ymAppointVoTableDataInfo = iYmAppointService.queryPageList(bo, pageQuery);

        if (userId == 1L){// 管理员返回所有数据
            List<YmAppointVo> rows = ymAppointVoTableDataInfo.getRows();
            List<YmAppointVo> collect = rows.stream().map(item -> {
                Long status = item.getStatus();
                if (status == 0){
                    item.setStatusName("待支付");
                }else if (status == 1){
                    item.setStatusName("已支付");
                }else if (status == 2){
                    item.setStatusName("已接种");
                }
                SysUser sysUser = userService.selectUserById(item.getUserId());
                item.setUserName(sysUser.getNickName());
                YmVaccine vaccine = iYmVaccineService.getById(item.getVaccineId());
                item.setVaccineName(vaccine.getName());
                YmInoculateSite site = iYmInoculateSiteService.getById(item.getInoculateSiteId());
                item.setInoculateSiteName(site.getName());
                return item;
            }).collect(Collectors.toList());
            ymAppointVoTableDataInfo.setRows(collect);
            return ymAppointVoTableDataInfo;
        }else {
            bo.setUserId(userId);
            ymAppointVoTableDataInfo = iYmAppointService.queryPageList(bo, pageQuery);
            List<YmAppointVo> rows = ymAppointVoTableDataInfo.getRows();
            List<YmAppointVo> collect = rows.stream().map(item -> {
                Long status = item.getStatus();
                if (status == 0){
                    item.setStatusName("待支付");
                }else if (status == 1){
                    item.setStatusName("已支付");
                }else if (status == 2){
                    item.setStatusName("已接种");
                }
                SysUser sysUser = userService.selectUserById(item.getUserId());
                item.setUserName(sysUser.getNickName());
                YmVaccine vaccine = iYmVaccineService.getById(item.getVaccineId());
                item.setVaccineName(vaccine.getName());
                YmInoculateSite site = iYmInoculateSiteService.getById(item.getInoculateSiteId());
                item.setInoculateSiteName(site.getName());
                return item;
            }).collect(Collectors.toList());

            ymAppointVoTableDataInfo.setRows(collect);
            return ymAppointVoTableDataInfo;
        }

    }

    /**
     * 支付功能
     * @param id
     * @return
     */
    @SaIgnore
    @PostMapping("/addOrder")
    public R<Void> addOrder(@RequestBody Long id) {
        // 根据id查询预约信息
        YmAppointVo appoint = iYmAppointService.queryById(id);
        if(appoint.getStatus() == 1L){
            return R.fail("该预约已支付");
        }
        // 修改预约状态为已支付
        appoint.setStatus(1L);
        iYmAppointService.updateByBo(BeanUtil.copyProperties(appoint, YmAppointBo.class));
        // 创建订单

        YmOrdersBo ordersBo = new YmOrdersBo();
        ordersBo.setAppointId(appoint.getId());
        ordersBo.setTotalAmount(iYmVaccineService.getById(appoint.getVaccineId()).getPrice());
        ordersBo.setPaymentMethod("在线支付");
        ordersBo.setStatus(1L);

        return toAjax(ordersService.insertByBo(ordersBo));
    }
    /* 后台管理接口 */

    /**
     * 导出预约列表
     */
    @SaCheckPermission("vaccine:appoint:export")
    @Log(title = "预约", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(YmAppointBo bo, HttpServletResponse response) {
        List<YmAppointVo> list = iYmAppointService.queryList(bo);
        ExcelUtil.exportExcel(list, "预约", YmAppointVo.class, response);
    }

    /**
     * 获取预约详细信息
     *
     * @param id 主键
     */
    @SaCheckPermission("vaccine:appoint:query")
    @GetMapping("/{id}")
    public R<YmAppointVo> getInfo(@NotNull(message = "主键不能为空")
                                  @PathVariable Long id) {
        YmAppointVo data = iYmAppointService.queryById(id);
        if(data.getStatus() == 1L){
            return R.fail("该预约已支付，无法修改");
        }
        return R.ok(data);
    }

    /**
     * 新增预约
     */
    @SaCheckPermission("vaccine:appoint:add")
    @Log(title = "预约", businessType = BusinessType.INSERT)
    @RepeatSubmit()
    @PostMapping()
    public R<Void> add(@Validated(AddGroup.class) @RequestBody YmAppointBo bo) {
        return toAjax(iYmAppointService.insertByBo(bo));
    }

    /**
     * 修改预约
     */
    @SaCheckPermission("vaccine:appoint:edit")
    @Log(title = "预约", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody YmAppointBo bo) {
        return toAjax(iYmAppointService.updateByBo(bo));
    }

    /**
     * 删除预约
     *
     * @param ids 主键串
     */
    @SaCheckPermission("vaccine:appoint:remove")
    @Log(title = "预约", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public R<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Long[] ids) {
        return toAjax(iYmAppointService.deleteWithValidByIds(Arrays.asList(ids), true));
    }
}
