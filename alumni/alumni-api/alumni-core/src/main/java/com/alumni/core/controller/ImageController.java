package com.alumni.core.controller;

import cn.dev33.satoken.annotation.SaIgnore;
import com.alumni.common.core.domain.R;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets;
import java.util.UUID;

/**
 * 图片上传接口
 *
 * @author supanpan
 * @date 2024/03/02
 */
@RestController
@RequestMapping("/core/core")
public class ImageController {
    @Value("${upload.image.image.url}")
    private String uploadImageUrl;

    @SaIgnore
    @PostMapping("/image/upload")
    public R uploadVaccineImage(@RequestParam("file") MultipartFile imgFile) {
        try {
            uploadImageUrl = new String(uploadImageUrl.getBytes("iso8859-1"), StandardCharsets.UTF_8);
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("字符转码异常！");
        }

        if (imgFile == null) {
            return R.fail("图片为空");
        }
        String fileName = imgFile.getOriginalFilename();
        if (StringUtils.isBlank(fileName)) {
            return R.fail("文件名不能为空");
        }
        int index = fileName.lastIndexOf(".");
        if (index == -1) {
            return R.fail("文件后缀不能为空");
        }
        String suffix = fileName.substring(index);
        if (StringUtils.isBlank(suffix) || (!".png".equals(suffix) && !".jpg".equals(suffix) && !".jpeg".equals(suffix))) {
            return R.fail("文件格式不正确");
        }
        fileName = UUID.randomUUID().toString().replace("-", "") + suffix;
        File dest = new File(uploadImageUrl + "/" + fileName);
        try {
            imgFile.transferTo(dest);
        } catch (IOException e) {
            return R.fail("图片上传失败");
        }
        return R.ok("上传成功", fileName);
    }
}
