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
import com.house.core.domain.vo.HouseImageVo;
import com.house.core.domain.bo.HouseImageBo;
import com.house.core.service.IHouseImageService;
import com.house.common.core.page.TableDataInfo;

/**
 * 房源图片
 *
 * @author house
 * @date 2024-03-05
 */
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/core/image")
public class HouseImageController extends BaseController {

    private final IHouseImageService iHouseImageService;

    /**
     * 查询房源图片列表
     */
    @SaIgnore
    @GetMapping("/list")
    public TableDataInfo<HouseImageVo> list(HouseImageBo bo, PageQuery pageQuery) {
        return iHouseImageService.queryPageList(bo, pageQuery);
    }

    /**
     * 导出房源图片列表
     */
    @SaIgnore
    @Log(title = "房源图片", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HouseImageBo bo, HttpServletResponse response) {
        List<HouseImageVo> list = iHouseImageService.queryList(bo);
        ExcelUtil.exportExcel(list, "房源图片", HouseImageVo.class, response);
    }

    /**
     * 获取房源图片详细信息
     *
     * @param id 主键
     */
    @SaIgnore
    @GetMapping("/{id}")
    public R<HouseImageVo> getInfo(@NotNull(message = "主键不能为空")
                                     @PathVariable Long id) {
        return R.ok(iHouseImageService.queryById(id));
    }

    /**
     * 新增房源图片
     */
    @SaIgnore
    @Log(title = "房源图片", businessType = BusinessType.INSERT)
    @RepeatSubmit()
    @PostMapping()
    public R<Void> add(@Validated(AddGroup.class) @RequestBody HouseImageBo bo) {
        return toAjax(iHouseImageService.insertByBo(bo));
    }

    /**
     * 修改房源图片
     */
    @SaIgnore
    @Log(title = "房源图片", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody HouseImageBo bo) {
        return toAjax(iHouseImageService.updateByBo(bo));
    }

    /**
     * 删除房源图片
     *
     * @param ids 主键串
     */
    @SaIgnore
    @Log(title = "房源图片", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public R<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Long[] ids) {
        return toAjax(iHouseImageService.deleteWithValidByIds(Arrays.asList(ids), true));
    }
}
