package com.house.core.service;

import com.house.core.domain.HouseRoom;
import com.house.core.domain.vo.HouseRoomVo;
import com.house.core.domain.bo.HouseRoomBo;
import com.house.common.core.page.TableDataInfo;
import com.house.common.core.domain.PageQuery;

import java.util.Collection;
import java.util.List;

/**
 * 房源管理Service接口
 *
 * @author house
 * @date 2024-03-05
 */
public interface IHouseRoomService {

    /**
     * 查询房源管理
     */
    HouseRoomVo queryById(Long id);

    /**
     * 查询房源管理列表
     */
    TableDataInfo<HouseRoomVo> queryPageList(HouseRoomBo bo, PageQuery pageQuery);

    /**
     * 查询房源管理列表
     */
    List<HouseRoomVo> queryList(HouseRoomBo bo);

    /**
     * 新增房源管理
     */
    Boolean insertByBo(HouseRoomBo bo);

    /**
     * 修改房源管理
     */
    Boolean updateByBo(HouseRoomBo bo);

    /**
     * 校验并批量删除房源管理信息
     */
    Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid);
}
