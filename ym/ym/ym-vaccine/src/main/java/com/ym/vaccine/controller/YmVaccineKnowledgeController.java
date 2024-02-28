package com.ym.vaccine.controller;

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
import com.ym.vaccine.domain.vo.YmVaccineKnowledgeVo;
import com.ym.vaccine.domain.bo.YmVaccineKnowledgeBo;
import com.ym.vaccine.service.IYmVaccineKnowledgeService;
import com.ym.common.core.page.TableDataInfo;

/**
 * 存储疫苗知识信息的
 *
 * @author ym
 * @date 2024-02-25
 */
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/vaccine/vaccineKnowledge")
public class YmVaccineKnowledgeController extends BaseController {

    private final IYmVaccineKnowledgeService iYmVaccineKnowledgeService;

    /**
     * 查询存储疫苗知识信息的列表
     */
    @SaIgnore
    @GetMapping("/list")
    public TableDataInfo<YmVaccineKnowledgeVo> list(YmVaccineKnowledgeBo bo, PageQuery pageQuery) {
        return iYmVaccineKnowledgeService.queryPageList(bo, pageQuery);
    }

    /**
     * 导出存储疫苗知识信息的列表
     */
    @SaIgnore
    @Log(title = "存储疫苗知识信息的", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(YmVaccineKnowledgeBo bo, HttpServletResponse response) {
        List<YmVaccineKnowledgeVo> list = iYmVaccineKnowledgeService.queryList(bo);
        ExcelUtil.exportExcel(list, "存储疫苗知识信息的", YmVaccineKnowledgeVo.class, response);
    }

    /**
     * 获取存储疫苗知识信息的详细信息
     *
     * @param id 主键
     */
    @SaIgnore
    @GetMapping("/{id}")
    public R<YmVaccineKnowledgeVo> getInfo(@NotNull(message = "主键不能为空") @PathVariable("id") Long id) {
        return R.ok(iYmVaccineKnowledgeService.queryById(id));
    }

    /**
     * 新增存储疫苗知识信息的
     */
    @SaIgnore
    @Log(title = "存储疫苗知识信息的", businessType = BusinessType.INSERT)
    @RepeatSubmit()
    @PostMapping()
    public R<Void> add(@Validated(AddGroup.class) @RequestBody YmVaccineKnowledgeBo bo) {
        return toAjax(iYmVaccineKnowledgeService.insertByBo(bo));
    }

    /**
     * 修改存储疫苗知识信息的
     */
    @SaIgnore
    @Log(title = "存储疫苗知识信息的", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody YmVaccineKnowledgeBo bo) {
        return toAjax(iYmVaccineKnowledgeService.updateByBo(bo));
    }

    /**
     * 删除存储疫苗知识信息的
     *
     * @param IDs 主键串
     */
    @SaIgnore
    @Log(title = "存储疫苗知识信息的", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public R<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Long[] ids) {
        return toAjax(iYmVaccineKnowledgeService.deleteWithValidByIds(Arrays.asList(ids), true));
    }
}
