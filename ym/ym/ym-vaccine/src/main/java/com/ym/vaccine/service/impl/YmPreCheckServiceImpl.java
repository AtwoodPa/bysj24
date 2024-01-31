package com.ym.vaccine.service.impl;

import cn.hutool.core.bean.BeanUtil;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ym.common.utils.StringUtils;
import com.ym.common.core.page.TableDataInfo;
import com.ym.common.core.domain.PageQuery;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import com.ym.vaccine.domain.bo.YmPreCheckBo;
import com.ym.vaccine.domain.vo.YmPreCheckVo;
import com.ym.vaccine.domain.YmPreCheck;
import com.ym.vaccine.mapper.YmPreCheckMapper;
import com.ym.vaccine.service.IYmPreCheckService;

import java.util.List;
import java.util.Map;
import java.util.Collection;

/**
 * 预检信息查询Service业务层处理
 *
 * @author ym
 * @date 2024-01-29
 */
@RequiredArgsConstructor
@Service
public class YmPreCheckServiceImpl extends ServiceImpl<YmPreCheckMapper,YmPreCheck> implements IYmPreCheckService {

    private final YmPreCheckMapper baseMapper;

    /**
     * 查询预检信息查询
     */
    @Override
    public YmPreCheckVo queryById(Long id){
        return baseMapper.selectVoById(id);
    }

    /**
     * 查询预检信息查询列表
     */
    @Override
    public TableDataInfo<YmPreCheckVo> queryPageList(YmPreCheckBo bo, PageQuery pageQuery) {
        LambdaQueryWrapper<YmPreCheck> lqw = buildQueryWrapper(bo);
        Page<YmPreCheckVo> result = baseMapper.selectVoPage(pageQuery.build(), lqw);
        return TableDataInfo.build(result);
    }

    /**
     * 查询预检信息查询列表
     */
    @Override
    public List<YmPreCheckVo> queryList(YmPreCheckBo bo) {
        LambdaQueryWrapper<YmPreCheck> lqw = buildQueryWrapper(bo);
        return baseMapper.selectVoList(lqw);
    }

    private LambdaQueryWrapper<YmPreCheck> buildQueryWrapper(YmPreCheckBo bo) {
//        Map<String, Object> params = bo.getParams();
        LambdaQueryWrapper<YmPreCheck> lqw = Wrappers.lambdaQuery();
        lqw.eq(bo.getIsMedicine() != null, YmPreCheck::getIsMedicine, bo.getIsMedicine());
        lqw.eq(StringUtils.isNotBlank(bo.getMedicine()), YmPreCheck::getMedicine, bo.getMedicine());
        lqw.eq(bo.getIsContraindication() != null, YmPreCheck::getIsContraindication, bo.getIsContraindication());
        lqw.eq(StringUtils.isNotBlank(bo.getContraindication()), YmPreCheck::getContraindication, bo.getContraindication());
        lqw.eq(bo.getBloodPressureHigh() != null, YmPreCheck::getBloodPressureHigh, bo.getBloodPressureHigh());
        lqw.eq(bo.getBloodPressureLow() != null, YmPreCheck::getBloodPressureLow, bo.getBloodPressureLow());
        lqw.eq(bo.getTemperature() != null, YmPreCheck::getTemperature, bo.getTemperature());
        lqw.eq(bo.getWorkerId() != null, YmPreCheck::getWorkerId, bo.getWorkerId());
        lqw.eq(bo.getAppointId() != null, YmPreCheck::getAppointId, bo.getAppointId());
        lqw.eq(StringUtils.isNotBlank(bo.getNote()), YmPreCheck::getNote, bo.getNote());
        return lqw;
    }

    /**
     * 新增预检信息查询
     */
    @Override
    public Boolean insertByBo(YmPreCheckBo bo) {
        YmPreCheck add = BeanUtil.toBean(bo, YmPreCheck.class);
        validEntityBeforeSave(add);
        boolean flag = baseMapper.insert(add) > 0;
        if (flag) {
            bo.setId(add.getId());
        }
        return flag;
    }

    /**
     * 修改预检信息查询
     */
    @Override
    public Boolean updateByBo(YmPreCheckBo bo) {
        YmPreCheck update = BeanUtil.toBean(bo, YmPreCheck.class);
        validEntityBeforeSave(update);
        return baseMapper.updateById(update) > 0;
    }

    /**
     * 保存前的数据校验
     */
    private void validEntityBeforeSave(YmPreCheck entity){
        //TODO 做一些数据校验,如唯一约束
    }

    /**
     * 批量删除预检信息查询
     */
    @Override
    public Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid) {
        if(isValid){
            //TODO 做一些业务上的校验,判断是否需要校验
        }
        return baseMapper.deleteBatchIds(ids) > 0;
    }
}
