package com.ym.vaccine.service.impl;

import cn.hutool.core.bean.BeanUtil;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ym.common.core.page.TableDataInfo;
import com.ym.common.core.domain.PageQuery;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.ym.vaccine.mapper.YmPlanMapper;
import com.ym.vaccine.service.IYmPlanService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Collection;

/**
 * 预约计划管理Service业务层处理
 *
 * @author ym
 * @date 2024-01-29
 */
@RequiredArgsConstructor
@Service
public class YmPlanServiceImpl extends ServiceImpl<YmPlanMapper,YmPlan> implements IYmPlanService {

    private final YmPlanMapper baseMapper;

    /**
     * 查询预约计划管理
     */
    @Override
    public YmPlanVo queryById(Long id){
        return baseMapper.selectVoById(id);
    }

    /**
     * 查询预约计划管理列表
     */
    @Override
    public TableDataInfo<YmPlanVo> queryPageList(YmPlanBo bo, PageQuery pageQuery) {
        LambdaQueryWrapper<YmPlan> lqw = buildQueryWrapper(bo);
        Page<YmPlanVo> result = baseMapper.selectVoPage(pageQuery.build(), lqw);
        return TableDataInfo.build(result);
    }

    /**
     * 查询预约计划管理列表
     */
    @Override
    public List<YmPlanVo> queryList(YmPlanBo bo) {
        LambdaQueryWrapper<YmPlan> lqw = buildQueryWrapper(bo);
        return baseMapper.selectVoList(lqw);
    }

    private LambdaQueryWrapper<YmPlan> buildQueryWrapper(YmPlanBo bo) {
        // Map<String, Object> params = bo.getParams();
        LambdaQueryWrapper<YmPlan> lqw = Wrappers.lambdaQuery();
        lqw.eq(bo.getStartDate() != null, YmPlan::getStartDate, bo.getStartDate());
        lqw.eq(bo.getEndDate() != null, YmPlan::getEndDate, bo.getEndDate());
        lqw.eq(bo.getStartTimeMorning() != null, YmPlan::getStartTimeMorning, bo.getStartTimeMorning());
        lqw.eq(bo.getEndTimeMorning() != null, YmPlan::getEndTimeMorning, bo.getEndTimeMorning());
        lqw.eq(bo.getStartTimeAfternoon() != null, YmPlan::getStartTimeAfternoon, bo.getStartTimeAfternoon());
        lqw.eq(bo.getEndTimeAfternoon() != null, YmPlan::getEndTimeAfternoon, bo.getEndTimeAfternoon());
        lqw.eq(bo.getVaccineId() != null, YmPlan::getVaccineId, bo.getVaccineId());
        lqw.eq(bo.getInoculateSiteId() != null, YmPlan::getInoculateSiteId, bo.getInoculateSiteId());
        lqw.eq(bo.getAmount() != null, YmPlan::getAmount, bo.getAmount());
        lqw.eq(bo.getStartTimeEvening() != null, YmPlan::getStartTimeEvening, bo.getStartTimeEvening());
        lqw.eq(bo.getEndTimeEvening() != null, YmPlan::getEndTimeEvening, bo.getEndTimeEvening());
        lqw.eq(bo.getMorningLimit() != null, YmPlan::getMorningLimit, bo.getMorningLimit());
        lqw.eq(bo.getAfternoonLimit() != null, YmPlan::getAfternoonLimit, bo.getAfternoonLimit());
        lqw.eq(bo.getEveningLimit() != null, YmPlan::getEveningLimit, bo.getEveningLimit());
        return lqw;
    }

    /**
     * 新增预约计划管理
     */
    @Override
    public Boolean insertByBo(YmPlanBo bo) {
        YmPlan add = BeanUtil.toBean(bo, YmPlan.class);
        validEntityBeforeSave(add);
        boolean flag = baseMapper.insert(add) > 0;
        if (flag) {
            bo.setId(add.getId());
        }
        return flag;
    }

    /**
     * 修改预约计划管理
     */
    @Override
    public Boolean updateByBo(YmPlanBo bo) {
        YmPlan update = BeanUtil.toBean(bo, YmPlan.class);
        validEntityBeforeSave(update);
        return baseMapper.updateById(update) > 0;
    }

    /**
     * 保存前的数据校验
     */
    private void validEntityBeforeSave(YmPlan entity){
        //TODO 做一些数据校验,如唯一约束
    }

    /**
     * 批量删除预约计划管理
     */
    @Override
    public Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid) {
        if(isValid){
            //TODO 做一些业务上的校验,判断是否需要校验
        }
        return baseMapper.deleteBatchIds(ids) > 0;
    }
}
