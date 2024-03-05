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
import com.house.core.domain.vo.HouseVillageVo;
import com.house.core.domain.bo.HouseVillageBo;
import com.house.core.service.IHouseVillageService;
import com.house.common.core.page.TableDataInfo;

/**
 * 小区管理
 *
 * @author house
 * @date 2024-03-05
 */
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/core/village")
public class HouseVillageController extends BaseController {

    private final IHouseVillageService iHouseVillageService;

    /**
     * 查询小区管理列表
     */
    @SaIgnore
    @GetMapping("/list")
    public TableDataInfo<HouseVillageVo> list(HouseVillageBo bo, PageQuery pageQuery) {
        return iHouseVillageService.queryPageList(bo, pageQuery);
    }

    /**
     * 导出小区管理列表
     */
    @SaIgnore
    @Log(title = "小区管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HouseVillageBo bo, HttpServletResponse response) {
        List<HouseVillageVo> list = iHouseVillageService.queryList(bo);
        ExcelUtil.exportExcel(list, "小区管理", HouseVillageVo.class, response);
    }

    /**
     * 获取小区管理详细信息
     *
     * @param id 主键
     */
    @SaIgnore
    @GetMapping("/{id}")
    public R<HouseVillageVo> getInfo(@NotNull(message = "主键不能为空")
                                     @PathVariable Long id) {
        return R.ok(iHouseVillageService.queryById(id));
    }

    /**
     * 新增小区管理
     */
    @SaIgnore
    @Log(title = "小区管理", businessType = BusinessType.INSERT)
    @RepeatSubmit()
    @PostMapping()
    public R<Void> add(@Validated(AddGroup.class) @RequestBody HouseVillageBo bo) {
        return toAjax(iHouseVillageService.insertByBo(bo));
    }

    /**
     * 修改小区管理
     */
    @SaIgnore
    @Log(title = "小区管理", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody HouseVillageBo bo) {
        return toAjax(iHouseVillageService.updateByBo(bo));
    }

    /**
     * 删除小区管理
     *
     * @param ids 主键串
     */
    @SaIgnore
    @Log(title = "小区管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public R<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Long[] ids) {
        return toAjax(iHouseVillageService.deleteWithValidByIds(Arrays.asList(ids), true));
    }
}
