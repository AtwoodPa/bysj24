package com.ym.vaccine.service.impl;

import cn.hutool.core.bean.BeanUtil;
import com.ym.common.utils.StringUtils;
import com.ym.common.core.page.TableDataInfo;
import com.ym.common.core.domain.PageQuery;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import com.ym.vaccine.domain.bo.YmObserveBo;
import com.ym.vaccine.domain.vo.YmObserveVo;
import com.ym.vaccine.domain.YmObserve;
import com.ym.vaccine.mapper.YmObserveMapper;
import com.ym.vaccine.service.IYmObserveService;

import java.util.List;
import java.util.Map;
import java.util.Collection;

/**
 * 留观查询Service业务层处理
 *
 * @author ym
 * @date 2024-01-29
 */
@RequiredArgsConstructor
@Service
public class YmObserveServiceImpl implements IYmObserveService {

    private final YmObserveMapper baseMapper;

    /**
     * 查询留观查询
     */
    @Override
    public YmObserveVo queryById(Long id){
        return baseMapper.selectVoById(id);
    }

    /**
     * 查询留观查询列表
     */
    @Override
    public TableDataInfo<YmObserveVo> queryPageList(YmObserveBo bo, PageQuery pageQuery) {
        LambdaQueryWrapper<YmObserve> lqw = buildQueryWrapper(bo);
        Page<YmObserveVo> result = baseMapper.selectVoPage(pageQuery.build(), lqw);
        return TableDataInfo.build(result);
    }

    /**
     * 查询留观查询列表
     */
    @Override
    public List<YmObserveVo> queryList(YmObserveBo bo) {
        LambdaQueryWrapper<YmObserve> lqw = buildQueryWrapper(bo);
        return baseMapper.selectVoList(lqw);
    }

    private LambdaQueryWrapper<YmObserve> buildQueryWrapper(YmObserveBo bo) {
//        Map<String, Object> params = bo.getParams();
        LambdaQueryWrapper<YmObserve> lqw = Wrappers.lambdaQuery();
        lqw.eq(bo.getWorkerId() != null, YmObserve::getWorkerId, bo.getWorkerId());
        lqw.eq(bo.getAppointId() != null, YmObserve::getAppointId, bo.getAppointId());
        lqw.eq(bo.getIsFinish() != null, YmObserve::getIsFinish, bo.getIsFinish());
        lqw.eq(StringUtils.isNotBlank(bo.getNote()), YmObserve::getNote, bo.getNote());
        lqw.eq(bo.getEndTime() != null, YmObserve::getEndTime, bo.getEndTime());
        return lqw;
    }

    /**
     * 新增留观查询
     */
    @Override
    public Boolean insertByBo(YmObserveBo bo) {
        YmObserve add = BeanUtil.toBean(bo, YmObserve.class);
        validEntityBeforeSave(add);
        boolean flag = baseMapper.insert(add) > 0;
        if (flag) {
            bo.setId(add.getId());
        }
        return flag;
    }

    /**
     * 修改留观查询
     */
    @Override
    public Boolean updateByBo(YmObserveBo bo) {
        YmObserve update = BeanUtil.toBean(bo, YmObserve.class);
        validEntityBeforeSave(update);
        return baseMapper.updateById(update) > 0;
    }

    /**
     * 保存前的数据校验
     */
    private void validEntityBeforeSave(YmObserve entity){
        //TODO 做一些数据校验,如唯一约束
    }

    /**
     * 批量删除留观查询
     */
    @Override
    public Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid) {
        if(isValid){
            //TODO 做一些业务上的校验,判断是否需要校验
        }
        return baseMapper.deleteBatchIds(ids) > 0;
    }
}
