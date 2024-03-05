package com.house.core.service;

import com.house.core.domain.HouseVillage;
import com.house.core.domain.vo.HouseVillageVo;
import com.house.core.domain.bo.HouseVillageBo;
import com.house.common.core.page.TableDataInfo;
import com.house.common.core.domain.PageQuery;

import java.util.Collection;
import java.util.List;

/**
 * 小区管理Service接口
 *
 * @author house
 * @date 2024-03-05
 */
public interface IHouseVillageService {

    /**
     * 查询小区管理
     */
    HouseVillageVo queryById(Long id);

    /**
     * 查询小区管理列表
     */
    TableDataInfo<HouseVillageVo> queryPageList(HouseVillageBo bo, PageQuery pageQuery);

    /**
     * 查询小区管理列表
     */
    List<HouseVillageVo> queryList(HouseVillageBo bo);

    /**
     * 新增小区管理
     */
    Boolean insertByBo(HouseVillageBo bo);

    /**
     * 修改小区管理
     */
    Boolean updateByBo(HouseVillageBo bo);

    /**
     * 校验并批量删除小区管理信息
     */
    Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid);
}
