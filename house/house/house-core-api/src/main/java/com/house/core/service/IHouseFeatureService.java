package com.house.core.service;

import com.house.core.domain.HouseFeature;
import com.house.core.domain.vo.HouseFeatureVo;
import com.house.core.domain.bo.HouseFeatureBo;
import com.house.common.core.page.TableDataInfo;
import com.house.common.core.domain.PageQuery;

import java.util.Collection;
import java.util.List;

/**
 * 房源特色Service接口
 *
 * @author house
 * @date 2024-03-05
 */
public interface IHouseFeatureService {

    /**
     * 查询房源特色
     */
    HouseFeatureVo queryById(Long id);

    /**
     * 查询房源特色列表
     */
    TableDataInfo<HouseFeatureVo> queryPageList(HouseFeatureBo bo, PageQuery pageQuery);

    /**
     * 查询房源特色列表
     */
    List<HouseFeatureVo> queryList(HouseFeatureBo bo);

    /**
     * 新增房源特色
     */
    Boolean insertByBo(HouseFeatureBo bo);

    /**
     * 修改房源特色
     */
    Boolean updateByBo(HouseFeatureBo bo);

    /**
     * 校验并批量删除房源特色信息
     */
    Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid);
}
