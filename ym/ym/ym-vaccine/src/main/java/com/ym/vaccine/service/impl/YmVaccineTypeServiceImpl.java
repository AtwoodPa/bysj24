package com.ym.vaccine.service.impl;

import cn.hutool.core.bean.BeanUtil;
import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.ym.common.utils.StringUtils;
import com.ym.common.core.page.TableDataInfo;
import com.ym.common.core.domain.PageQuery;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import com.ym.vaccine.domain.bo.YmVaccineTypeBo;
import com.ym.vaccine.domain.vo.YmVaccineTypeVo;
import com.ym.vaccine.domain.YmVaccineType;
import com.ym.vaccine.mapper.YmVaccineTypeMapper;
import com.ym.vaccine.service.IYmVaccineTypeService;

import java.util.List;
import java.util.Map;
import java.util.Collection;

/**
 * 疫苗类型，存储疫苗的类型信息Service业务层处理
 *
 * @author ym
 * @date 2024-01-17
 */
@RequiredArgsConstructor
@Service
public class YmVaccineTypeServiceImpl implements IYmVaccineTypeService {

    private final YmVaccineTypeMapper baseMapper;

    /**
     * 查询疫苗类型，存储疫苗的类型信息
     */
    @Override
    public YmVaccineTypeVo queryById(Long typeId){
        return baseMapper.selectVoById(typeId);
    }

    /**
     * 查询疫苗类型，存储疫苗的类型信息列表
     */
    @Override
    public TableDataInfo<YmVaccineTypeVo> queryPageList(YmVaccineTypeBo bo, PageQuery pageQuery) {
        LambdaQueryWrapper<YmVaccineType> lqw = buildQueryWrapper(bo);
        Page<YmVaccineTypeVo> result = baseMapper.selectVoPage(pageQuery.build(), lqw);
        return TableDataInfo.build(result);
    }

    /**
     * 查询疫苗类型，存储疫苗的类型信息列表
     */
    @Override
    public List<YmVaccineTypeVo> queryList(YmVaccineTypeBo bo) {
        LambdaQueryWrapper<YmVaccineType> lqw = buildQueryWrapper(bo);
        return baseMapper.selectVoList(lqw);
    }

    private LambdaQueryWrapper<YmVaccineType> buildQueryWrapper(YmVaccineTypeBo bo) {
       //
        LambdaQueryWrapper<YmVaccineType> lqw = Wrappers.lambdaQuery();
        lqw.like(StringUtils.isNotBlank(bo.getTypeName()), YmVaccineType::getTypeName, bo.getTypeName());
        return lqw;
    }

    /**
     * 新增疫苗类型，存储疫苗的类型信息
     */
    @Override
    public Boolean insertByBo(YmVaccineTypeBo bo) {
        YmVaccineType add = BeanUtil.toBean(bo, YmVaccineType.class);
        validEntityBeforeSave(add);
        boolean flag = baseMapper.insert(add) > 0;
        if (flag) {
            bo.setTypeId(add.getTypeId());
        }
        return flag;
    }

    /**
     * 修改疫苗类型，存储疫苗的类型信息
     */
    @Override
    public Boolean updateByBo(YmVaccineTypeBo bo) {
        YmVaccineType update = BeanUtil.toBean(bo, YmVaccineType.class);
        validEntityBeforeSave(update);
        return baseMapper.updateById(update) > 0;
    }

    /**
     * 保存前的数据校验
     */
    private void validEntityBeforeSave(YmVaccineType entity){
        //TODO 做一些数据校验,如唯一约束
    }

    /**
     * 批量删除疫苗类型，存储疫苗的类型信息
     */
    @Override
    public Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid) {
        if(isValid){
            //TODO 做一些业务上的校验,判断是否需要校验
        }
        return baseMapper.deleteBatchIds(ids) > 0;
    }
}
