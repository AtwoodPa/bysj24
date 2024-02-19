package com.ym.vaccine.service;


import com.baomidou.mybatisplus.extension.service.IService;
import com.ym.vaccine.domain.YmVaccine;
import com.ym.vaccine.domain.bo.YmVaccineBo;
import com.ym.common.core.page.TableDataInfo;
import com.ym.common.core.domain.PageQuery;
import com.ym.vaccine.domain.vo.YmVaccineVo;

import java.util.Collection;
import java.util.List;

/**
 * 疫苗信息Service接口
 *
 * @author ym
 * @date 2024-01-29
 */
public interface IYmVaccineService extends IService<YmVaccine> {

    /**
     * 查询疫苗信息
     */
    YmVaccineVo queryById(Long id);

    /**
     * 查询疫苗信息列表
     */
    TableDataInfo<YmVaccineVo> queryPageList(YmVaccineBo bo, PageQuery pageQuery);

    /**
     * 查询疫苗信息列表
     */
    List<YmVaccineVo> queryList(YmVaccineBo bo);

    /**
     * 新增疫苗信息
     */
    Boolean insertByBo(YmVaccineBo bo);

    /**
     * 修改疫苗信息
     */
    Boolean updateByBo(YmVaccineBo bo);

    /**
     * 校验并批量删除疫苗信息信息
     */
    Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid);
}
