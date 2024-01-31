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
import com.ym.vaccine.domain.vo.YmPreCheckVo;
import com.ym.vaccine.domain.bo.YmPreCheckBo;
import com.ym.vaccine.service.IYmPreCheckService;
import com.ym.common.core.page.TableDataInfo;

/**
 * 预检信息查询
 *
 * @author ym
 * @date 2024-01-29
 */
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/vaccine/preCheck")
public class YmPreCheckController extends BaseController {

    private final IYmPreCheckService iYmPreCheckService;

    private final YmUserMapper userMapper;
    private final YmAppointMapper appointMapper;
    private final YmWorkerMapper workerMapper;

    private final YmPlanMapper planMapper;
    private final YmInoculateSiteMapper siteMapper;
    /**
     * 查询预检信息查询列表
     */
    @SaCheckPermission("vaccine:preCheck:list")
    @GetMapping("/list")
    public TableDataInfo<YmPreCheckVo> list(YmPreCheckBo bo, PageQuery pageQuery) {


        TableDataInfo<YmPreCheckVo> data = iYmPreCheckService.queryPageList(bo, pageQuery);
        List<YmPreCheckVo> dataList = data.getRows();
        dataList = dataList.stream().map(item ->{

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
     * 导出预检信息查询列表
     */
    @SaCheckPermission("vaccine:preCheck:export")
    @Log(title = "预检信息查询", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(YmPreCheckBo bo, HttpServletResponse response) {
        List<YmPreCheckVo> list = iYmPreCheckService.queryList(bo);
        ExcelUtil.exportExcel(list, "预检信息查询", YmPreCheckVo.class, response);
    }

    /**
     * 获取预检信息查询详细信息
     *
     * @param id 主键
     */
    @SaCheckPermission("vaccine:preCheck:query")
    @GetMapping("/{id}")
    public R<YmPreCheckVo> getInfo(@NotNull(message = "主键不能为空")
                                     @PathVariable Long id) {
        return R.ok(iYmPreCheckService.queryById(id));
    }

    /**
     * 新增预检信息查询
     */
    @SaCheckPermission("vaccine:preCheck:add")
    @Log(title = "预检信息查询", businessType = BusinessType.INSERT)
    @RepeatSubmit()
    @PostMapping()
    public R<Void> add(@Validated(AddGroup.class) @RequestBody YmPreCheckBo bo) {
        return toAjax(iYmPreCheckService.insertByBo(bo));
    }

    /**
     * 修改预检信息查询
     */
    @SaCheckPermission("vaccine:preCheck:edit")
    @Log(title = "预检信息查询", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody YmPreCheckBo bo) {
        return toAjax(iYmPreCheckService.updateByBo(bo));
    }

    /**
     * 删除预检信息查询
     *
     * @param ids 主键串
     */
    @SaCheckPermission("vaccine:preCheck:remove")
    @Log(title = "预检信息查询", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public R<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Long[] ids) {
        return toAjax(iYmPreCheckService.deleteWithValidByIds(Arrays.asList(ids), true));
    }
}
