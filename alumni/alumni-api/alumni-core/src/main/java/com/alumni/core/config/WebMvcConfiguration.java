package com.alumni.core.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets;

/**
 * 静态资源文件映射
 *
 * @author supanpan
 * @date 2024/01/31
 */
@Configuration
public class WebMvcConfiguration implements WebMvcConfigurer {


    @Value("${upload.image.image.url}")
    private String uploadImageUrl;



    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        try {
            //application.properties有中文需要转码

            uploadImageUrl = new String(uploadImageUrl.getBytes("iso8859-1"), StandardCharsets.UTF_8);

        } catch (UnsupportedEncodingException e) {
            System.out.println("字符转码异常！");
            e.printStackTrace();
        }
        registry.addResourceHandler("/image/**").addResourceLocations("file:" + uploadImageUrl);


    }
}
