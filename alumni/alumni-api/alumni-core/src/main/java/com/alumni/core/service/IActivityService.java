package com.alumni.core.service;

import com.alumni.core.domain.Activity;
import com.alumni.core.domain.vo.ActivityVo;
import com.alumni.core.domain.bo.ActivityBo;
import com.alumni.common.core.page.TableDataInfo;
import com.alumni.common.core.domain.PageQuery;

import java.util.Collection;
import java.util.List;

/**
 * 校友活动管理Service接口
 *
 * @author alumni
 * @date 2024-03-03
 */
public interface IActivityService {

    /**
     * 查询校友活动管理
     */
    ActivityVo queryById(Long id);

    /**
     * 查询校友活动管理列表
     */
    TableDataInfo<ActivityVo> queryPageList(ActivityBo bo, PageQuery pageQuery);

    /**
     * 查询校友活动管理列表
     */
    List<ActivityVo> queryList(ActivityBo bo);

    /**
     * 新增校友活动管理
     */
    Boolean insertByBo(ActivityBo bo);

    /**
     * 修改校友活动管理
     */
    Boolean updateByBo(ActivityBo bo);

    /**
     * 校验并批量删除校友活动管理信息
     */
    Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid);
}
