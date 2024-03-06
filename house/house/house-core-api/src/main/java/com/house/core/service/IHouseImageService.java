package com.house.core.service;

import com.house.core.domain.HouseImage;
import com.house.core.domain.vo.HouseImageVo;
import com.house.core.domain.bo.HouseImageBo;
import com.house.common.core.page.TableDataInfo;
import com.house.common.core.domain.PageQuery;

import java.util.Collection;
import java.util.List;

/**
 * 房源图片Service接口
 *
 * @author house
 * @date 2024-03-05
 */
public interface IHouseImageService {

    /**
     * 查询房源图片
     */
    HouseImageVo queryById(Long id);

    /**
     * 查询房源图片列表
     */
    TableDataInfo<HouseImageVo> queryPageList(HouseImageBo bo, PageQuery pageQuery);

    /**
     * 查询房源图片列表
     */
    List<HouseImageVo> queryList(HouseImageBo bo);

    /**
     * 新增房源图片
     */
    Boolean insertByBo(HouseImageBo bo);

    /**
     * 修改房源图片
     */
    Boolean updateByBo(HouseImageBo bo);

    /**
     * 校验并批量删除房源图片信息
     */
    Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid);

    void insertBatch(List<HouseImage> imageList, Long houseRoomId);
}
