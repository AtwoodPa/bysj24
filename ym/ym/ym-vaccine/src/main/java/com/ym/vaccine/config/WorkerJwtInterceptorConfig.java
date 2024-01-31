package com.ym.vaccine.config;

import com.ym.vaccine.interceptor.WorkerJwtAuthInterceptor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * @author supanpan
 * @date 2024/01/31
 */
@Configuration
public class WorkerJwtInterceptorConfig implements WebMvcConfigurer {
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        InterceptorRegistration registration = registry.addInterceptor(workerJwtAuthInterceptor());
        registration.addPathPatterns("/worker/**");
        registration.excludePathPatterns("/worker/login");
    }
    @Bean
    public WorkerJwtAuthInterceptor workerJwtAuthInterceptor() {
        return new WorkerJwtAuthInterceptor();
    }
}
