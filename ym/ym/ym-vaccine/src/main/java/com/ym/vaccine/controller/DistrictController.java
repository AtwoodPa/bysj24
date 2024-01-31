package com.ym.vaccine.controller;

import cn.dev33.satoken.annotation.SaIgnore;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.ym.vaccine.domain.District;
import com.ym.vaccine.domain.common.Result;
import com.ym.vaccine.service.DistrictService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author supanpan
 * @date 2024/01/31
 */
@RestController
@RequestMapping("/district")
public class DistrictController {
    @Autowired
    private DistrictService districtService;

    @SaIgnore
    @GetMapping("/findAllProvinces")
    public Result findAllProvinces(){
        QueryWrapper<District> districtQueryWrapper = new QueryWrapper<>();
        districtQueryWrapper.eq("parent", 86);
        List<District> list = districtService.list(districtQueryWrapper);
        return Result.ok(list, "查询成功");
    }
    @SaIgnore
    @GetMapping("/findAllCities")
    public Result findAllCities(String code){
        QueryWrapper<District> districtQueryWrapper = new QueryWrapper<>();
        districtQueryWrapper.eq("parent", code);
        List<District> list = districtService.list(districtQueryWrapper);
        return Result.ok(list, "查询成功");
    }
    @SaIgnore
    @GetMapping("/findAllDistricts")
    public Result findAllDistricts(String code){
        QueryWrapper<District> districtQueryWrapper = new QueryWrapper<>();
        districtQueryWrapper.eq("parent", code);
        List<District> list = districtService.list(districtQueryWrapper);
        return Result.ok(list, "查询成功");
    }
}
