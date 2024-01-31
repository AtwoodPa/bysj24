package com.ym.vaccine.service.impl;

import cn.hutool.core.bean.BeanUtil;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ym.common.utils.StringUtils;
import com.ym.common.core.page.TableDataInfo;
import com.ym.common.core.domain.PageQuery;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.ym.vaccine.domain.Vaccine;
import com.ym.vaccine.domain.vo.VaccineVo;
import com.ym.vaccine.mapper.VaccineMapper;
import com.ym.vaccine.service.IVaccineService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import com.ym.vaccine.domain.bo.VaccineBo;


import java.util.List;
import java.util.Map;
import java.util.Collection;

/**
 * 疫苗信息Service业务层处理
 *
 * @author ym
 * @date 2024-01-29
 */
@RequiredArgsConstructor
@Service
public class VaccineServiceImpl extends ServiceImpl<VaccineMapper,Vaccine> implements IVaccineService {

    private final VaccineMapper baseMapper;

    /**
     * 查询疫苗信息
     */
    @Override
    public VaccineVo queryById(Long id){
        return baseMapper.selectVoById(id);
    }

    /**
     * 查询疫苗信息列表
     */
    @Override
    public TableDataInfo<VaccineVo> queryPageList(VaccineBo bo, PageQuery pageQuery) {
        LambdaQueryWrapper<Vaccine> lqw = buildQueryWrapper(bo);
        Page<VaccineVo> result = baseMapper.selectVoPage(pageQuery.build(), lqw);
        return TableDataInfo.build(result);
    }

    /**
     * 查询疫苗信息列表
     */
    @Override
    public List<VaccineVo> queryList(VaccineBo bo) {
        LambdaQueryWrapper<Vaccine> lqw = buildQueryWrapper(bo);
        return baseMapper.selectVoList(lqw);
    }

    private LambdaQueryWrapper<Vaccine> buildQueryWrapper(VaccineBo bo) {

        LambdaQueryWrapper<Vaccine> lqw = Wrappers.lambdaQuery();
        lqw.like(StringUtils.isNotBlank(bo.getName()), Vaccine::getName, bo.getName());
        lqw.eq(bo.getPrice() != null, Vaccine::getPrice, bo.getPrice());
        lqw.eq(StringUtils.isNotBlank(bo.getManufacturer()), Vaccine::getManufacturer, bo.getManufacturer());
        lqw.eq(StringUtils.isNotBlank(bo.getCategory()), Vaccine::getCategory, bo.getCategory());
        lqw.eq(StringUtils.isNotBlank(bo.getDetail()), Vaccine::getDetail, bo.getDetail());
        lqw.eq(StringUtils.isNotBlank(bo.getImgUrl()), Vaccine::getImgUrl, bo.getImgUrl());
        return lqw;
    }

    /**
     * 新增疫苗信息
     */
    @Override
    public Boolean insertByBo(VaccineBo bo) {
        Vaccine add = BeanUtil.toBean(bo, Vaccine.class);
        validEntityBeforeSave(add);
        boolean flag = baseMapper.insert(add) > 0;
        if (flag) {
            bo.setId(add.getId());
        }
        return flag;
    }

    /**
     * 修改疫苗信息
     */
    @Override
    public Boolean updateByBo(VaccineBo bo) {
        Vaccine update = BeanUtil.toBean(bo, Vaccine.class);
        validEntityBeforeSave(update);
        return baseMapper.updateById(update) > 0;
    }

    /**
     * 保存前的数据校验
     */
    private void validEntityBeforeSave(Vaccine entity){
        //TODO 做一些数据校验,如唯一约束
    }

    /**
     * 批量删除疫苗信息
     */
    @Override
    public Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid) {
        if(isValid){
            //TODO 做一些业务上的校验,判断是否需要校验
        }
        return baseMapper.deleteBatchIds(ids) > 0;
    }
}
