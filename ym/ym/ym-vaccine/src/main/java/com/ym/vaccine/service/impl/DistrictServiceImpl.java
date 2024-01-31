package com.ym.vaccine.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ym.vaccine.domain.District;
import com.ym.vaccine.mapper.DistrictMapper;
import com.ym.vaccine.service.DistrictService;
import org.springframework.stereotype.Service;

@Service
public class DistrictServiceImpl extends ServiceImpl<DistrictMapper, District> implements DistrictService {
}
