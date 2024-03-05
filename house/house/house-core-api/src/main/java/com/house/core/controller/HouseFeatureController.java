package com.house.core.controller;

import java.util.List;
import java.util.Arrays;
import java.util.concurrent.TimeUnit;

import cn.dev33.satoken.annotation.SaIgnore;
import lombok.RequiredArgsConstructor;
import javax.servlet.http.HttpServletResponse;
import javax.validation.constraints.*;
import cn.dev33.satoken.annotation.SaCheckPermission;
import org.springframework.web.bind.annotation.*;
import org.springframework.validation.annotation.Validated;
import com.house.common.annotation.RepeatSubmit;
import com.house.common.annotation.Log;
import com.house.common.core.controller.BaseController;
import com.house.common.core.domain.PageQuery;
import com.house.common.core.domain.R;
import com.house.common.core.validate.AddGroup;
import com.house.common.core.validate.EditGroup;
import com.house.common.core.validate.QueryGroup;
import com.house.common.enums.BusinessType;
import com.house.common.utils.poi.ExcelUtil;
import com.house.core.domain.vo.HouseFeatureVo;
import com.house.core.domain.bo.HouseFeatureBo;
import com.house.core.service.IHouseFeatureService;
import com.house.common.core.page.TableDataInfo;

/**
 * 房源特色
 *
 * @author house
 * @date 2024-03-05
 */
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/core/feature")
public class HouseFeatureController extends BaseController {

    private final IHouseFeatureService iHouseFeatureService;

    /**
     * 查询房源特色列表
     */
    @SaIgnore
    @GetMapping("/list")
    public TableDataInfo<HouseFeatureVo> list(HouseFeatureBo bo, PageQuery pageQuery) {
        return iHouseFeatureService.queryPageList(bo, pageQuery);
    }

    /**
     * 导出房源特色列表
     */
    @SaIgnore
    @Log(title = "房源特色", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HouseFeatureBo bo, HttpServletResponse response) {
        List<HouseFeatureVo> list = iHouseFeatureService.queryList(bo);
        ExcelUtil.exportExcel(list, "房源特色", HouseFeatureVo.class, response);
    }

    /**
     * 获取房源特色详细信息
     *
     * @param id 主键
     */
    @SaIgnore
    @GetMapping("/{id}")
    public R<HouseFeatureVo> getInfo(@NotNull(message = "主键不能为空")
                                     @PathVariable Long id) {
        return R.ok(iHouseFeatureService.queryById(id));
    }

    /**
     * 新增房源特色
     */
    @SaIgnore
    @Log(title = "房源特色", businessType = BusinessType.INSERT)
    @RepeatSubmit()
    @PostMapping()
    public R<Void> add(@Validated(AddGroup.class) @RequestBody HouseFeatureBo bo) {
        return toAjax(iHouseFeatureService.insertByBo(bo));
    }

    /**
     * 修改房源特色
     */
    @SaIgnore
    @Log(title = "房源特色", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody HouseFeatureBo bo) {
        return toAjax(iHouseFeatureService.updateByBo(bo));
    }

    /**
     * 删除房源特色
     *
     * @param ids 主键串
     */
    @SaIgnore
    @Log(title = "房源特色", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public R<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Long[] ids) {
        return toAjax(iHouseFeatureService.deleteWithValidByIds(Arrays.asList(ids), true));
    }
}
