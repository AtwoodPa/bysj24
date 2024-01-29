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
import com.ym.vaccine.domain.bo.YmInoculateSiteBo;
import com.ym.vaccine.domain.vo.YmInoculateSiteVo;
import com.ym.vaccine.domain.YmInoculateSite;
import com.ym.vaccine.mapper.YmInoculateSiteMapper;
import com.ym.vaccine.service.IYmInoculateSiteService;

import java.util.List;
import java.util.Map;
import java.util.Collection;

/**
 * 疫苗接种站点管理Service业务层处理
 *
 * @author ym
 * @date 2024-01-29
 */
@RequiredArgsConstructor
@Service
public class YmInoculateSiteServiceImpl implements IYmInoculateSiteService {

    private final YmInoculateSiteMapper baseMapper;

    /**
     * 查询疫苗接种站点管理
     */
    @Override
    public YmInoculateSiteVo queryById(Long id){
        return baseMapper.selectVoById(id);
    }

    /**
     * 查询疫苗接种站点管理列表
     */
    @Override
    public TableDataInfo<YmInoculateSiteVo> queryPageList(YmInoculateSiteBo bo, PageQuery pageQuery) {
        LambdaQueryWrapper<YmInoculateSite> lqw = buildQueryWrapper(bo);
        Page<YmInoculateSiteVo> result = baseMapper.selectVoPage(pageQuery.build(), lqw);
        return TableDataInfo.build(result);
    }

    /**
     * 查询疫苗接种站点管理列表
     */
    @Override
    public List<YmInoculateSiteVo> queryList(YmInoculateSiteBo bo) {
        LambdaQueryWrapper<YmInoculateSite> lqw = buildQueryWrapper(bo);
        return baseMapper.selectVoList(lqw);
    }

    private LambdaQueryWrapper<YmInoculateSite> buildQueryWrapper(YmInoculateSiteBo bo) {
        Map<String, Object> params = bo.getParams();
        LambdaQueryWrapper<YmInoculateSite> lqw = Wrappers.lambdaQuery();
        lqw.like(StringUtils.isNotBlank(bo.getName()), YmInoculateSite::getName, bo.getName());
        lqw.eq(StringUtils.isNotBlank(bo.getProvinceCode()), YmInoculateSite::getProvinceCode, bo.getProvinceCode());
        lqw.eq(StringUtils.isNotBlank(bo.getCityCode()), YmInoculateSite::getCityCode, bo.getCityCode());
        lqw.eq(StringUtils.isNotBlank(bo.getDistrictCode()), YmInoculateSite::getDistrictCode, bo.getDistrictCode());
        lqw.eq(StringUtils.isNotBlank(bo.getAddress()), YmInoculateSite::getAddress, bo.getAddress());
        lqw.eq(StringUtils.isNotBlank(bo.getImgUrl()), YmInoculateSite::getImgUrl, bo.getImgUrl());
        return lqw;
    }

    /**
     * 新增疫苗接种站点管理
     */
    @Override
    public Boolean insertByBo(YmInoculateSiteBo bo) {
        YmInoculateSite add = BeanUtil.toBean(bo, YmInoculateSite.class);
        validEntityBeforeSave(add);
        boolean flag = baseMapper.insert(add) > 0;
        if (flag) {
            bo.setId(add.getId());
        }
        return flag;
    }

    /**
     * 修改疫苗接种站点管理
     */
    @Override
    public Boolean updateByBo(YmInoculateSiteBo bo) {
        YmInoculateSite update = BeanUtil.toBean(bo, YmInoculateSite.class);
        validEntityBeforeSave(update);
        return baseMapper.updateById(update) > 0;
    }

    /**
     * 保存前的数据校验
     */
    private void validEntityBeforeSave(YmInoculateSite entity){
        //TODO 做一些数据校验,如唯一约束
    }

    /**
     * 批量删除疫苗接种站点管理
     */
    @Override
    public Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid) {
        if(isValid){
            //TODO 做一些业务上的校验,判断是否需要校验
        }
        return baseMapper.deleteBatchIds(ids) > 0;
    }
}
