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
import com.ym.vaccine.domain.bo.YmPayBo;
import com.ym.vaccine.domain.vo.YmPayVo;
import com.ym.vaccine.domain.YmPay;
import com.ym.vaccine.mapper.YmPayMapper;
import com.ym.vaccine.service.IYmPayService;

import java.util.List;
import java.util.Map;
import java.util.Collection;

/**
 * 支付功能Service业务层处理
 *
 * @author ym
 * @date 2024-01-29
 */
@RequiredArgsConstructor
@Service
public class YmPayServiceImpl implements IYmPayService {

    private final YmPayMapper baseMapper;

    /**
     * 查询支付功能
     */
    @Override
    public YmPayVo queryById(Long id){
        return baseMapper.selectVoById(id);
    }

    /**
     * 查询支付功能列表
     */
    @Override
    public TableDataInfo<YmPayVo> queryPageList(YmPayBo bo, PageQuery pageQuery) {
        LambdaQueryWrapper<YmPay> lqw = buildQueryWrapper(bo);
        Page<YmPayVo> result = baseMapper.selectVoPage(pageQuery.build(), lqw);
        return TableDataInfo.build(result);
    }

    /**
     * 查询支付功能列表
     */
    @Override
    public List<YmPayVo> queryList(YmPayBo bo) {
        LambdaQueryWrapper<YmPay> lqw = buildQueryWrapper(bo);
        return baseMapper.selectVoList(lqw);
    }

    private LambdaQueryWrapper<YmPay> buildQueryWrapper(YmPayBo bo) {
        Map<String, Object> params = bo.getParams();
        LambdaQueryWrapper<YmPay> lqw = Wrappers.lambdaQuery();
        lqw.eq(bo.getCost() != null, YmPay::getCost, bo.getCost());
        lqw.eq(bo.getAppointId() != null, YmPay::getAppointId, bo.getAppointId());
        return lqw;
    }

    /**
     * 新增支付功能
     */
    @Override
    public Boolean insertByBo(YmPayBo bo) {
        YmPay add = BeanUtil.toBean(bo, YmPay.class);
        validEntityBeforeSave(add);
        boolean flag = baseMapper.insert(add) > 0;
        if (flag) {
            bo.setId(add.getId());
        }
        return flag;
    }

    /**
     * 修改支付功能
     */
    @Override
    public Boolean updateByBo(YmPayBo bo) {
        YmPay update = BeanUtil.toBean(bo, YmPay.class);
        validEntityBeforeSave(update);
        return baseMapper.updateById(update) > 0;
    }

    /**
     * 保存前的数据校验
     */
    private void validEntityBeforeSave(YmPay entity){
        //TODO 做一些数据校验,如唯一约束
    }

    /**
     * 批量删除支付功能
     */
    @Override
    public Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid) {
        if(isValid){
            //TODO 做一些业务上的校验,判断是否需要校验
        }
        return baseMapper.deleteBatchIds(ids) > 0;
    }
}
