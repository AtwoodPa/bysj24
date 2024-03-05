package com.alumni.core.service.impl;

import cn.hutool.core.bean.BeanUtil;
import com.alumni.common.utils.StringUtils;
import com.alumni.common.core.page.TableDataInfo;
import com.alumni.common.core.domain.PageQuery;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import com.alumni.core.domain.bo.StyleBo;
import com.alumni.core.domain.vo.StyleVo;
import com.alumni.core.domain.Style;
import com.alumni.core.mapper.StyleMapper;
import com.alumni.core.service.IStyleService;

import java.util.List;
import java.util.Map;
import java.util.Collection;

/**
 * 校友风采管理Service业务层处理
 *
 * @author alumni
 * @date 2024-03-03
 */
@RequiredArgsConstructor
@Service
public class StyleServiceImpl implements IStyleService {

    private final StyleMapper baseMapper;

    /**
     * 查询校友风采管理
     */
    @Override
    public StyleVo queryById(Long id){
        return baseMapper.selectVoById(id);
    }

    /**
     * 查询校友风采管理列表
     */
    @Override
    public TableDataInfo<StyleVo> queryPageList(StyleBo bo, PageQuery pageQuery) {
        LambdaQueryWrapper<Style> lqw = buildQueryWrapper(bo);
        Page<StyleVo> result = baseMapper.selectVoPage(pageQuery.build(), lqw);
        return TableDataInfo.build(result);
    }

    /**
     * 查询校友风采管理列表
     */
    @Override
    public List<StyleVo> queryList(StyleBo bo) {
        LambdaQueryWrapper<Style> lqw = buildQueryWrapper(bo);
        return baseMapper.selectVoList(lqw);
    }

    private LambdaQueryWrapper<Style> buildQueryWrapper(StyleBo bo) {
        // Map<String, Object> params = bo.getParams();
        LambdaQueryWrapper<Style> lqw = Wrappers.lambdaQuery();
        lqw.like(StringUtils.isNotBlank(bo.getName()), Style::getName, bo.getName());
        lqw.eq(StringUtils.isNotBlank(bo.getDescs()), Style::getDescs, bo.getDescs());
        lqw.eq(bo.getCreateTime() != null, Style::getCreateTime, bo.getCreateTime());
        lqw.eq(StringUtils.isNotBlank(bo.getImgUrl()), Style::getImgUrl, bo.getImgUrl());
        return lqw;
    }

    /**
     * 新增校友风采管理
     */
    @Override
    public Boolean insertByBo(StyleBo bo) {
        Style add = BeanUtil.toBean(bo, Style.class);
        validEntityBeforeSave(add);
        boolean flag = baseMapper.insert(add) > 0;
        if (flag) {
            bo.setId(add.getId());
        }
        return flag;
    }

    /**
     * 修改校友风采管理
     */
    @Override
    public Boolean updateByBo(StyleBo bo) {
        Style update = BeanUtil.toBean(bo, Style.class);
        validEntityBeforeSave(update);
        return baseMapper.updateById(update) > 0;
    }

    /**
     * 保存前的数据校验
     */
    private void validEntityBeforeSave(Style entity){
        //TODO 做一些数据校验,如唯一约束
    }

    /**
     * 批量删除校友风采管理
     */
    @Override
    public Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid) {
        if(isValid){
            //TODO 做一些业务上的校验,判断是否需要校验
        }
        return baseMapper.deleteBatchIds(ids) > 0;
    }
}
