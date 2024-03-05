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
import com.house.core.domain.bo.HouseImageBo;
import com.house.core.domain.vo.HouseImageVo;
import com.house.core.domain.HouseImage;
import com.house.core.mapper.HouseImageMapper;
import com.house.core.service.IHouseImageService;

import java.util.List;
import java.util.Map;
import java.util.Collection;

/**
 * 房源图片Service业务层处理
 *
 * @author house
 * @date 2024-03-05
 */
@RequiredArgsConstructor
@Service
public class HouseImageServiceImpl implements IHouseImageService {

    private final HouseImageMapper baseMapper;

    /**
     * 查询房源图片
     */
    @Override
    public HouseImageVo queryById(Long id){
        return baseMapper.selectVoById(id);
    }

    /**
     * 查询房源图片列表
     */
    @Override
    public TableDataInfo<HouseImageVo> queryPageList(HouseImageBo bo, PageQuery pageQuery) {
        LambdaQueryWrapper<HouseImage> lqw = buildQueryWrapper(bo);
        Page<HouseImageVo> result = baseMapper.selectVoPage(pageQuery.build(), lqw);
        return TableDataInfo.build(result);
    }

    /**
     * 查询房源图片列表
     */
    @Override
    public List<HouseImageVo> queryList(HouseImageBo bo) {
        LambdaQueryWrapper<HouseImage> lqw = buildQueryWrapper(bo);
        return baseMapper.selectVoList(lqw);
    }

    private LambdaQueryWrapper<HouseImage> buildQueryWrapper(HouseImageBo bo) {
        Map<String, Object> params = bo.getParams();
        LambdaQueryWrapper<HouseImage> lqw = Wrappers.lambdaQuery();
        lqw.eq(bo.getHouseId() != null, HouseImage::getHouseId, bo.getHouseId());
        lqw.like(StringUtils.isNotBlank(bo.getImageName()), HouseImage::getImageName, bo.getImageName());
        lqw.eq(StringUtils.isNotBlank(bo.getImagePath()), HouseImage::getImagePath, bo.getImagePath());
        lqw.eq(StringUtils.isNotBlank(bo.getImgUrl()), HouseImage::getImgUrl, bo.getImgUrl());
        lqw.eq(bo.getImageSize() != null, HouseImage::getImageSize, bo.getImageSize());
        return lqw;
    }

    /**
     * 新增房源图片
     */
    @Override
    public Boolean insertByBo(HouseImageBo bo) {
        HouseImage add = BeanUtil.toBean(bo, HouseImage.class);
        validEntityBeforeSave(add);
        boolean flag = baseMapper.insert(add) > 0;
        if (flag) {
            bo.setId(add.getId());
        }
        return flag;
    }

    /**
     * 修改房源图片
     */
    @Override
    public Boolean updateByBo(HouseImageBo bo) {
        HouseImage update = BeanUtil.toBean(bo, HouseImage.class);
        validEntityBeforeSave(update);
        return baseMapper.updateById(update) > 0;
    }

    /**
     * 保存前的数据校验
     */
    private void validEntityBeforeSave(HouseImage entity){
        //TODO 做一些数据校验,如唯一约束
    }

    /**
     * 批量删除房源图片
     */
    @Override
    public Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid) {
        if(isValid){
            //TODO 做一些业务上的校验,判断是否需要校验
        }
        return baseMapper.deleteBatchIds(ids) > 0;
    }
}
