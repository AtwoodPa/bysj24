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
import com.ym.vaccine.domain.bo.YmVaccineBo;
import com.ym.vaccine.domain.vo.YmVaccineVo;
import com.ym.vaccine.domain.YmVaccine;
import com.ym.vaccine.mapper.YmVaccineMapper;
import com.ym.vaccine.service.IYmVaccineService;

import java.util.List;
import java.util.Map;
import java.util.Collection;

/**
 * 疫苗，存储疫苗信息Service业务层处理
 *
 * @author ym
 * @date 2024-01-18
 */
@RequiredArgsConstructor
@Service
public class YmVaccineServiceImpl implements IYmVaccineService {

    private final YmVaccineMapper baseMapper;

    /**
     * 查询疫苗，存储疫苗信息
     */
    @Override
    public YmVaccineVo queryById(Long vaccineId){
        return baseMapper.selectVoById(vaccineId);
    }

    /**
     * 查询疫苗，存储疫苗信息列表
     */
    @Override
    public TableDataInfo<YmVaccineVo> queryPageList(YmVaccineBo bo, PageQuery pageQuery) {
        LambdaQueryWrapper<YmVaccine> lqw = buildQueryWrapper(bo);
        Page<YmVaccineVo> result = baseMapper.selectVoPage(pageQuery.build(), lqw);
        return TableDataInfo.build(result);
    }

    /**
     * 查询疫苗，存储疫苗信息列表
     */
    @Override
    public List<YmVaccineVo> queryList(YmVaccineBo bo) {
        LambdaQueryWrapper<YmVaccine> lqw = buildQueryWrapper(bo);
        return baseMapper.selectVoList(lqw);
    }

    private LambdaQueryWrapper<YmVaccine> buildQueryWrapper(YmVaccineBo bo) {
        LambdaQueryWrapper<YmVaccine> lqw = Wrappers.lambdaQuery();
        lqw.like(StringUtils.isNotBlank(bo.getVaccineName()), YmVaccine::getVaccineName, bo.getVaccineName());
        lqw.eq(bo.getTypeId() != null, YmVaccine::getTypeId, bo.getTypeId());
        lqw.eq(bo.getManufacturerId() != null, YmVaccine::getManufacturerId, bo.getManufacturerId());
        lqw.eq(StringUtils.isNotBlank(bo.getDescription()), YmVaccine::getDescription, bo.getDescription());
        return lqw;
    }

    /**
     * 新增疫苗，存储疫苗信息
     */
    @Override
    public Boolean insertByBo(YmVaccineBo bo) {
        YmVaccine add = BeanUtil.toBean(bo, YmVaccine.class);
        validEntityBeforeSave(add);
        boolean flag = baseMapper.insert(add) > 0;
        if (flag) {
            bo.setVaccineId(add.getVaccineId());
        }
        return flag;
    }

    /**
     * 修改疫苗，存储疫苗信息
     */
    @Override
    public Boolean updateByBo(YmVaccineBo bo) {
        YmVaccine update = BeanUtil.toBean(bo, YmVaccine.class);
        validEntityBeforeSave(update);
        return baseMapper.updateById(update) > 0;
    }

    /**
     * 保存前的数据校验
     */
    private void validEntityBeforeSave(YmVaccine entity){
        //TODO 做一些数据校验,如唯一约束
    }

    /**
     * 批量删除疫苗，存储疫苗信息
     */
    @Override
    public Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid) {
        if(isValid){
            //TODO 做一些业务上的校验,判断是否需要校验
        }
        return baseMapper.deleteBatchIds(ids) > 0;
    }
}
