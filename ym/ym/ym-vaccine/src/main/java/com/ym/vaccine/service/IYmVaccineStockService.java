package com.ym.vaccine.service;

import com.ym.vaccine.domain.YmVaccineStock;
import com.ym.vaccine.domain.vo.YmVaccineStockVo;
import com.ym.vaccine.domain.bo.YmVaccineStockBo;
import com.ym.common.core.page.TableDataInfo;
import com.ym.common.core.domain.PageQuery;

import java.util.Collection;
import java.util.List;

/**
 * 疫苗出入库Service接口
 *
 * @author ym
 * @date 2024-02-25
 */
public interface IYmVaccineStockService {

    /**
     * 查询疫苗出入库
     */
    YmVaccineStockVo queryById(Long siteId);

    /**
     * 查询疫苗出入库列表
     */
    TableDataInfo<YmVaccineStockVo> queryPageList(YmVaccineStockBo bo, PageQuery pageQuery);

    /**
     * 查询疫苗出入库列表
     */
    List<YmVaccineStockVo> queryList(YmVaccineStockBo bo);

    /**
     * 新增疫苗出入库
     */
    Boolean insertByBo(YmVaccineStockBo bo);

    /**
     * 修改疫苗出入库
     */
    Boolean updateByBo(YmVaccineStockBo bo);

    /**
     * 校验并批量删除疫苗出入库信息
     */
    Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid);

    List<YmVaccineStockVo> vaccineBySiteId(Long siteId);
}
