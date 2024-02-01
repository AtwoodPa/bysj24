package com.ym.vaccine.config;

import com.ym.vaccine.interceptor.UserJwtAuthInterceptor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * 接种者拦截器 - 客户端
 *
 * @author supanpan
 * @date 2024/01/31
 */
@Configuration
public class UserJwtInterceptorConfig implements WebMvcConfigurer {
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        InterceptorRegistration registration = registry.addInterceptor(userJwtAuthInterceptor());
        registration.addPathPatterns("/vaccine/user/**");
        registration.excludePathPatterns("/vaccine/user/login", "/vaccine/user/save");
    }

    @Bean
    public UserJwtAuthInterceptor userJwtAuthInterceptor() {
        return new UserJwtAuthInterceptor();
    }
}
