package com.house.core.service.impl;

import cn.hutool.core.bean.BeanUtil;
import com.house.common.utils.StringUtils;
import com.house.common.core.page.TableDataInfo;
import com.house.common.core.domain.PageQuery;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import com.house.core.domain.bo.HouseFeatureBo;
import com.house.core.domain.vo.HouseFeatureVo;
import com.house.core.domain.HouseFeature;
import com.house.core.mapper.HouseFeatureMapper;
import com.house.core.service.IHouseFeatureService;

import java.util.List;
import java.util.Map;
import java.util.Collection;

/**
 * 房源特色Service业务层处理
 *
 * @author house
 * @date 2024-03-05
 */
@RequiredArgsConstructor
@Service
public class HouseFeatureServiceImpl implements IHouseFeatureService {

    private final HouseFeatureMapper baseMapper;

    /**
     * 查询房源特色
     */
    @Override
    public HouseFeatureVo queryById(Long id){
        return baseMapper.selectVoById(id);
    }

    /**
     * 查询房源特色列表
     */
    @Override
    public TableDataInfo<HouseFeatureVo> queryPageList(HouseFeatureBo bo, PageQuery pageQuery) {
        LambdaQueryWrapper<HouseFeature> lqw = buildQueryWrapper(bo);
        Page<HouseFeatureVo> result = baseMapper.selectVoPage(pageQuery.build(), lqw);
        return TableDataInfo.build(result);
    }

    /**
     * 查询房源特色列表
     */
    @Override
    public List<HouseFeatureVo> queryList(HouseFeatureBo bo) {
        LambdaQueryWrapper<HouseFeature> lqw = buildQueryWrapper(bo);
        return baseMapper.selectVoList(lqw);
    }

    private LambdaQueryWrapper<HouseFeature> buildQueryWrapper(HouseFeatureBo bo) {
        LambdaQueryWrapper<HouseFeature> lqw = Wrappers.lambdaQuery();
        lqw.eq(bo.getHouseId() != null, HouseFeature::getHouseId, bo.getHouseId());
        lqw.eq(StringUtils.isNotBlank(bo.getFeature()), HouseFeature::getFeature, bo.getFeature());
        return lqw;
    }

    /**
     * 新增房源特色
     */
    @Override
    public Boolean insertByBo(HouseFeatureBo bo) {
        HouseFeature add = BeanUtil.toBean(bo, HouseFeature.class);
        validEntityBeforeSave(add);
        boolean flag = baseMapper.insert(add) > 0;
        if (flag) {
            bo.setId(add.getId());
        }
        return flag;
    }

    /**
     * 修改房源特色
     */
    @Override
    public Boolean updateByBo(HouseFeatureBo bo) {
        HouseFeature update = BeanUtil.toBean(bo, HouseFeature.class);
        validEntityBeforeSave(update);
        return baseMapper.updateById(update) > 0;
    }

    /**
     * 保存前的数据校验
     */
    private void validEntityBeforeSave(HouseFeature entity){
        //TODO 做一些数据校验,如唯一约束
    }

    /**
     * 批量删除房源特色
     */
    @Override
    public Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid) {
        if(isValid){
            //TODO 做一些业务上的校验,判断是否需要校验
        }
        return baseMapper.deleteBatchIds(ids) > 0;
    }

    @Override
    public void insertBatch(List<HouseFeature> featureList, Long houseRoomId) {
        for (HouseFeature feature : featureList) {
            feature.setHouseId(houseRoomId);
            baseMapper.insert(feature);
        }
    }
}
