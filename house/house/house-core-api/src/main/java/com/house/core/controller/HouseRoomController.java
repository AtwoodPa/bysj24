package com.house.core.controller;

import java.util.List;
import java.util.Arrays;
import java.util.concurrent.TimeUnit;

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
import com.house.core.domain.vo.HouseRoomVo;
import com.house.core.domain.bo.HouseRoomBo;
import com.house.core.service.IHouseRoomService;
import com.house.common.core.page.TableDataInfo;

/**
 * 房源管理
 *
 * @author house
 * @date 2024-03-05
 */
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/core/room")
public class HouseRoomController extends BaseController {

    private final IHouseRoomService iHouseRoomService;

    /**
     * 查询房源管理列表
     */
    @SaCheckPermission("core:room:list")
    @GetMapping("/list")
    public TableDataInfo<HouseRoomVo> list(HouseRoomBo bo, PageQuery pageQuery) {
        return iHouseRoomService.queryPageList(bo, pageQuery);
    }

    /**
     * 导出房源管理列表
     */
    @SaCheckPermission("core:room:export")
    @Log(title = "房源管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HouseRoomBo bo, HttpServletResponse response) {
        List<HouseRoomVo> list = iHouseRoomService.queryList(bo);
        ExcelUtil.exportExcel(list, "房源管理", HouseRoomVo.class, response);
    }

    /**
     * 获取房源管理详细信息
     *
     * @param id 主键
     */
    @SaCheckPermission("core:room:query")
    @GetMapping("/{id}")
    public R<HouseRoomVo> getInfo(@NotNull(message = "主键不能为空")
                                     @PathVariable Long id) {
        return R.ok(iHouseRoomService.queryById(id));
    }

    /**
     * 新增房源管理
     */
    @SaCheckPermission("core:room:add")
    @Log(title = "房源管理", businessType = BusinessType.INSERT)
    @RepeatSubmit()
    @PostMapping()
    public R<Void> add(@Validated(AddGroup.class) @RequestBody HouseRoomBo bo) {
        return toAjax(iHouseRoomService.insertByBo(bo));
    }

    /**
     * 修改房源管理
     */
    @SaCheckPermission("core:room:edit")
    @Log(title = "房源管理", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody HouseRoomBo bo) {
        return toAjax(iHouseRoomService.updateByBo(bo));
    }

    /**
     * 删除房源管理
     *
     * @param ids 主键串
     */
    @SaCheckPermission("core:room:remove")
    @Log(title = "房源管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public R<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Long[] ids) {
        return toAjax(iHouseRoomService.deleteWithValidByIds(Arrays.asList(ids), true));
    }
}
