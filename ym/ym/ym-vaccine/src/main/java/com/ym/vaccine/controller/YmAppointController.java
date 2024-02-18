package com.ym.vaccine.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Arrays;
import java.util.stream.Collectors;

import cn.dev33.satoken.annotation.SaIgnore;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.ym.common.utils.StringUtils;
import com.ym.vaccine.annotation.PassToken;
import com.ym.vaccine.domain.YmAppoint;
import com.ym.vaccine.domain.common.Result;
import com.ym.vaccine.exception.TokenUnavailable;
import com.ym.vaccine.mapper.VaccineMapper;
import com.ym.vaccine.mapper.YmInoculateSiteMapper;
import com.ym.vaccine.mapper.YmPlanMapper;
import com.ym.vaccine.mapper.YmUserMapper;
import com.ym.vaccine.service.IYmPlanService;
import com.ym.vaccine.utils.JwtUtils;
import lombok.RequiredArgsConstructor;
import javax.servlet.http.HttpServletResponse;
import javax.validation.constraints.*;
import cn.dev33.satoken.annotation.SaCheckPermission;
import org.springframework.beans.factory.annotation.Autowired;
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
public class YmAppointController extends BaseController {

    private final IYmAppointService iYmAppointService;

    @Autowired
    private IYmPlanService planService;
    private final YmUserMapper userMapper;
    private final YmPlanMapper planMapper;
    private final YmInoculateSiteMapper inoculateSiteMapper;
    private final VaccineMapper vaccineMapper;


    /* 后台管理接口 */

    /**
     * 查询预约列表
     */
    @SaCheckPermission("vaccine:appoint:list")
    @GetMapping("/list")
    public TableDataInfo<YmAppointVo> list(YmAppointBo bo, PageQuery pageQuery) {
        if(StringUtils.isNotBlank(bo.getRealName())){
            userMapper.selectUserByRealName(bo.getRealName()).ifPresent(item->{
                // bo.setUserId(item.getId());
            });
        }
        TableDataInfo<YmAppointVo> data = iYmAppointService.queryPageList(bo, pageQuery);
        List<YmAppointVo> dataList = data.getRows();
        List<YmAppointVo> resultData = dataList.stream().map(item -> {

            return item;
        }).collect(Collectors.toList());



        data.setRows(resultData);
        return data;
    }

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
        return R.ok(iYmAppointService.queryById(id));
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
