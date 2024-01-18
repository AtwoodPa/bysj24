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
import com.ym.vaccine.domain.bo.YmManufacturerBo;
import com.ym.vaccine.domain.vo.YmManufacturerVo;
import com.ym.vaccine.domain.YmManufacturer;
import com.ym.vaccine.mapper.YmManufacturerMapper;
import com.ym.vaccine.service.IYmManufacturerService;

import java.util.List;
import java.util.Map;
import java.util.Collection;

/**
 * 疫苗厂家，存储疫苗厂家信息Service业务层处理
 *
 * @author ym
 * @date 2024-01-17
 */
@RequiredArgsConstructor
@Service
public class YmManufacturerServiceImpl implements IYmManufacturerService {

    private final YmManufacturerMapper baseMapper;

    /**
     * 查询疫苗厂家，存储疫苗厂家信息
     */
    @Override
    public YmManufacturerVo queryById(Long manufacturerId){
        return baseMapper.selectVoById(manufacturerId);
    }

    /**
     * 查询疫苗厂家，存储疫苗厂家信息列表
     */
    @Override
    public TableDataInfo<YmManufacturerVo> queryPageList(YmManufacturerBo bo, PageQuery pageQuery) {
        LambdaQueryWrapper<YmManufacturer> lqw = buildQueryWrapper(bo);
        Page<YmManufacturerVo> result = baseMapper.selectVoPage(pageQuery.build(), lqw);
        return TableDataInfo.build(result);
    }

    /**
     * 查询疫苗厂家，存储疫苗厂家信息列表
     */
    @Override
    public List<YmManufacturerVo> queryList(YmManufacturerBo bo) {
        LambdaQueryWrapper<YmManufacturer> lqw = buildQueryWrapper(bo);
        return baseMapper.selectVoList(lqw);
    }

    private LambdaQueryWrapper<YmManufacturer> buildQueryWrapper(YmManufacturerBo bo) {
        LambdaQueryWrapper<YmManufacturer> lqw = Wrappers.lambdaQuery();
        lqw.like(StringUtils.isNotBlank(bo.getFacturerName()), YmManufacturer::getFacturerName, bo.getFacturerName());
        lqw.eq(StringUtils.isNotBlank(bo.getAddress()), YmManufacturer::getAddress, bo.getAddress());
        lqw.eq(StringUtils.isNotBlank(bo.getDescription()), YmManufacturer::getDescription, bo.getDescription());
        return lqw;
    }

    /**
     * 新增疫苗厂家，存储疫苗厂家信息
     */
    @Override
    public Boolean insertByBo(YmManufacturerBo bo) {
        YmManufacturer add = BeanUtil.toBean(bo, YmManufacturer.class);
        validEntityBeforeSave(add);
        boolean flag = baseMapper.insert(add) > 0;
        if (flag) {
            bo.setManufacturerId(add.getManufacturerId());
        }
        return flag;
    }

    /**
     * 修改疫苗厂家，存储疫苗厂家信息
     */
    @Override
    public Boolean updateByBo(YmManufacturerBo bo) {
        YmManufacturer update = BeanUtil.toBean(bo, YmManufacturer.class);
        validEntityBeforeSave(update);
        return baseMapper.updateById(update) > 0;
    }

    /**
     * 保存前的数据校验
     */
    private void validEntityBeforeSave(YmManufacturer entity){
        //TODO 做一些数据校验,如唯一约束
    }

    /**
     * 批量删除疫苗厂家，存储疫苗厂家信息
     */
    @Override
    public Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid) {
        if(isValid){
            //TODO 做一些业务上的校验,判断是否需要校验
        }
        return baseMapper.deleteBatchIds(ids) > 0;
    }
}
