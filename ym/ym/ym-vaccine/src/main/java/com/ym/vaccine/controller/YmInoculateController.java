package com.ym.vaccine.controller;

import java.util.List;
import java.util.Arrays;
import java.util.concurrent.TimeUnit;

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

    /**
     * 查询疫苗接种记录列表
     */
    @SaCheckPermission("vaccine:inoculate:list")
    @GetMapping("/list")
    public TableDataInfo<YmInoculateVo> list(YmInoculateBo bo, PageQuery pageQuery) {
        return iYmInoculateService.queryPageList(bo, pageQuery);
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
