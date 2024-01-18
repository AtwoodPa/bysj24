package com.ym.vaccine.service;

import com.ym.vaccine.domain.YmManufacturer;
import com.ym.vaccine.domain.vo.YmManufacturerVo;
import com.ym.vaccine.domain.bo.YmManufacturerBo;
import com.ym.common.core.page.TableDataInfo;
import com.ym.common.core.domain.PageQuery;

import java.util.Collection;
import java.util.List;

/**
 * 疫苗厂家，存储疫苗厂家信息Service接口
 *
 * @author ym
 * @date 2024-01-17
 */
public interface IYmManufacturerService {

    /**
     * 查询疫苗厂家，存储疫苗厂家信息
     */
    YmManufacturerVo queryById(Long manufacturerId);

    /**
     * 查询疫苗厂家，存储疫苗厂家信息列表
     */
    TableDataInfo<YmManufacturerVo> queryPageList(YmManufacturerBo bo, PageQuery pageQuery);

    /**
     * 查询疫苗厂家，存储疫苗厂家信息列表
     */
    List<YmManufacturerVo> queryList(YmManufacturerBo bo);

    /**
     * 新增疫苗厂家，存储疫苗厂家信息
     */
    Boolean insertByBo(YmManufacturerBo bo);

    /**
     * 修改疫苗厂家，存储疫苗厂家信息
     */
    Boolean updateByBo(YmManufacturerBo bo);

    /**
     * 校验并批量删除疫苗厂家，存储疫苗厂家信息信息
     */
    Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid);
}
