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
import com.ym.vaccine.domain.bo.YmWorkerBo;
import com.ym.vaccine.domain.vo.YmWorkerVo;
import com.ym.vaccine.domain.YmWorker;
import com.ym.vaccine.mapper.YmWorkerMapper;
import com.ym.vaccine.service.IYmWorkerService;

import java.util.List;
import java.util.Map;
import java.util.Collection;

/**
 * 医护人员信息Service业务层处理
 *
 * @author ym
 * @date 2024-01-29
 */
@RequiredArgsConstructor
@Service
public class YmWorkerServiceImpl implements IYmWorkerService {

    private final YmWorkerMapper baseMapper;

    /**
     * 查询医护人员信息
     */
    @Override
    public YmWorkerVo queryById(Long id){
        return baseMapper.selectVoById(id);
    }

    /**
     * 查询医护人员信息列表
     */
    @Override
    public TableDataInfo<YmWorkerVo> queryPageList(YmWorkerBo bo, PageQuery pageQuery) {
        LambdaQueryWrapper<YmWorker> lqw = buildQueryWrapper(bo);
        Page<YmWorkerVo> result = baseMapper.selectVoPage(pageQuery.build(), lqw);
        return TableDataInfo.build(result);
    }

    /**
     * 查询医护人员信息列表
     */
    @Override
    public List<YmWorkerVo> queryList(YmWorkerBo bo) {
        LambdaQueryWrapper<YmWorker> lqw = buildQueryWrapper(bo);
        return baseMapper.selectVoList(lqw);
    }

    private LambdaQueryWrapper<YmWorker> buildQueryWrapper(YmWorkerBo bo) {
        Map<String, Object> params = bo.getParams();
        LambdaQueryWrapper<YmWorker> lqw = Wrappers.lambdaQuery();
        lqw.like(StringUtils.isNotBlank(bo.getUsername()), YmWorker::getUsername, bo.getUsername());
        lqw.eq(StringUtils.isNotBlank(bo.getPassword()), YmWorker::getPassword, bo.getPassword());
        lqw.like(StringUtils.isNotBlank(bo.getRealName()), YmWorker::getRealName, bo.getRealName());
        lqw.eq(StringUtils.isNotBlank(bo.getCardId()), YmWorker::getCardId, bo.getCardId());
        lqw.eq(StringUtils.isNotBlank(bo.getPhone()), YmWorker::getPhone, bo.getPhone());
        lqw.eq(bo.getInoculateSiteId() != null, YmWorker::getInoculateSiteId, bo.getInoculateSiteId());
        return lqw;
    }

    /**
     * 新增医护人员信息
     */
    @Override
    public Boolean insertByBo(YmWorkerBo bo) {
        YmWorker add = BeanUtil.toBean(bo, YmWorker.class);
        validEntityBeforeSave(add);
        boolean flag = baseMapper.insert(add) > 0;
        if (flag) {
            bo.setId(add.getId());
        }
        return flag;
    }

    /**
     * 修改医护人员信息
     */
    @Override
    public Boolean updateByBo(YmWorkerBo bo) {
        YmWorker update = BeanUtil.toBean(bo, YmWorker.class);
        validEntityBeforeSave(update);
        return baseMapper.updateById(update) > 0;
    }

    /**
     * 保存前的数据校验
     */
    private void validEntityBeforeSave(YmWorker entity){
        //TODO 做一些数据校验,如唯一约束
    }

    /**
     * 批量删除医护人员信息
     */
    @Override
    public Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid) {
        if(isValid){
            //TODO 做一些业务上的校验,判断是否需要校验
        }
        return baseMapper.deleteBatchIds(ids) > 0;
    }
}
