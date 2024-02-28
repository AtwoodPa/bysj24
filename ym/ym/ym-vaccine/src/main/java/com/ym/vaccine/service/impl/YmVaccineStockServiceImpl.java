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
import com.ym.vaccine.domain.bo.YmVaccineStockBo;
import com.ym.vaccine.domain.vo.YmVaccineStockVo;
import com.ym.vaccine.domain.YmVaccineStock;
import com.ym.vaccine.mapper.YmVaccineStockMapper;
import com.ym.vaccine.service.IYmVaccineStockService;

import java.util.List;
import java.util.Map;
import java.util.Collection;

/**
 * 疫苗出入库Service业务层处理
 *
 * @author ym
 * @date 2024-02-25
 */
@RequiredArgsConstructor
@Service
public class YmVaccineStockServiceImpl implements IYmVaccineStockService {

    private final YmVaccineStockMapper baseMapper;

    /**
     * 查询疫苗出入库
     */
    @Override
    public YmVaccineStockVo queryById(Long siteId){
        return baseMapper.selectVoById(siteId);
    }

    /**
     * 查询疫苗出入库列表
     */
    @Override
    public TableDataInfo<YmVaccineStockVo> queryPageList(YmVaccineStockBo bo, PageQuery pageQuery) {
        LambdaQueryWrapper<YmVaccineStock> lqw = buildQueryWrapper(bo);
        Page<YmVaccineStockVo> result = baseMapper.selectVoPage(pageQuery.build(), lqw);
        return TableDataInfo.build(result);
    }

    /**
     * 查询疫苗出入库列表
     */
    @Override
    public List<YmVaccineStockVo> queryList(YmVaccineStockBo bo) {
        LambdaQueryWrapper<YmVaccineStock> lqw = buildQueryWrapper(bo);
        return baseMapper.selectVoList(lqw);
    }

    private LambdaQueryWrapper<YmVaccineStock> buildQueryWrapper(YmVaccineStockBo bo) {
        // Map<String, Object> params = bo.getParams();
        LambdaQueryWrapper<YmVaccineStock> lqw = Wrappers.lambdaQuery();
        lqw.eq(bo.getSiteAmount() != null, YmVaccineStock::getSiteAmount, bo.getSiteAmount());
        return lqw;
    }

    /**
     * 新增疫苗出库
     *
     * 分配疫苗到接种点
     */
    @Override
    public Boolean insertByBo(YmVaccineStockBo bo) {
        YmVaccineStock add = BeanUtil.toBean(bo, YmVaccineStock.class);
        validEntityBeforeSave(add);
        boolean flag = baseMapper.insert(add) > 0;
        if (flag) {
            bo.setId(add.getId());
        }
        return flag;
    }

    /**
     * 修改疫苗出入库
     */
    @Override
    public Boolean updateByBo(YmVaccineStockBo bo) {
        YmVaccineStock update = BeanUtil.toBean(bo, YmVaccineStock.class);
        validEntityBeforeSave(update);
        return baseMapper.updateById(update) > 0;
    }

    /**
     * 保存前的数据校验
     */
    private void validEntityBeforeSave(YmVaccineStock entity){
        //TODO 做一些数据校验,如唯一约束
        // siteId和vaccineId组合是唯一的,则需要校验
        Long siteId = entity.getSiteId();
        Long vaccineId = entity.getVaccineId();
        if (siteId != null && vaccineId != null) {
            LambdaQueryWrapper<YmVaccineStock> lqw = Wrappers.lambdaQuery();
            lqw.eq(YmVaccineStock::getSiteId, siteId);
            lqw.eq(YmVaccineStock::getVaccineId, vaccineId);
            if (entity.getId() != null) {
                lqw.ne(YmVaccineStock::getId, entity.getId());
            }
            int count = Math.toIntExact(baseMapper.selectCount(lqw));
            if (count > 0) {
                throw new RuntimeException("疫苗库存已存在");
            }
        }

    }

    /**
     * 批量删除疫苗出入库
     */
    @Override
    public Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid) {
        if(isValid){
            //TODO 做一些业务上的校验,判断是否需要校验
        }
        return baseMapper.deleteBatchIds(ids) > 0;
    }

    @Override
    public List<YmVaccineStockVo> vaccineBySiteId(Long siteId) {
        return baseMapper.vaccineBySiteId(siteId);
    }
}
