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
import com.house.core.domain.bo.HouseHeartBo;
import com.house.core.domain.vo.HouseHeartVo;
import com.house.core.domain.HouseHeart;
import com.house.core.mapper.HouseHeartMapper;
import com.house.core.service.IHouseHeartService;

import java.util.List;
import java.util.Map;
import java.util.Collection;

/**
 * 房屋收藏Service业务层处理
 *
 * @author house
 * @date 2024-03-05
 */
@RequiredArgsConstructor
@Service
public class HouseHeartServiceImpl implements IHouseHeartService {

    private final HouseHeartMapper baseMapper;

    /**
     * 查询房屋收藏
     */
    @Override
    public HouseHeartVo queryById(Long id){
        return baseMapper.selectVoById(id);
    }

    /**
     * 查询房屋收藏列表
     */
    @Override
    public TableDataInfo<HouseHeartVo> queryPageList(HouseHeartBo bo, PageQuery pageQuery) {
        LambdaQueryWrapper<HouseHeart> lqw = buildQueryWrapper(bo);
        Page<HouseHeartVo> result = baseMapper.selectVoPage(pageQuery.build(), lqw);
        return TableDataInfo.build(result);
    }

    /**
     * 查询房屋收藏列表
     */
    @Override
    public List<HouseHeartVo> queryList(HouseHeartBo bo) {
        LambdaQueryWrapper<HouseHeart> lqw = buildQueryWrapper(bo);
        return baseMapper.selectVoList(lqw);
    }

    private LambdaQueryWrapper<HouseHeart> buildQueryWrapper(HouseHeartBo bo) {
        Map<String, Object> params = bo.getParams();
        LambdaQueryWrapper<HouseHeart> lqw = Wrappers.lambdaQuery();
        lqw.eq(bo.getHouseId() != null, HouseHeart::getHouseId, bo.getHouseId());
        lqw.eq(bo.getUserId() != null, HouseHeart::getUserId, bo.getUserId());
        return lqw;
    }

    /**
     * 新增房屋收藏
     */
    @Override
    public Boolean insertByBo(HouseHeartBo bo) {
        HouseHeart add = BeanUtil.toBean(bo, HouseHeart.class);
        validEntityBeforeSave(add);
        boolean flag = baseMapper.insert(add) > 0;
        if (flag) {
            bo.setId(add.getId());
        }
        return flag;
    }

    /**
     * 修改房屋收藏
     */
    @Override
    public Boolean updateByBo(HouseHeartBo bo) {
        HouseHeart update = BeanUtil.toBean(bo, HouseHeart.class);
        validEntityBeforeSave(update);
        return baseMapper.updateById(update) > 0;
    }

    /**
     * 保存前的数据校验
     */
    private void validEntityBeforeSave(HouseHeart entity){
        //TODO 做一些数据校验,如唯一约束
    }

    /**
     * 批量删除房屋收藏
     */
    @Override
    public Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid) {
        if(isValid){
            //TODO 做一些业务上的校验,判断是否需要校验
        }
        return baseMapper.deleteBatchIds(ids) > 0;
    }
}
