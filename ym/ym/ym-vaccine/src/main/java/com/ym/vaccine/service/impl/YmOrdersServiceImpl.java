package com.ym.vaccine.service.impl;

import cn.hutool.core.bean.BeanUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.ym.common.core.domain.PageQuery;
import com.ym.common.core.page.TableDataInfo;
import com.ym.common.utils.StringUtils;
import com.ym.vaccine.domain.YmOrders;
import com.ym.vaccine.domain.bo.YmOrdersBo;
import com.ym.vaccine.domain.vo.YmOrdersVo;
import com.ym.vaccine.mapper.YmOrdersMapper;
import com.ym.vaccine.service.IYmOrdersService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Collection;
import java.util.List;

/**
 * 订单管理Service业务层处理
 *
 * @author ym
 * @date 2024-02-19
 */
@RequiredArgsConstructor
@Service
public class YmOrdersServiceImpl implements IYmOrdersService {

    private final YmOrdersMapper baseMapper;

    /**
     * 查询订单管理
     */
    @Override
    public YmOrdersVo queryById(Long id) {
        return baseMapper.selectVoById(id);
    }

    /**
     * 查询订单管理列表
     */
    @Override
    public TableDataInfo<YmOrdersVo> queryPageList(YmOrdersBo bo, PageQuery pageQuery) {
        LambdaQueryWrapper<YmOrders> lqw = buildQueryWrapper(bo);
        Page<YmOrdersVo> result = baseMapper.selectVoPage(pageQuery.build(), lqw);
        return TableDataInfo.build(result);
    }

    /**
     * 查询订单管理列表
     */
    @Override
    public List<YmOrdersVo> queryList(YmOrdersBo bo) {
        LambdaQueryWrapper<YmOrders> lqw = buildQueryWrapper(bo);
        return baseMapper.selectVoList(lqw);
    }

    private LambdaQueryWrapper<YmOrders> buildQueryWrapper(YmOrdersBo bo) {
        // Map<String, Object> params = bo.getParams();
        LambdaQueryWrapper<YmOrders> lqw = Wrappers.lambdaQuery();
        lqw.eq(bo.getAppointId() != null, YmOrders::getAppointId, bo.getAppointId());
        lqw.eq(bo.getTotalAmount() != null, YmOrders::getTotalAmount, bo.getTotalAmount());
        lqw.eq(StringUtils.isNotBlank(bo.getPaymentMethod()), YmOrders::getPaymentMethod, bo.getPaymentMethod());
        lqw.eq(bo.getStatus() != null, YmOrders::getStatus, bo.getStatus());
        return lqw;
    }

    /**
     * 新增订单管理
     */
    @Override
    public Boolean insertByBo(YmOrdersBo bo) {
        YmOrders add = BeanUtil.toBean(bo, YmOrders.class);
        validEntityBeforeSave(add);
        boolean flag = baseMapper.insert(add) > 0;
        if (flag) {
            bo.setId(add.getId());
        }
        return flag;
    }

    /**
     * 修改订单管理
     */
    @Override
    public Boolean updateByBo(YmOrdersBo bo) {
        YmOrders update = BeanUtil.toBean(bo, YmOrders.class);
        validEntityBeforeSave(update);
        return baseMapper.updateById(update) > 0;
    }

    /**
     * 保存前的数据校验
     */
    private void validEntityBeforeSave(YmOrders entity) {
        //TODO 做一些数据校验,如唯一约束
    }

    /**
     * 批量删除订单管理
     */
    @Override
    public Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid) {
        if (isValid) {
            //TODO 做一些业务上的校验,判断是否需要校验
        }
        return baseMapper.deleteBatchIds(ids) > 0;
    }
}
