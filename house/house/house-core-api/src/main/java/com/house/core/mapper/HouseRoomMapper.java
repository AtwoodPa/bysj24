package com.house.core.mapper;

import com.house.core.domain.HouseRoom;
import com.house.core.domain.bo.HouseRoomBo;
import com.house.core.domain.vo.HouseRoomVo;
import com.house.common.core.mapper.BaseMapperPlus;

/**
 * 房源管理Mapper接口
 *
 * @author house
 * @date 2024-03-05
 */
public interface HouseRoomMapper extends BaseMapperPlus<HouseRoomMapper, HouseRoom, HouseRoomVo> {

    int insertHouseFeature(HouseRoomBo bo);

    int insertHouseImage(HouseRoomBo bo);
}
