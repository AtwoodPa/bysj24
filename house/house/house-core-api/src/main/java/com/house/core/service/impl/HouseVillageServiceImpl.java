package com.house.core.service.impl;

import cn.hutool.core.bean.BeanUtil;
import com.house.common.utils.DateUtils;
import com.house.common.utils.StringUtils;
import com.house.common.core.page.TableDataInfo;
import com.house.common.core.domain.PageQuery;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import com.house.core.domain.bo.HouseVillageBo;
import com.house.core.domain.vo.HouseVillageVo;
import com.house.core.domain.HouseVillage;
import com.house.core.mapper.HouseVillageMapper;
import com.house.core.service.IHouseVillageService;

import java.util.List;
import java.util.Map;
import java.util.Collection;

/**
 * 小区管理Service业务层处理
 *
 * @author house
 * @date 2024-03-05
 */
@RequiredArgsConstructor
@Service
public class HouseVillageServiceImpl implements IHouseVillageService {

    private final HouseVillageMapper baseMapper;

    /**
     * 查询小区管理
     */
    @Override
    public HouseVillageVo queryById(Long id){
        return baseMapper.selectVoById(id);
    }

    /**
     * 查询小区管理列表
     */
    @Override
    public TableDataInfo<HouseVillageVo> queryPageList(HouseVillageBo bo, PageQuery pageQuery) {
        LambdaQueryWrapper<HouseVillage> lqw = buildQueryWrapper(bo);
        Page<HouseVillageVo> result = baseMapper.selectVoPage(pageQuery.build(), lqw);
        return TableDataInfo.build(result);
    }

    /**
     * 查询小区管理列表
     */
    @Override
    public List<HouseVillageVo> queryList(HouseVillageBo bo) {
        LambdaQueryWrapper<HouseVillage> lqw = buildQueryWrapper(bo);
        return baseMapper.selectVoList(lqw);
    }

    private LambdaQueryWrapper<HouseVillage> buildQueryWrapper(HouseVillageBo bo) {
        LambdaQueryWrapper<HouseVillage> lqw = Wrappers.lambdaQuery();
        lqw.eq(StringUtils.isNotBlank(bo.getProvince()), HouseVillage::getProvince, bo.getProvince());
        lqw.eq(StringUtils.isNotBlank(bo.getCity()), HouseVillage::getCity, bo.getCity());
        lqw.eq(StringUtils.isNotBlank(bo.getArea()), HouseVillage::getArea, bo.getArea());
        lqw.like(StringUtils.isNotBlank(bo.getName()), HouseVillage::getName, bo.getName());
        lqw.eq(StringUtils.isNotBlank(bo.getCode()), HouseVillage::getCode, bo.getCode());
        lqw.eq(bo.getYear() != null, HouseVillage::getYear, bo.getYear());
        lqw.eq(StringUtils.isNotBlank(bo.getType()), HouseVillage::getType, bo.getType());
        lqw.eq(bo.getGreen() != null, HouseVillage::getGreen, bo.getGreen());
        lqw.eq(StringUtils.isNotBlank(bo.getIntroduce()), HouseVillage::getIntroduce, bo.getIntroduce());
        lqw.eq(bo.getWayState() != null, HouseVillage::getWayState, bo.getWayState());
        lqw.eq(StringUtils.isNotBlank(bo.getWayCode()), HouseVillage::getWayCode, bo.getWayCode());
        lqw.eq(bo.getWaySpace() != null, HouseVillage::getWaySpace, bo.getWaySpace());
        lqw.eq(bo.getLon() != null, HouseVillage::getLon, bo.getLon());
        lqw.eq(bo.getLat() != null, HouseVillage::getLat, bo.getLat());
        lqw.eq(bo.getState() != null, HouseVillage::getState, bo.getState());
        return lqw;
    }

    /**
     * 新增小区管理
     */
    @Override
    public Boolean insertByBo(HouseVillageBo bo) {
        HouseVillage add = BeanUtil.toBean(bo, HouseVillage.class);
        // 设置创建时间
        add.setCreateTime(DateUtils.getNowDate());
        validEntityBeforeSave(add);
        boolean flag = baseMapper.insert(add) > 0;
        if (flag) {
            bo.setId(add.getId());
        }
        return flag;
    }

    /**
     * 修改小区管理
     */
    @Override
    public Boolean updateByBo(HouseVillageBo bo) {
        HouseVillage update = BeanUtil.toBean(bo, HouseVillage.class);
        validEntityBeforeSave(update);
        return baseMapper.updateById(update) > 0;
    }

    /**
     * 保存前的数据校验
     */
    private void validEntityBeforeSave(HouseVillage entity){
        //TODO 做一些数据校验,如唯一约束
    }

    /**
     * 批量删除小区管理
     */
    @Override
    public Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid) {
        if(isValid){
            //TODO 做一些业务上的校验,判断是否需要校验
        }
        return baseMapper.deleteBatchIds(ids) > 0;
    }
}
