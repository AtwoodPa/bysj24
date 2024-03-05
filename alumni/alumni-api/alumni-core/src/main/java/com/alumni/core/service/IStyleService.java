package com.alumni.core.service;

import com.alumni.core.domain.Style;
import com.alumni.core.domain.vo.StyleVo;
import com.alumni.core.domain.bo.StyleBo;
import com.alumni.common.core.page.TableDataInfo;
import com.alumni.common.core.domain.PageQuery;

import java.util.Collection;
import java.util.List;

/**
 * 校友风采管理Service接口
 *
 * @author alumni
 * @date 2024-03-03
 */
public interface IStyleService {

    /**
     * 查询校友风采管理
     */
    StyleVo queryById(Long id);

    /**
     * 查询校友风采管理列表
     */
    TableDataInfo<StyleVo> queryPageList(StyleBo bo, PageQuery pageQuery);

    /**
     * 查询校友风采管理列表
     */
    List<StyleVo> queryList(StyleBo bo);

    /**
     * 新增校友风采管理
     */
    Boolean insertByBo(StyleBo bo);

    /**
     * 修改校友风采管理
     */
    Boolean updateByBo(StyleBo bo);

    /**
     * 校验并批量删除校友风采管理信息
     */
    Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid);
}
