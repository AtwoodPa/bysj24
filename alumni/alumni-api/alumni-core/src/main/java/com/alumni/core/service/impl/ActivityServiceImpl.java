package com.alumni.core.service.impl;

import cn.hutool.core.bean.BeanUtil;
import com.alumni.common.utils.StringUtils;
import com.alumni.common.core.page.TableDataInfo;
import com.alumni.common.core.domain.PageQuery;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import com.alumni.core.domain.bo.ActivityBo;
import com.alumni.core.domain.vo.ActivityVo;
import com.alumni.core.domain.Activity;
import com.alumni.core.mapper.ActivityMapper;
import com.alumni.core.service.IActivityService;

import java.util.List;
import java.util.Map;
import java.util.Collection;

/**
 * 校友活动管理Service业务层处理
 *
 * @author alumni
 * @date 2024-03-03
 */
@RequiredArgsConstructor
@Service
public class ActivityServiceImpl implements IActivityService {

    private final ActivityMapper baseMapper;

    /**
     * 查询校友活动管理
     */
    @Override
    public ActivityVo queryById(Long id){
        return baseMapper.selectVoById(id);
    }

    /**
     * 查询校友活动管理列表
     */
    @Override
    public TableDataInfo<ActivityVo> queryPageList(ActivityBo bo, PageQuery pageQuery) {
        LambdaQueryWrapper<Activity> lqw = buildQueryWrapper(bo);
        Page<ActivityVo> result = baseMapper.selectVoPage(pageQuery.build(), lqw);
        return TableDataInfo.build(result);
    }

    /**
     * 查询校友活动管理列表
     */
    @Override
    public List<ActivityVo> queryList(ActivityBo bo) {
        LambdaQueryWrapper<Activity> lqw = buildQueryWrapper(bo);
        return baseMapper.selectVoList(lqw);
    }

    private LambdaQueryWrapper<Activity> buildQueryWrapper(ActivityBo bo) {
        // Map<String, Object> params = bo.getParams();
        LambdaQueryWrapper<Activity> lqw = Wrappers.lambdaQuery();
        lqw.like(StringUtils.isNotBlank(bo.getName()), Activity::getName, bo.getName());
        lqw.eq(StringUtils.isNotBlank(bo.getAddress()), Activity::getAddress, bo.getAddress());
        lqw.eq(StringUtils.isNotBlank(bo.getImgUrl()), Activity::getImgUrl, bo.getImgUrl());
        lqw.eq(StringUtils.isNotBlank(bo.getDescs()), Activity::getDescs, bo.getDescs());
        lqw.eq(bo.getStartTime() != null, Activity::getStartTime, bo.getStartTime());
        lqw.eq(bo.getEndTime() != null, Activity::getEndTime, bo.getEndTime());
        return lqw;
    }

    /**
     * 新增校友活动管理
     */
    @Override
    public Boolean insertByBo(ActivityBo bo) {
        Activity add = BeanUtil.toBean(bo, Activity.class);
        validEntityBeforeSave(add);
        boolean flag = baseMapper.insert(add) > 0;
        if (flag) {
            bo.setId(add.getId());
        }
        return flag;
    }

    /**
     * 修改校友活动管理
     */
    @Override
    public Boolean updateByBo(ActivityBo bo) {
        Activity update = BeanUtil.toBean(bo, Activity.class);
        validEntityBeforeSave(update);
        return baseMapper.updateById(update) > 0;
    }

    /**
     * 保存前的数据校验
     */
    private void validEntityBeforeSave(Activity entity){
        //TODO 做一些数据校验,如唯一约束
    }

    /**
     * 批量删除校友活动管理
     */
    @Override
    public Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid) {
        if(isValid){
            //TODO 做一些业务上的校验,判断是否需要校验
        }
        return baseMapper.deleteBatchIds(ids) > 0;
    }
}
