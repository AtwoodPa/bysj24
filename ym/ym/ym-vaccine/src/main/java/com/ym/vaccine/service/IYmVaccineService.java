package com.ym.vaccine.service;

import com.ym.vaccine.domain.YmVaccine;
import com.ym.vaccine.domain.vo.YmVaccineVo;
import com.ym.vaccine.domain.bo.YmVaccineBo;
import com.ym.common.core.page.TableDataInfo;
import com.ym.common.core.domain.PageQuery;

import java.util.Collection;
import java.util.List;

/**
 * 疫苗，存储疫苗信息Service接口
 *
 * @author ym
 * @date 2024-01-18
 */
public interface IYmVaccineService {

    /**
     * 查询疫苗，存储疫苗信息
     */
    YmVaccineVo queryById(Long vaccineId);

    /**
     * 查询疫苗，存储疫苗信息列表
     */
    TableDataInfo<YmVaccineVo> queryPageList(YmVaccineBo bo, PageQuery pageQuery);

    /**
     * 查询疫苗，存储疫苗信息列表
     */
    List<YmVaccineVo> queryList(YmVaccineBo bo);

    /**
     * 新增疫苗，存储疫苗信息
     */
    Boolean insertByBo(YmVaccineBo bo);

    /**
     * 修改疫苗，存储疫苗信息
     */
    Boolean updateByBo(YmVaccineBo bo);

    /**
     * 校验并批量删除疫苗，存储疫苗信息信息
     */
    Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid);
}
