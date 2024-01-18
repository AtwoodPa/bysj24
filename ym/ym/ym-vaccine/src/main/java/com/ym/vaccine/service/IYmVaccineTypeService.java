package com.ym.vaccine.service;

import com.ym.vaccine.domain.YmVaccineType;
import com.ym.vaccine.domain.vo.YmVaccineTypeVo;
import com.ym.vaccine.domain.bo.YmVaccineTypeBo;
import com.ym.common.core.page.TableDataInfo;
import com.ym.common.core.domain.PageQuery;

import java.util.Collection;
import java.util.List;

/**
 * 疫苗类型，存储疫苗的类型信息Service接口
 *
 * @author ym
 * @date 2024-01-17
 */
public interface IYmVaccineTypeService {

    /**
     * 查询疫苗类型，存储疫苗的类型信息
     */
    YmVaccineTypeVo queryById(Long typeId);

    /**
     * 查询疫苗类型，存储疫苗的类型信息列表
     */
    TableDataInfo<YmVaccineTypeVo> queryPageList(YmVaccineTypeBo bo, PageQuery pageQuery);

    /**
     * 查询疫苗类型，存储疫苗的类型信息列表
     */
    List<YmVaccineTypeVo> queryList(YmVaccineTypeBo bo);

    /**
     * 新增疫苗类型，存储疫苗的类型信息
     */
    Boolean insertByBo(YmVaccineTypeBo bo);

    /**
     * 修改疫苗类型，存储疫苗的类型信息
     */
    Boolean updateByBo(YmVaccineTypeBo bo);

    /**
     * 校验并批量删除疫苗类型，存储疫苗的类型信息信息
     */
    Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid);
}
