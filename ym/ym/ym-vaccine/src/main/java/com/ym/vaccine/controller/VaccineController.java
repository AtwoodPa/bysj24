package com.ym.vaccine.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.Arrays;
import java.util.UUID;

import cn.dev33.satoken.annotation.SaIgnore;
import com.ym.vaccine.annotation.PassToken;
import com.ym.vaccine.domain.Vaccine;
import com.ym.vaccine.domain.common.Result;
import com.ym.vaccine.domain.vo.VaccineVo;
import com.ym.vaccine.service.IVaccineService;
import lombok.RequiredArgsConstructor;
import javax.servlet.http.HttpServletResponse;
import javax.validation.constraints.*;
import cn.dev33.satoken.annotation.SaCheckPermission;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.*;
import org.springframework.validation.annotation.Validated;
import com.ym.common.annotation.RepeatSubmit;
import com.ym.common.annotation.Log;
import com.ym.common.core.controller.BaseController;
import com.ym.common.core.domain.PageQuery;
import com.ym.common.core.domain.R;
import com.ym.common.core.validate.AddGroup;
import com.ym.common.core.validate.EditGroup;
import com.ym.common.enums.BusinessType;
import com.ym.common.utils.poi.ExcelUtil;

import com.ym.vaccine.domain.bo.VaccineBo;

import com.ym.common.core.page.TableDataInfo;
import org.springframework.web.multipart.MultipartFile;

/**
 * 疫苗信息
 *
 * @author ym
 * @date 2024-01-29
 */
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/vaccine/vaccine")
public class VaccineController extends BaseController {

    private final IVaccineService iVaccineService;
    @Value("${upload.image.vaccineImage.url}")
    private String uploadImageVaccineImageUrl;

    /**
     * 查询疫苗信息列表
     */
    @SaCheckPermission("vaccine:vaccine:list")
    @GetMapping("/list")
    public TableDataInfo<VaccineVo> list(VaccineBo bo, PageQuery pageQuery) {
        return iVaccineService.queryPageList(bo, pageQuery);
    }
    @SaIgnore
    @GetMapping("/findAll")
    public Result findAll() {
        return Result.ok(iVaccineService.list(),"查询成功");
    }
    @SaIgnore
    @PostMapping("/vaccineImage/upload")
    @PassToken(required = false)
    public Result uploadVaccineImage(@RequestParam("file") MultipartFile imgFile) {
        try {
            uploadImageVaccineImageUrl = new String(uploadImageVaccineImageUrl.getBytes("iso8859-1"), StandardCharsets.UTF_8);
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("字符转码异常！");
        }

        if (imgFile == null) {
            return Result.error("图片为空");
        }
        String fileName = imgFile.getOriginalFilename();
        if (StringUtils.isBlank(fileName)) {
            return Result.error("文件名不能为空");
        }
        int index = fileName.lastIndexOf(".");
        if (index == -1) {
            return Result.error("文件后缀不能为空");
        }
        String suffix = fileName.substring(index);
        if (StringUtils.isBlank(suffix) || (!".png".equals(suffix) && !".jpg".equals(suffix) && !".jpeg".equals(suffix))) {
            return Result.error("文件格式不正确");
        }
        fileName = UUID.randomUUID().toString().replace("-", "") + suffix;
        File dest = new File(uploadImageVaccineImageUrl + "/" + fileName);
        try {
            imgFile.transferTo(dest);
        } catch (IOException e) {
            return Result.error("图片上传失败");
        }
        return Result.ok(fileName, "上传成功");
    }
    /**
     * 导出疫苗信息列表
     */
    @SaCheckPermission("vaccine:vaccine:export")
    @Log(title = "疫苗信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(VaccineBo bo, HttpServletResponse response) {
        List<VaccineVo> list = iVaccineService.queryList(bo);
        ExcelUtil.exportExcel(list, "疫苗信息", VaccineVo.class, response);
    }

    /**
     * 获取疫苗信息详细信息
     *
     * @param id 主键
     */
    @SaCheckPermission("vaccine:vaccine:query")
    @GetMapping("/{id}")
    public R<VaccineVo> getInfo(@NotNull(message = "主键不能为空")
                                     @PathVariable Long id) {
        return R.ok(iVaccineService.queryById(id));
    }

    /**
     * 新增疫苗信息
     */
    @SaCheckPermission("vaccine:vaccine:add")
    @Log(title = "疫苗信息", businessType = BusinessType.INSERT)
    @RepeatSubmit()
    @PostMapping()
    public R<Void> add(@Validated(AddGroup.class) @RequestBody VaccineBo bo) {
        return toAjax(iVaccineService.insertByBo(bo));
    }

    /**
     * 修改疫苗信息
     */
    @SaCheckPermission("vaccine:vaccine:edit")
    @Log(title = "疫苗信息", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody VaccineBo bo) {
        return toAjax(iVaccineService.updateByBo(bo));
    }

    /**
     * 删除疫苗信息
     *
     * @param ids 主键串
     */
    @SaCheckPermission("vaccine:vaccine:remove")
    @Log(title = "疫苗信息", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public R<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Long[] ids) {
        return toAjax(iVaccineService.deleteWithValidByIds(Arrays.asList(ids), true));
    }
}
