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
import com.house.core.domain.vo.HouseHeartVo;
import com.house.core.domain.bo.HouseHeartBo;
import com.house.core.service.IHouseHeartService;
import com.house.common.core.page.TableDataInfo;

/**
 * 房屋收藏
 *
 * @author house
 * @date 2024-03-05
 */
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/core/heart")
public class HouseHeartController extends BaseController {

    private final IHouseHeartService iHouseHeartService;

    /**
     * 查询房屋收藏列表
     */
    @SaCheckPermission("core:heart:list")
    @GetMapping("/list")
    public TableDataInfo<HouseHeartVo> list(HouseHeartBo bo, PageQuery pageQuery) {
        return iHouseHeartService.queryPageList(bo, pageQuery);
    }

    /**
     * 导出房屋收藏列表
     */
    @SaIgnore
    @Log(title = "房屋收藏", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HouseHeartBo bo, HttpServletResponse response) {
        List<HouseHeartVo> list = iHouseHeartService.queryList(bo);
        ExcelUtil.exportExcel(list, "房屋收藏", HouseHeartVo.class, response);
    }

    /**
     * 获取房屋收藏详细信息
     *
     * @param id 主键
     */
    @SaIgnore
    @GetMapping("/{id}")
    public R<HouseHeartVo> getInfo(@NotNull(message = "主键不能为空")
                                     @PathVariable Long id) {
        return R.ok(iHouseHeartService.queryById(id));
    }

    /**
     * 新增房屋收藏
     */
    @SaIgnore
    @Log(title = "房屋收藏", businessType = BusinessType.INSERT)
    @RepeatSubmit()
    @PostMapping()
    public R<Void> add(@Validated(AddGroup.class) @RequestBody HouseHeartBo bo) {
        return toAjax(iHouseHeartService.insertByBo(bo));
    }

    /**
     * 修改房屋收藏
     */
    @SaIgnore
    @Log(title = "房屋收藏", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody HouseHeartBo bo) {
        return toAjax(iHouseHeartService.updateByBo(bo));
    }

    /**
     * 删除房屋收藏
     *
     * @param ids 主键串
     */
    @SaIgnore
    @Log(title = "房屋收藏", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public R<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Long[] ids) {
        return toAjax(iHouseHeartService.deleteWithValidByIds(Arrays.asList(ids), true));
    }
}
