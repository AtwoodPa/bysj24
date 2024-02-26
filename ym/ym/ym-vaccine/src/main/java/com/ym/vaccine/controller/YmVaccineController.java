package com.ym.vaccine.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.Arrays;
import java.util.UUID;

import cn.dev33.satoken.annotation.SaIgnore;
import com.ym.vaccine.domain.common.Result;
import com.ym.vaccine.domain.vo.YmVaccineStockVo;
import com.ym.vaccine.domain.vo.YmVaccineVo;
import com.ym.vaccine.service.IYmVaccineService;
import com.ym.vaccine.service.IYmVaccineStockService;
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

import com.ym.vaccine.domain.bo.YmVaccineBo;

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
public class YmVaccineController extends BaseController {

    private final IYmVaccineService iYmVaccineService;
    @Value("${upload.image.vaccineImage.url}")
    private String uploadImageVaccineImageUrl;

    private final IYmVaccineStockService iYmVaccineStockService;

    /**
     * 查询疫苗信息列表
     */
    @GetMapping("/list")
    @SaIgnore
    public TableDataInfo<YmVaccineVo> list(YmVaccineBo bo, PageQuery pageQuery) {
        return iYmVaccineService.queryPageList(bo, pageQuery);
    }

    @GetMapping("/vaccineBySiteId/{id}")
    @SaIgnore
    public R vaccineBySiteId(@NotNull(message = "接种点id不能为空") @PathVariable("id") Long siteId) {
        List<YmVaccineVo> result = new ArrayList<>();
        List<YmVaccineStockVo> resultStock = iYmVaccineStockService.vaccineBySiteId(siteId);
        // 根据站点id查询所有疫苗
        resultStock.forEach(stock -> {
            YmVaccineVo vaccine = iYmVaccineService.queryById(stock.getVaccineId());
            vaccine.setAmount(stock.getSiteAmount());
            result.add(vaccine);
        });
        return R.ok( result);
    }

    @SaIgnore
    @GetMapping("/findAll")
    public Result findAll() {
        return Result.ok(iYmVaccineService.list(), "查询成功");
    }

    @SaIgnore
    @PostMapping("/vaccineImage/upload")
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
    @Log(title = "疫苗信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(YmVaccineBo bo, HttpServletResponse response) {
        List<YmVaccineVo> list = iYmVaccineService.queryList(bo);
        ExcelUtil.exportExcel(list, "疫苗信息", YmVaccineVo.class, response);
    }

    /**
     * 获取疫苗信息详细信息
     *
     * @param id 主键
     */
    @GetMapping("/{id}")
    @SaIgnore
    public R<YmVaccineVo> getInfo(@NotNull(message = "主键不能为空")
                                  @PathVariable Long id) {
        return R.ok(iYmVaccineService.queryById(id));
    }

    /**
     * 新增疫苗信息
     */
    @Log(title = "疫苗信息", businessType = BusinessType.INSERT)
    @RepeatSubmit()
    @PostMapping()
    public R<Void> add(@Validated(AddGroup.class) @RequestBody YmVaccineBo bo) {
        return toAjax(iYmVaccineService.insertByBo(bo));
    }

    /**
     * 修改疫苗信息
     */
    @Log(title = "疫苗信息", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody YmVaccineBo bo) {
        return toAjax(iYmVaccineService.updateByBo(bo));
    }

    /**
     * 删除疫苗信息
     *
     * @param ids 主键串
     */
    @Log(title = "疫苗信息", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public R<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Long[] ids) {
        return toAjax(iYmVaccineService.deleteWithValidByIds(Arrays.asList(ids), true));
    }
}
