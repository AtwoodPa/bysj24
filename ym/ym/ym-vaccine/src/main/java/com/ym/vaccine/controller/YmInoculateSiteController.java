package com.ym.vaccine.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.Arrays;
import java.util.UUID;

import cn.dev33.satoken.annotation.SaIgnore;

import com.ym.vaccine.domain.common.Result;
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
import com.ym.vaccine.domain.vo.YmInoculateSiteVo;
import com.ym.vaccine.domain.bo.YmInoculateSiteBo;
import com.ym.vaccine.service.IYmInoculateSiteService;
import com.ym.common.core.page.TableDataInfo;
import org.springframework.web.multipart.MultipartFile;

/**
 * 疫苗接种站点管理
 *
 * @author ym
 * @date 2024-01-29
 */
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/vaccine/inoculateSite")
public class YmInoculateSiteController extends BaseController {

    private final IYmInoculateSiteService iYmInoculateSiteService;
    @Value("${upload.image.inoculateSiteImage.url}")
    private String uploadImageInoculateSiteImageUrl;

    /**
     * 查询疫苗接种站点管理列表
     */
//    @SaCheckPermission("vaccine:inoculateSite:list")
    @GetMapping("/list")
    @SaIgnore
    public TableDataInfo<YmInoculateSiteVo> list(YmInoculateSiteBo bo, PageQuery pageQuery) {
        return iYmInoculateSiteService.queryPageList(bo, pageQuery);
    }

    /**
     * 导出疫苗接种站点管理列表
     */
    @SaCheckPermission("vaccine:inoculateSite:export")
    @Log(title = "疫苗接种站点管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(YmInoculateSiteBo bo, HttpServletResponse response) {
        List<YmInoculateSiteVo> list = iYmInoculateSiteService.queryList(bo);
        ExcelUtil.exportExcel(list, "疫苗接种站点管理", YmInoculateSiteVo.class, response);
    }

    /**
     * 获取疫苗接种站点管理详细信息
     *
     * @param id 主键
     */
//    @SaCheckPermission("vaccine:inoculateSite:query")
    @GetMapping("/{id}")
    @SaIgnore
    public R<YmInoculateSiteVo> getInfo(@NotNull(message = "主键不能为空")
                                        @PathVariable Long id) {
        return R.ok(iYmInoculateSiteService.queryById(id));
    }

    /**
     * 新增疫苗接种站点管理
     */
    @SaCheckPermission("vaccine:inoculateSite:add")
    @Log(title = "疫苗接种站点管理", businessType = BusinessType.INSERT)
    @RepeatSubmit()
    @PostMapping()
    public R<Void> add(@Validated(AddGroup.class) @RequestBody YmInoculateSiteBo bo) {
        return toAjax(iYmInoculateSiteService.insertByBo(bo));
    }

    @SaIgnore
    @PostMapping("/inoculateSiteImage/upload")
    public Result uploadInoculateSiteImage(@RequestParam("file") MultipartFile imgFile) {
        try {
            uploadImageInoculateSiteImageUrl = new String(uploadImageInoculateSiteImageUrl.getBytes("iso8859-1"), StandardCharsets.UTF_8);
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
        File dest = new File(uploadImageInoculateSiteImageUrl + "/" + fileName);
        try {
            imgFile.transferTo(dest);
        } catch (IOException e) {
            return Result.error("图片上传失败");
        }
        return Result.ok(fileName, "上传成功");
    }

    /**
     * 修改疫苗接种站点管理
     */
    @SaCheckPermission("vaccine:inoculateSite:edit")
    @Log(title = "疫苗接种站点管理", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody YmInoculateSiteBo bo) {
        return toAjax(iYmInoculateSiteService.updateByBo(bo));
    }

    /**
     * 删除疫苗接种站点管理
     *
     * @param ids 主键串
     */
    @SaCheckPermission("vaccine:inoculateSite:remove")
    @Log(title = "疫苗接种站点管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public R<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Long[] ids) {
        return toAjax(iYmInoculateSiteService.deleteWithValidByIds(Arrays.asList(ids), true));
    }
}
