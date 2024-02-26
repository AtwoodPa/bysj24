package com.ym.vaccine.mapper;

import com.ym.vaccine.domain.YmVaccineStock;
import com.ym.vaccine.domain.vo.YmVaccineStockVo;
import com.ym.common.core.mapper.BaseMapperPlus;

import java.util.List;

/**
 * 疫苗出入库Mapper接口
 *
 * @author ym
 * @date 2024-02-25
 */
public interface YmVaccineStockMapper extends BaseMapperPlus<YmVaccineStockMapper, YmVaccineStock, YmVaccineStockVo> {

    List<YmVaccineStockVo> vaccineBySiteId(Long siteId);
}
