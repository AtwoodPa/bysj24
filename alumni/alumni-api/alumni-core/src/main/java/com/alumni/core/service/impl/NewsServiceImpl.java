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
import com.alumni.core.domain.bo.NewsBo;
import com.alumni.core.domain.vo.NewsVo;
import com.alumni.core.domain.News;
import com.alumni.core.mapper.NewsMapper;
import com.alumni.core.service.INewsService;

import java.util.List;
import java.util.Map;
import java.util.Collection;

/**
 * 新闻动态管理Service业务层处理
 *
 * @author alumni
 * @date 2024-03-03
 */
@RequiredArgsConstructor
@Service
public class NewsServiceImpl implements INewsService {

    private final NewsMapper baseMapper;

    /**
     * 查询新闻动态管理
     */
    @Override
    public NewsVo queryById(Long id){
        return baseMapper.selectVoById(id);
    }

    /**
     * 查询新闻动态管理列表
     */
    @Override
    public TableDataInfo<NewsVo> queryPageList(NewsBo bo, PageQuery pageQuery) {
        LambdaQueryWrapper<News> lqw = buildQueryWrapper(bo);
        Page<NewsVo> result = baseMapper.selectVoPage(pageQuery.build(), lqw);
        return TableDataInfo.build(result);
    }

    /**
     * 查询新闻动态管理列表
     */
    @Override
    public List<NewsVo> queryList(NewsBo bo) {
        LambdaQueryWrapper<News> lqw = buildQueryWrapper(bo);
        return baseMapper.selectVoList(lqw);
    }

    private LambdaQueryWrapper<News> buildQueryWrapper(NewsBo bo) {
       //  Map<String, Object> params = bo.getParams();
        LambdaQueryWrapper<News> lqw = Wrappers.lambdaQuery();
        lqw.eq(StringUtils.isNotBlank(bo.getTitle()), News::getTitle, bo.getTitle());
        lqw.eq(StringUtils.isNotBlank(bo.getAuthor()), News::getAuthor, bo.getAuthor());
        lqw.eq(bo.getCreateTime() != null, News::getCreateTime, bo.getCreateTime());
        lqw.eq(StringUtils.isNotBlank(bo.getContent()), News::getContent, bo.getContent());
        lqw.eq(StringUtils.isNotBlank(bo.getImgUrl()), News::getImgUrl, bo.getImgUrl());
        return lqw;
    }

    /**
     * 新增新闻动态管理
     */
    @Override
    public Boolean insertByBo(NewsBo bo) {
        News add = BeanUtil.toBean(bo, News.class);
        validEntityBeforeSave(add);
        boolean flag = baseMapper.insert(add) > 0;
        if (flag) {
            bo.setId(add.getId());
        }
        return flag;
    }

    /**
     * 修改新闻动态管理
     */
    @Override
    public Boolean updateByBo(NewsBo bo) {
        News update = BeanUtil.toBean(bo, News.class);
        validEntityBeforeSave(update);
        return baseMapper.updateById(update) > 0;
    }

    /**
     * 保存前的数据校验
     */
    private void validEntityBeforeSave(News entity){
        //TODO 做一些数据校验,如唯一约束
    }

    /**
     * 批量删除新闻动态管理
     */
    @Override
    public Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid) {
        if(isValid){
            //TODO 做一些业务上的校验,判断是否需要校验
        }
        return baseMapper.deleteBatchIds(ids) > 0;
    }
}
