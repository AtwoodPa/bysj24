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
import com.ym.vaccine.domain.bo.YmAppointmentBo;
import com.ym.vaccine.domain.vo.YmAppointmentVo;
import com.ym.vaccine.domain.YmAppointment;
import com.ym.vaccine.mapper.YmAppointmentMapper;
import com.ym.vaccine.service.IYmAppointmentService;

import java.util.List;
import java.util.Map;
import java.util.Collection;

/**
 * 疫苗预约，存储用户预约信息Service业务层处理
 *
 * @author ym
 * @date 2024-01-18
 */
@RequiredArgsConstructor
@Service
public class YmAppointmentServiceImpl implements IYmAppointmentService {

    private final YmAppointmentMapper baseMapper;

    /**
     * 查询疫苗预约，存储用户预约信息
     */
    @Override
    public YmAppointmentVo queryById(Long appointmentId){
        return baseMapper.selectVoById(appointmentId);
    }

    /**
     * 查询疫苗预约，存储用户预约信息列表
     */
    @Override
    public TableDataInfo<YmAppointmentVo> queryPageList(YmAppointmentBo bo, PageQuery pageQuery) {
        LambdaQueryWrapper<YmAppointment> lqw = buildQueryWrapper(bo);
        Page<YmAppointmentVo> result = baseMapper.selectVoPage(pageQuery.build(), lqw);
        return TableDataInfo.build(result);
    }

    /**
     * 查询疫苗预约，存储用户预约信息列表
     */
    @Override
    public List<YmAppointmentVo> queryList(YmAppointmentBo bo) {
        LambdaQueryWrapper<YmAppointment> lqw = buildQueryWrapper(bo);
        return baseMapper.selectVoList(lqw);
    }

    private LambdaQueryWrapper<YmAppointment> buildQueryWrapper(YmAppointmentBo bo) {
        LambdaQueryWrapper<YmAppointment> lqw = Wrappers.lambdaQuery();
        lqw.eq(bo.getUserId() != null, YmAppointment::getUserId, bo.getUserId());
        lqw.eq(bo.getVaccineId() != null, YmAppointment::getVaccineId, bo.getVaccineId());
        lqw.eq(bo.getStatus() != null, YmAppointment::getStatus, bo.getStatus());
        return lqw;
    }

    /**
     * 新增疫苗预约，存储用户预约信息
     */
    @Override
    public Boolean insertByBo(YmAppointmentBo bo) {
        YmAppointment add = BeanUtil.toBean(bo, YmAppointment.class);
        validEntityBeforeSave(add);
        boolean flag = baseMapper.insert(add) > 0;
        if (flag) {
            bo.setAppointmentId(add.getAppointmentId());
        }
        return flag;
    }

    /**
     * 修改疫苗预约，存储用户预约信息
     */
    @Override
    public Boolean updateByBo(YmAppointmentBo bo) {
        YmAppointment update = BeanUtil.toBean(bo, YmAppointment.class);
        validEntityBeforeSave(update);
        return baseMapper.updateById(update) > 0;
    }

    /**
     * 保存前的数据校验
     */
    private void validEntityBeforeSave(YmAppointment entity){
        //TODO 做一些数据校验,如唯一约束
    }

    /**
     * 批量删除疫苗预约，存储用户预约信息
     */
    @Override
    public Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid) {
        if(isValid){
            //TODO 做一些业务上的校验,判断是否需要校验
        }
        return baseMapper.deleteBatchIds(ids) > 0;
    }
}
