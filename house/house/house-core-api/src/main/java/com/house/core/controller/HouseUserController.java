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
import com.house.core.domain.vo.HouseUserVo;
import com.house.core.domain.bo.HouseUserBo;
import com.house.core.service.IHouseUserService;
import com.house.common.core.page.TableDataInfo;

/**
 * 出租管理
 *
 * @author house
 * @date 2024-03-05
 */
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/core/user")
public class HouseUserController extends BaseController {

    private final IHouseUserService iHouseUserService;

    /**
     * 查询出租管理列表
     */
    @SaIgnore
    @GetMapping("/list")
    public TableDataInfo<HouseUserVo> list(HouseUserBo bo, PageQuery pageQuery) {
        return iHouseUserService.queryPageList(bo, pageQuery);
    }

    /**
     * 导出出租管理列表
     */
    @SaIgnore
    @Log(title = "出租管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HouseUserBo bo, HttpServletResponse response) {
        List<HouseUserVo> list = iHouseUserService.queryList(bo);
        ExcelUtil.exportExcel(list, "出租管理", HouseUserVo.class, response);
    }

    /**
     * 获取出租管理详细信息
     *
     * @param id 主键
     */
    @SaIgnore
    @GetMapping("/{id}")
    public R<HouseUserVo> getInfo(@NotNull(message = "主键不能为空")
                                     @PathVariable Long id) {
        return R.ok(iHouseUserService.queryById(id));
    }

    /**
     * 新增出租管理
     */
    @SaIgnore
    @Log(title = "出租管理", businessType = BusinessType.INSERT)
    @RepeatSubmit()
    @PostMapping()
    public R<Void> add(@Validated(AddGroup.class) @RequestBody HouseUserBo bo) {
        return toAjax(iHouseUserService.insertByBo(bo));
    }

    /**
     * 修改出租管理
     */
    @SaIgnore
    @Log(title = "出租管理", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody HouseUserBo bo) {
        return toAjax(iHouseUserService.updateByBo(bo));
    }

    /**
     * 删除出租管理
     *
     * @param ids 主键串
     */
    @SaIgnore
    @Log(title = "出租管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public R<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Long[] ids) {
        return toAjax(iHouseUserService.deleteWithValidByIds(Arrays.asList(ids), true));
    }
}
