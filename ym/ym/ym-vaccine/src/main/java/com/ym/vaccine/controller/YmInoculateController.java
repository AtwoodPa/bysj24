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
import com.ym.vaccine.domain.vo.YmInoculateVo;
import com.ym.vaccine.domain.bo.YmInoculateBo;
import com.ym.vaccine.service.IYmInoculateService;
import com.ym.common.core.page.TableDataInfo;

/**
 * 疫苗接种记录
 *
 * @author ym
 * @date 2024-01-29
 */
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/vaccine/inoculate")
public class YmInoculateController extends BaseController {

    private final IYmInoculateService iYmInoculateService;
    private final YmWorkerMapper workerMapper;
    private final YmInoculateSiteMapper siteMapper;
    private final YmPlanMapper planMapper;
    private final YmUserMapper userMapper;
    private final YmAppointMapper appointMapper;
    private final VaccineMapper vaccineMapper;

    /**
     * 查询疫苗接种记录列表
     */
    @SaCheckPermission("vaccine:inoculate:list")
    @GetMapping("/list")
    public TableDataInfo<YmInoculateVo> list(YmInoculateBo bo, PageQuery pageQuery) {
        TableDataInfo<YmInoculateVo> data = iYmInoculateService.queryPageList(bo, pageQuery);
        List<YmInoculateVo> dataList = data.getRows();
        dataList = dataList.stream().map(item -> {
            item.setRealName(userMapper.selectById(appointMapper.selectById(item.getAppointId()).getUserId()).getRealName());
            item.setWorkerName(workerMapper.selectById(item.getWorkerId()).getRealName());
            item.setSiteName(siteMapper.selectById(planMapper.selectById(appointMapper.selectById(item.getAppointId()).getPlanId()).getInoculateSiteId()).getName());
            item.setVaccineName(vaccineMapper.selectById(planMapper.selectById(appointMapper.selectById(item.getAppointId()).getPlanId()).getVaccineId()).getName());
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
     * 导出疫苗接种记录列表
     */
    @SaCheckPermission("vaccine:inoculate:export")
    @Log(title = "疫苗接种记录", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(YmInoculateBo bo, HttpServletResponse response) {
        List<YmInoculateVo> list = iYmInoculateService.queryList(bo);
        ExcelUtil.exportExcel(list, "疫苗接种记录", YmInoculateVo.class, response);
    }

    /**
     * 获取疫苗接种记录详细信息
     *
     * @param id 主键
     */
    @SaCheckPermission("vaccine:inoculate:query")
    @GetMapping("/{id}")
    public R<YmInoculateVo> getInfo(@NotNull(message = "主键不能为空")
                                     @PathVariable Long id) {
        return R.ok(iYmInoculateService.queryById(id));
    }

    /**
     * 新增疫苗接种记录
     */
    @SaCheckPermission("vaccine:inoculate:add")
    @Log(title = "疫苗接种记录", businessType = BusinessType.INSERT)
    @RepeatSubmit()
    @PostMapping()
    public R<Void> add(@Validated(AddGroup.class) @RequestBody YmInoculateBo bo) {
        return toAjax(iYmInoculateService.insertByBo(bo));
    }

    /**
     * 修改疫苗接种记录
     */
    @SaCheckPermission("vaccine:inoculate:edit")
    @Log(title = "疫苗接种记录", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody YmInoculateBo bo) {
        return toAjax(iYmInoculateService.updateByBo(bo));
    }

    /**
     * 删除疫苗接种记录
     *
     * @param ids 主键串
     */
    @SaCheckPermission("vaccine:inoculate:remove")
    @Log(title = "疫苗接种记录", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public R<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Long[] ids) {
        return toAjax(iYmInoculateService.deleteWithValidByIds(Arrays.asList(ids), true));
    }
}
