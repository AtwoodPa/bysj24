package com.house.core.service.impl;

import cn.hutool.core.bean.BeanUtil;
import com.house.common.utils.StringUtils;
import com.house.common.core.page.TableDataInfo;
import com.house.common.core.domain.PageQuery;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import com.house.core.domain.bo.CmsArticleBo;
import com.house.core.domain.vo.CmsArticleVo;
import com.house.core.domain.CmsArticle;
import com.house.core.mapper.CmsArticleMapper;
import com.house.core.service.ICmsArticleService;

import java.util.List;
import java.util.Map;
import java.util.Collection;

/**
 * 文章内容管理Service业务层处理
 *
 * @author house
 * @date 2024-03-05
 */
@RequiredArgsConstructor
@Service
public class CmsArticleServiceImpl implements ICmsArticleService {

    private final CmsArticleMapper baseMapper;

    /**
     * 查询文章内容管理
     */
    @Override
    public CmsArticleVo queryById(Long id){
        return baseMapper.selectVoById(id);
    }

    /**
     * 查询文章内容管理列表
     */
    @Override
    public TableDataInfo<CmsArticleVo> queryPageList(CmsArticleBo bo, PageQuery pageQuery) {
        LambdaQueryWrapper<CmsArticle> lqw = buildQueryWrapper(bo);
        Page<CmsArticleVo> result = baseMapper.selectVoPage(pageQuery.build(), lqw);
        return TableDataInfo.build(result);
    }

    /**
     * 查询文章内容管理列表
     */
    @Override
    public List<CmsArticleVo> queryList(CmsArticleBo bo) {
        LambdaQueryWrapper<CmsArticle> lqw = buildQueryWrapper(bo);
        return baseMapper.selectVoList(lqw);
    }

    private LambdaQueryWrapper<CmsArticle> buildQueryWrapper(CmsArticleBo bo) {
        Map<String, Object> params = bo.getParams();
        LambdaQueryWrapper<CmsArticle> lqw = Wrappers.lambdaQuery();
        lqw.eq(StringUtils.isNotBlank(bo.getArticleType()), CmsArticle::getArticleType, bo.getArticleType());
        lqw.eq(StringUtils.isNotBlank(bo.getSmallTitle()), CmsArticle::getSmallTitle, bo.getSmallTitle());
        lqw.eq(StringUtils.isNotBlank(bo.getBigTitle()), CmsArticle::getBigTitle, bo.getBigTitle());
        lqw.eq(StringUtils.isNotBlank(bo.getFaceUrl()), CmsArticle::getFaceUrl, bo.getFaceUrl());
        lqw.eq(StringUtils.isNotBlank(bo.getFaceThum()), CmsArticle::getFaceThum, bo.getFaceThum());
        lqw.eq(StringUtils.isNotBlank(bo.getArticleContent()), CmsArticle::getArticleContent, bo.getArticleContent());
        lqw.eq(StringUtils.isNotBlank(bo.getArticleSource()), CmsArticle::getArticleSource, bo.getArticleSource());
        lqw.eq(bo.getSortNo() != null, CmsArticle::getSortNo, bo.getSortNo());
        lqw.eq(bo.getStarNum() != null, CmsArticle::getStarNum, bo.getStarNum());
        return lqw;
    }

    /**
     * 新增文章内容管理
     */
    @Override
    public Boolean insertByBo(CmsArticleBo bo) {
        CmsArticle add = BeanUtil.toBean(bo, CmsArticle.class);
        validEntityBeforeSave(add);
        boolean flag = baseMapper.insert(add) > 0;
        if (flag) {
            bo.setId(add.getId());
        }
        return flag;
    }

    /**
     * 修改文章内容管理
     */
    @Override
    public Boolean updateByBo(CmsArticleBo bo) {
        CmsArticle update = BeanUtil.toBean(bo, CmsArticle.class);
        validEntityBeforeSave(update);
        return baseMapper.updateById(update) > 0;
    }

    /**
     * 保存前的数据校验
     */
    private void validEntityBeforeSave(CmsArticle entity){
        //TODO 做一些数据校验,如唯一约束
    }

    /**
     * 批量删除文章内容管理
     */
    @Override
    public Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid) {
        if(isValid){
            //TODO 做一些业务上的校验,判断是否需要校验
        }
        return baseMapper.deleteBatchIds(ids) > 0;
    }
}
