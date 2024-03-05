package com.house.core.service;

import com.house.core.domain.HouseHeart;
import com.house.core.domain.vo.HouseHeartVo;
import com.house.core.domain.bo.HouseHeartBo;
import com.house.common.core.page.TableDataInfo;
import com.house.common.core.domain.PageQuery;

import java.util.Collection;
import java.util.List;

/**
 * 房屋收藏Service接口
 *
 * @author house
 * @date 2024-03-05
 */
public interface IHouseHeartService {

    /**
     * 查询房屋收藏
     */
    HouseHeartVo queryById(Long id);

    /**
     * 查询房屋收藏列表
     */
    TableDataInfo<HouseHeartVo> queryPageList(HouseHeartBo bo, PageQuery pageQuery);

    /**
     * 查询房屋收藏列表
     */
    List<HouseHeartVo> queryList(HouseHeartBo bo);

    /**
     * 新增房屋收藏
     */
    Boolean insertByBo(HouseHeartBo bo);

    /**
     * 修改房屋收藏
     */
    Boolean updateByBo(HouseHeartBo bo);

    /**
     * 校验并批量删除房屋收藏信息
     */
    Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid);
}
