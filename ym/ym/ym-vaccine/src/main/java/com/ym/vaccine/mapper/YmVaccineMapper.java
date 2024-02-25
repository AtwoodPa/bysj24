package com.ym.vaccine.mapper;

import com.ym.common.core.mapper.BaseMapperPlus;
import com.ym.vaccine.domain.YmVaccine;
import com.ym.vaccine.domain.bo.YmVaccineBo;
import com.ym.vaccine.domain.vo.YmVaccineVo;

import java.util.Optional;

/**
 * 疫苗信息Mapper接口
 *
 * @author ym
 * @date 2024-01-29
 */
public interface YmVaccineMapper extends BaseMapperPlus<YmVaccineMapper, YmVaccine, YmVaccineVo> {

    Optional<YmVaccine> selectVaccineByName(String vaccineName);

}
