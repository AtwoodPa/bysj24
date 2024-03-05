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
import com.house.core.domain.bo.HouseUserBo;
import com.house.core.domain.vo.HouseUserVo;
import com.house.core.domain.HouseUser;
import com.house.core.mapper.HouseUserMapper;
import com.house.core.service.IHouseUserService;

import java.util.List;
import java.util.Map;
import java.util.Collection;

/**
 * 出租管理Service业务层处理
 *
 * @author house
 * @date 2024-03-05
 */
@RequiredArgsConstructor
@Service
public class HouseUserServiceImpl implements IHouseUserService {

    private final HouseUserMapper baseMapper;

    /**
     * 查询出租管理
     */
    @Override
    public HouseUserVo queryById(Long id){
        return baseMapper.selectVoById(id);
    }

    /**
     * 查询出租管理列表
     */
    @Override
    public TableDataInfo<HouseUserVo> queryPageList(HouseUserBo bo, PageQuery pageQuery) {
        LambdaQueryWrapper<HouseUser> lqw = buildQueryWrapper(bo);
        Page<HouseUserVo> result = baseMapper.selectVoPage(pageQuery.build(), lqw);
        return TableDataInfo.build(result);
    }

    /**
     * 查询出租管理列表
     */
    @Override
    public List<HouseUserVo> queryList(HouseUserBo bo) {
        LambdaQueryWrapper<HouseUser> lqw = buildQueryWrapper(bo);
        return baseMapper.selectVoList(lqw);
    }

    private LambdaQueryWrapper<HouseUser> buildQueryWrapper(HouseUserBo bo) {
        Map<String, Object> params = bo.getParams();
        LambdaQueryWrapper<HouseUser> lqw = Wrappers.lambdaQuery();
        lqw.eq(bo.getHouseId() != null, HouseUser::getHouseId, bo.getHouseId());
        lqw.eq(bo.getUserId() != null, HouseUser::getUserId, bo.getUserId());
        lqw.eq(bo.getPublishId() != null, HouseUser::getPublishId, bo.getPublishId());
        lqw.eq(bo.getActualPrice() != null, HouseUser::getActualPrice, bo.getActualPrice());
        lqw.eq(bo.getState() != null, HouseUser::getState, bo.getState());
        return lqw;
    }

    /**
     * 新增出租管理
     */
    @Override
    public Boolean insertByBo(HouseUserBo bo) {
        HouseUser add = BeanUtil.toBean(bo, HouseUser.class);
        validEntityBeforeSave(add);
        boolean flag = baseMapper.insert(add) > 0;
        if (flag) {
            bo.setId(add.getId());
        }
        return flag;
    }

    /**
     * 修改出租管理
     */
    @Override
    public Boolean updateByBo(HouseUserBo bo) {
        HouseUser update = BeanUtil.toBean(bo, HouseUser.class);
        validEntityBeforeSave(update);
        return baseMapper.updateById(update) > 0;
    }

    /**
     * 保存前的数据校验
     */
    private void validEntityBeforeSave(HouseUser entity){
        //TODO 做一些数据校验,如唯一约束
    }

    /**
     * 批量删除出租管理
     */
    @Override
    public Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid) {
        if(isValid){
            //TODO 做一些业务上的校验,判断是否需要校验
        }
        return baseMapper.deleteBatchIds(ids) > 0;
    }
}
