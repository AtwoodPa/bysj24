package com.ym.vaccine.controller;

import java.util.List;
import java.util.Arrays;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;

import com.ym.common.utils.StringUtils;
import com.ym.vaccine.mapper.*;
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
    private final YmWorkerMapper workerMapper;
    private final YmInoculateSiteMapper siteMapper;
    private final YmPlanMapper planMapper;
    private final YmUserMapper userMapper;
    private final YmAppointMapper appointMapper;


    /**
     * 查询留观查询列表
     */
    @SaCheckPermission("vaccine:observe:list")
    @GetMapping("/list")
    public TableDataInfo<YmObserveVo> list(YmObserveBo bo, PageQuery pageQuery) {
        TableDataInfo<YmObserveVo> data = iYmObserveService.queryPageList(bo, pageQuery);
        List<YmObserveVo> dataList = data.getRows();
        dataList = dataList.stream().map(item -> {
            item.setRealName(userMapper.selectById(appointMapper.selectById(item.getAppointId()).getUserId()).getRealName());
            item.setWorkerName(workerMapper.selectById(item.getWorkerId()).getRealName());
            item.setSiteName(siteMapper.selectById(planMapper.selectById(appointMapper.selectById(item.getAppointId()).getPlanId()).getInoculateSiteId()).getName());
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
