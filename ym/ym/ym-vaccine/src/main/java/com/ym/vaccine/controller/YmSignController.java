package com.ym.vaccine.controller;

import java.util.List;
import java.util.Arrays;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;

import com.ym.common.utils.StringUtils;
import com.ym.vaccine.domain.YmUser;
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
import com.ym.vaccine.domain.vo.YmSignVo;
import com.ym.vaccine.domain.bo.YmSignBo;
import com.ym.vaccine.service.IYmSignService;
import com.ym.common.core.page.TableDataInfo;

/**
 * 接种签到
 *
 * @author ym
 * @date 2024-01-29
 */
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/vaccine/sign")
public class YmSignController extends BaseController {

    private final IYmSignService iYmSignService;
    private final YmUserMapper userMapper;
    private final YmAppointMapper appointMapper;
    private final YmWorkerMapper workerMapper;
    private final YmPlanMapper planMapper;
    private final YmInoculateSiteMapper siteMapper;

    /**
     * 查询接种签到列表
     */
    @SaCheckPermission("vaccine:sign:list")
    @GetMapping("/list")
    public TableDataInfo<YmSignVo> list(YmSignBo bo, PageQuery pageQuery) {
        TableDataInfo<YmSignVo> data = iYmSignService.queryPageList(bo, pageQuery);
        List<YmSignVo> dataList = data.getRows();
        List<YmSignVo> resultData = dataList.stream().map(item -> {

            item.setRealName(userMapper.selectById(appointMapper.selectById(item.getAppointId()).getUserId()).getRealName());
            item.setWorkerName(workerMapper.selectById(item.getWorkerId()).getRealName());
            item.setSiteName(siteMapper.selectById(planMapper.selectById(appointMapper.selectById(item.getAppointId()).getPlanId()).getInoculateSiteId()).getName());
            return item;
        }).collect(Collectors.toList());
        if (StringUtils.isNotBlank(bo.getRealName())){
            // 只保留realName匹配的数据
            resultData = resultData.stream().filter(item->item.getRealName().equals(bo.getRealName())).collect(Collectors.toList());
        }
        data.setRows(resultData);
        return data;
    }

    /**
     * 导出接种签到列表
     */
    @SaCheckPermission("vaccine:sign:export")
    @Log(title = "接种签到", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(YmSignBo bo, HttpServletResponse response) {
        List<YmSignVo> list = iYmSignService.queryList(bo);
        ExcelUtil.exportExcel(list, "接种签到", YmSignVo.class, response);
    }

    /**
     * 获取接种签到详细信息
     *
     * @param id 主键
     */
    @SaCheckPermission("vaccine:sign:query")
    @GetMapping("/{id}")
    public R<YmSignVo> getInfo(@NotNull(message = "主键不能为空")
                                     @PathVariable Long id) {
        return R.ok(iYmSignService.queryById(id));
    }

    /**
     * 新增接种签到
     */
    @SaCheckPermission("vaccine:sign:add")
    @Log(title = "接种签到", businessType = BusinessType.INSERT)
    @RepeatSubmit()
    @PostMapping()
    public R<Void> add(@Validated(AddGroup.class) @RequestBody YmSignBo bo) {
        return toAjax(iYmSignService.insertByBo(bo));
    }

    /**
     * 修改接种签到
     */
    @SaCheckPermission("vaccine:sign:edit")
    @Log(title = "接种签到", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody YmSignBo bo) {
        return toAjax(iYmSignService.updateByBo(bo));
    }

    /**
     * 删除接种签到
     *
     * @param ids 主键串
     */
    @SaCheckPermission("vaccine:sign:remove")
    @Log(title = "接种签到", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public R<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Long[] ids) {
        return toAjax(iYmSignService.deleteWithValidByIds(Arrays.asList(ids), true));
    }
}
