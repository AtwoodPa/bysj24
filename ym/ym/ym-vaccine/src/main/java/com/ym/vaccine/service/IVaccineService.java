package com.ym.vaccine.service;


import com.ym.vaccine.domain.bo.VaccineBo;
import com.ym.common.core.page.TableDataInfo;
import com.ym.common.core.domain.PageQuery;
import com.ym.vaccine.domain.vo.VaccineVo;

import java.util.Collection;
import java.util.List;

/**
 * 疫苗信息Service接口
 *
 * @author ym
 * @date 2024-01-29
 */
public interface IVaccineService {

    /**
     * 查询疫苗信息
     */
    VaccineVo queryById(Long id);

    /**
     * 查询疫苗信息列表
     */
    TableDataInfo<VaccineVo> queryPageList(VaccineBo bo, PageQuery pageQuery);

    /**
     * 查询疫苗信息列表
     */
    List<VaccineVo> queryList(VaccineBo bo);

    /**
     * 新增疫苗信息
     */
    Boolean insertByBo(VaccineBo bo);

    /**
     * 修改疫苗信息
     */
    Boolean updateByBo(VaccineBo bo);

    /**
     * 校验并批量删除疫苗信息信息
     */
    Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid);
}
