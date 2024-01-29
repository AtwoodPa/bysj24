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
import com.ym.vaccine.domain.vo.YmUserVo;
import com.ym.vaccine.domain.bo.YmUserBo;
import com.ym.vaccine.service.IYmUserService;
import com.ym.common.core.page.TableDataInfo;

/**
 * 疫苗预约用户
 *
 * @author ym
 * @date 2024-01-29
 */
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/vaccine/user")
public class YmUserController extends BaseController {

    private final IYmUserService iYmUserService;

    /**
     * 查询疫苗预约用户列表
     */
    @SaCheckPermission("vaccine:ym_user:list")
    @GetMapping("/list")
    public TableDataInfo<YmUserVo> list(YmUserBo bo, PageQuery pageQuery) {
        return iYmUserService.queryPageList(bo, pageQuery);
    }

    /**
     * 导出疫苗预约用户列表
     */
    @SaCheckPermission("vaccine:ym_user:export")
    @Log(title = "疫苗预约用户", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(YmUserBo bo, HttpServletResponse response) {
        List<YmUserVo> list = iYmUserService.queryList(bo);
        ExcelUtil.exportExcel(list, "疫苗预约用户", YmUserVo.class, response);
    }

    /**
     * 获取疫苗预约用户详细信息
     *
     * @param id 主键
     */
    @SaCheckPermission("vaccine:ym_user:query")
    @GetMapping("/{id}")
    public R<YmUserVo> getInfo(@NotNull(message = "主键不能为空")
                                     @PathVariable Long id) {
        return R.ok(iYmUserService.queryById(id));
    }

    /**
     * 新增疫苗预约用户
     */
    @SaCheckPermission("vaccine:ym_user:add")
    @Log(title = "疫苗预约用户", businessType = BusinessType.INSERT)
    @RepeatSubmit()
    @PostMapping()
    public R<Void> add(@Validated(AddGroup.class) @RequestBody YmUserBo bo) {
        return toAjax(iYmUserService.insertByBo(bo));
    }

    /**
     * 修改疫苗预约用户
     */
    @SaCheckPermission("vaccine:ym_user:edit")
    @Log(title = "疫苗预约用户", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody YmUserBo bo) {
        return toAjax(iYmUserService.updateByBo(bo));
    }

    /**
     * 删除疫苗预约用户
     *
     * @param ids 主键串
     */
    @SaCheckPermission("vaccine:ym_user:remove")
    @Log(title = "疫苗预约用户", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public R<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Long[] ids) {
        return toAjax(iYmUserService.deleteWithValidByIds(Arrays.asList(ids), true));
    }
}
