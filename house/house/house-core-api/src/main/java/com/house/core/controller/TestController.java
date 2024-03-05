package com.house.core.controller;

import cn.dev33.satoken.annotation.SaIgnore;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author supanpan
 * @date 2024/03/05
 */
@RestController
@RequestMapping("/test")
public class TestController {
    @SaIgnore
    @RequestMapping("/test")
    public String test() {
        return "Hello world!";
    }
}
