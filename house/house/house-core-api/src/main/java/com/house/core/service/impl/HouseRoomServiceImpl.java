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
import com.house.core.domain.bo.HouseRoomBo;
import com.house.core.domain.vo.HouseRoomVo;
import com.house.core.domain.HouseRoom;
import com.house.core.mapper.HouseRoomMapper;
import com.house.core.service.IHouseRoomService;

import java.util.List;
import java.util.Map;
import java.util.Collection;

/**
 * 房源管理Service业务层处理
 *
 * @author house
 * @date 2024-03-05
 */
@RequiredArgsConstructor
@Service
public class HouseRoomServiceImpl implements IHouseRoomService {

    private final HouseRoomMapper baseMapper;

    /**
     * 查询房源管理
     */
    @Override
    public HouseRoomVo queryById(Long id){
        return baseMapper.selectVoById(id);
    }

    /**
     * 查询房源管理列表
     */
    @Override
    public TableDataInfo<HouseRoomVo> queryPageList(HouseRoomBo bo, PageQuery pageQuery) {
        LambdaQueryWrapper<HouseRoom> lqw = buildQueryWrapper(bo);
        Page<HouseRoomVo> result = baseMapper.selectVoPage(pageQuery.build(), lqw);
        return TableDataInfo.build(result);
    }

    /**
     * 查询房源管理列表
     */
    @Override
    public List<HouseRoomVo> queryList(HouseRoomBo bo) {
        LambdaQueryWrapper<HouseRoom> lqw = buildQueryWrapper(bo);
        return baseMapper.selectVoList(lqw);
    }

    private LambdaQueryWrapper<HouseRoom> buildQueryWrapper(HouseRoomBo bo) {
        Map<String, Object> params = bo.getParams();
        LambdaQueryWrapper<HouseRoom> lqw = Wrappers.lambdaQuery();
        lqw.eq(bo.getType() != null, HouseRoom::getType, bo.getType());
        lqw.eq(StringUtils.isNotBlank(bo.getHouseNum()), HouseRoom::getHouseNum, bo.getHouseNum());
        lqw.eq(StringUtils.isNotBlank(bo.getToiletNum()), HouseRoom::getToiletNum, bo.getToiletNum());
        lqw.eq(bo.getHouseArea() != null, HouseRoom::getHouseArea, bo.getHouseArea());
        lqw.eq(bo.getRoomType() != null, HouseRoom::getRoomType, bo.getRoomType());
        lqw.eq(StringUtils.isNotBlank(bo.getRoomCode()), HouseRoom::getRoomCode, bo.getRoomCode());
        lqw.eq(bo.getRoomArea() != null, HouseRoom::getRoomArea, bo.getRoomArea());
        lqw.eq(StringUtils.isNotBlank(bo.getDirection()), HouseRoom::getDirection, bo.getDirection());
        lqw.eq(bo.getPrice() != null, HouseRoom::getPrice, bo.getPrice());
        lqw.eq(StringUtils.isNotBlank(bo.getFloor()), HouseRoom::getFloor, bo.getFloor());
        lqw.eq(StringUtils.isNotBlank(bo.getStepType()), HouseRoom::getStepType, bo.getStepType());
        lqw.eq(bo.getStartDate() != null, HouseRoom::getStartDate, bo.getStartDate());
        lqw.eq(StringUtils.isNotBlank(bo.getIntroduce()), HouseRoom::getIntroduce, bo.getIntroduce());
        lqw.like(StringUtils.isNotBlank(bo.getOwnerName()), HouseRoom::getOwnerName, bo.getOwnerName());
        lqw.eq(StringUtils.isNotBlank(bo.getOwerPhone()), HouseRoom::getOwerPhone, bo.getOwerPhone());
        lqw.eq(bo.getVillageId() != null, HouseRoom::getVillageId, bo.getVillageId());
        lqw.like(StringUtils.isNotBlank(bo.getVillageName()), HouseRoom::getVillageName, bo.getVillageName());
        lqw.eq(StringUtils.isNotBlank(bo.getAddress()), HouseRoom::getAddress, bo.getAddress());
        lqw.eq(StringUtils.isNotBlank(bo.getHouseNo()), HouseRoom::getHouseNo, bo.getHouseNo());
        lqw.eq(StringUtils.isNotBlank(bo.getPayType()), HouseRoom::getPayType, bo.getPayType());
        lqw.eq(bo.getPublishId() != null, HouseRoom::getPublishId, bo.getPublishId());
        lqw.eq(bo.getState() != null, HouseRoom::getState, bo.getState());
        lqw.like(StringUtils.isNotBlank(bo.getCreateName()), HouseRoom::getCreateName, bo.getCreateName());
        lqw.like(StringUtils.isNotBlank(bo.getUpdateName()), HouseRoom::getUpdateName, bo.getUpdateName());
        lqw.eq(StringUtils.isNotBlank(bo.getHouseHall()), HouseRoom::getHouseHall, bo.getHouseHall());
        lqw.eq(StringUtils.isNotBlank(bo.getCode()), HouseRoom::getCode, bo.getCode());
        lqw.eq(StringUtils.isNotBlank(bo.getFaceUrl()), HouseRoom::getFaceUrl, bo.getFaceUrl());
        lqw.eq(StringUtils.isNotBlank(bo.getDecoration()), HouseRoom::getDecoration, bo.getDecoration());
        lqw.like(StringUtils.isNotBlank(bo.getAgentName()), HouseRoom::getAgentName, bo.getAgentName());
        lqw.eq(StringUtils.isNotBlank(bo.getAgentPhone()), HouseRoom::getAgentPhone, bo.getAgentPhone());
        lqw.eq(bo.getAgentUserId() != null, HouseRoom::getAgentUserId, bo.getAgentUserId());
        lqw.eq(StringUtils.isNotBlank(bo.getAgentAvatar()), HouseRoom::getAgentAvatar, bo.getAgentAvatar());
        return lqw;
    }

    /**
     * 新增房源管理
     */
    @Override
    public Boolean insertByBo(HouseRoomBo bo) {
        HouseRoom add = BeanUtil.toBean(bo, HouseRoom.class);
        validEntityBeforeSave(add);
        boolean flag = baseMapper.insert(add) > 0;
        if (flag) {
            bo.setId(add.getId());
        }
        return flag;
    }

    /**
     * 修改房源管理
     */
    @Override
    public Boolean updateByBo(HouseRoomBo bo) {
        HouseRoom update = BeanUtil.toBean(bo, HouseRoom.class);
        validEntityBeforeSave(update);
        return baseMapper.updateById(update) > 0;
    }

    /**
     * 保存前的数据校验
     */
    private void validEntityBeforeSave(HouseRoom entity){
        //TODO 做一些数据校验,如唯一约束
    }

    /**
     * 批量删除房源管理
     */
    @Override
    public Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid) {
        if(isValid){
            //TODO 做一些业务上的校验,判断是否需要校验
        }
        return baseMapper.deleteBatchIds(ids) > 0;
    }
}
