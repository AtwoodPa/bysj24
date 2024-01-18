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
import com.ym.vaccine.domain.bo.YmVaccinationRecordBo;
import com.ym.vaccine.domain.vo.YmVaccinationRecordVo;
import com.ym.vaccine.domain.YmVaccinationRecord;
import com.ym.vaccine.mapper.YmVaccinationRecordMapper;
import com.ym.vaccine.service.IYmVaccinationRecordService;

import java.util.List;
import java.util.Map;
import java.util.Collection;

/**
 * 接种记录，存储用户接种记录Service业务层处理
 *
 * @author ym
 * @date 2024-01-18
 */
@RequiredArgsConstructor
@Service
public class YmVaccinationRecordServiceImpl implements IYmVaccinationRecordService {

    private final YmVaccinationRecordMapper baseMapper;

    /**
     * 查询接种记录，存储用户接种记录
     */
    @Override
    public YmVaccinationRecordVo queryById(Long recordId){
        return baseMapper.selectVoById(recordId);
    }

    /**
     * 查询接种记录，存储用户接种记录列表
     */
    @Override
    public TableDataInfo<YmVaccinationRecordVo> queryPageList(YmVaccinationRecordBo bo, PageQuery pageQuery) {
        LambdaQueryWrapper<YmVaccinationRecord> lqw = buildQueryWrapper(bo);
        Page<YmVaccinationRecordVo> result = baseMapper.selectVoPage(pageQuery.build(), lqw);
        return TableDataInfo.build(result);
    }

    /**
     * 查询接种记录，存储用户接种记录列表
     */
    @Override
    public List<YmVaccinationRecordVo> queryList(YmVaccinationRecordBo bo) {
        LambdaQueryWrapper<YmVaccinationRecord> lqw = buildQueryWrapper(bo);
        return baseMapper.selectVoList(lqw);
    }

    private LambdaQueryWrapper<YmVaccinationRecord> buildQueryWrapper(YmVaccinationRecordBo bo) {
        LambdaQueryWrapper<YmVaccinationRecord> lqw = Wrappers.lambdaQuery();
        lqw.eq(bo.getUserId() != null, YmVaccinationRecord::getUserId, bo.getUserId());
        lqw.eq(bo.getVaccineId() != null, YmVaccinationRecord::getVaccineId, bo.getVaccineId());
        return lqw;
    }

    /**
     * 新增接种记录，存储用户接种记录
     */
    @Override
    public Boolean insertByBo(YmVaccinationRecordBo bo) {
        YmVaccinationRecord add = BeanUtil.toBean(bo, YmVaccinationRecord.class);
        validEntityBeforeSave(add);
        boolean flag = baseMapper.insert(add) > 0;
        if (flag) {
            bo.setRecordId(add.getRecordId());
        }
        return flag;
    }

    /**
     * 修改接种记录，存储用户接种记录
     */
    @Override
    public Boolean updateByBo(YmVaccinationRecordBo bo) {
        YmVaccinationRecord update = BeanUtil.toBean(bo, YmVaccinationRecord.class);
        validEntityBeforeSave(update);
        return baseMapper.updateById(update) > 0;
    }

    /**
     * 保存前的数据校验
     */
    private void validEntityBeforeSave(YmVaccinationRecord entity){
        //TODO 做一些数据校验,如唯一约束
    }

    /**
     * 批量删除接种记录，存储用户接种记录
     */
    @Override
    public Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid) {
        if(isValid){
            //TODO 做一些业务上的校验,判断是否需要校验
        }
        return baseMapper.deleteBatchIds(ids) > 0;
    }
}
