package com.house.core.service;

import com.house.core.domain.CmsArticle;
import com.house.core.domain.vo.CmsArticleVo;
import com.house.core.domain.bo.CmsArticleBo;
import com.house.common.core.page.TableDataInfo;
import com.house.common.core.domain.PageQuery;

import java.util.Collection;
import java.util.List;

/**
 * 文章内容管理Service接口
 *
 * @author house
 * @date 2024-03-05
 */
public interface ICmsArticleService {

    /**
     * 查询文章内容管理
     */
    CmsArticleVo queryById(Long id);

    /**
     * 查询文章内容管理列表
     */
    TableDataInfo<CmsArticleVo> queryPageList(CmsArticleBo bo, PageQuery pageQuery);

    /**
     * 查询文章内容管理列表
     */
    List<CmsArticleVo> queryList(CmsArticleBo bo);

    /**
     * 新增文章内容管理
     */
    Boolean insertByBo(CmsArticleBo bo);

    /**
     * 修改文章内容管理
     */
    Boolean updateByBo(CmsArticleBo bo);

    /**
     * 校验并批量删除文章内容管理信息
     */
    Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid);
}
