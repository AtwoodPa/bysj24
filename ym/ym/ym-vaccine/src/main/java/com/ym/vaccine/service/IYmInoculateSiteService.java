package com.ym.vaccine.service;

import com.ym.vaccine.domain.YmInoculateSite;
import com.ym.vaccine.domain.vo.YmInoculateSiteVo;
import com.ym.vaccine.domain.bo.YmInoculateSiteBo;
import com.ym.common.core.page.TableDataInfo;
import com.ym.common.core.domain.PageQuery;

import java.util.Collection;
import java.util.List;

/**
 * 疫苗接种站点管理Service接口
 *
 * @author ym
 * @date 2024-01-29
 */
public interface IYmInoculateSiteService {

    /**
     * 查询疫苗接种站点管理
     */
    YmInoculateSiteVo queryById(Long id);

    /**
     * 查询疫苗接种站点管理列表
     */
    TableDataInfo<YmInoculateSiteVo> queryPageList(YmInoculateSiteBo bo, PageQuery pageQuery);

    /**
     * 查询疫苗接种站点管理列表
     */
    List<YmInoculateSiteVo> queryList(YmInoculateSiteBo bo);

    /**
     * 新增疫苗接种站点管理
     */
    Boolean insertByBo(YmInoculateSiteBo bo);

    /**
     * 修改疫苗接种站点管理
     */
    Boolean updateByBo(YmInoculateSiteBo bo);

    /**
     * 校验并批量删除疫苗接种站点管理信息
     */
    Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid);
}
