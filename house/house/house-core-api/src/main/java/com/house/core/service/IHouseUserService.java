package com.house.core.service;

import com.house.core.domain.HouseUser;
import com.house.core.domain.vo.HouseUserVo;
import com.house.core.domain.bo.HouseUserBo;
import com.house.common.core.page.TableDataInfo;
import com.house.common.core.domain.PageQuery;

import java.util.Collection;
import java.util.List;

/**
 * 出租管理Service接口
 *
 * @author house
 * @date 2024-03-05
 */
public interface IHouseUserService {

    /**
     * 查询出租管理
     */
    HouseUserVo queryById(Long id);

    /**
     * 查询出租管理列表
     */
    TableDataInfo<HouseUserVo> queryPageList(HouseUserBo bo, PageQuery pageQuery);

    /**
     * 查询出租管理列表
     */
    List<HouseUserVo> queryList(HouseUserBo bo);

    /**
     * 新增出租管理
     */
    Boolean insertByBo(HouseUserBo bo);

    /**
     * 修改出租管理
     */
    Boolean updateByBo(HouseUserBo bo);

    /**
     * 校验并批量删除出租管理信息
     */
    Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid);
}
