package com.alumni.core.service;

import com.alumni.core.domain.News;
import com.alumni.core.domain.vo.NewsVo;
import com.alumni.core.domain.bo.NewsBo;
import com.alumni.common.core.page.TableDataInfo;
import com.alumni.common.core.domain.PageQuery;

import java.util.Collection;
import java.util.List;

/**
 * 新闻动态管理Service接口
 *
 * @author alumni
 * @date 2024-03-03
 */
public interface INewsService {

    /**
     * 查询新闻动态管理
     */
    NewsVo queryById(Long id);

    /**
     * 查询新闻动态管理列表
     */
    TableDataInfo<NewsVo> queryPageList(NewsBo bo, PageQuery pageQuery);

    /**
     * 查询新闻动态管理列表
     */
    List<NewsVo> queryList(NewsBo bo);

    /**
     * 新增新闻动态管理
     */
    Boolean insertByBo(NewsBo bo);

    /**
     * 修改新闻动态管理
     */
    Boolean updateByBo(NewsBo bo);

    /**
     * 校验并批量删除新闻动态管理信息
     */
    Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid);
}
