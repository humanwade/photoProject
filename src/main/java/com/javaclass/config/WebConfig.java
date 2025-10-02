package com.javaclass.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
@EnableWebMvc
public class WebConfig implements WebMvcConfigurer {

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {

        // 실제 로컬 저장 경로 (윈도우 기준)
        registry.addResourceHandler("/resources/upload/**")
                .addResourceLocations("file:///D:/my-photo-storage/");
    }
}
