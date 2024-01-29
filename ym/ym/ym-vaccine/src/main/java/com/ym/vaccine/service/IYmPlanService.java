package com.ym.vaccine.service;


import com.ym.common.core.page.TableDataInfo;
import com.ym.common.core.domain.PageQuery;
import com.ym.vaccine.domain.bo.YmPlanBo;
import com.ym.vaccine.domain.vo.YmPlanVo;

import java.util.Collection;
import java.util.List;

/**
 * 预约计划管理Service接口
 *
 * @author ym
 * @date 2024-01-29
 */
public interface IYmPlanService {

    /**
     * 查询预约计划管理
     */
    YmPlanVo queryById(Long id);

    /**
     * 查询预约计划管理列表
     */
    TableDataInfo<YmPlanVo> queryPageList(YmPlanBo bo, PageQuery pageQuery);

    /**
     * 查询预约计划管理列表
     */
    List<YmPlanVo> queryList(YmPlanBo bo);

    /**
     * 新增预约计划管理
     */
    Boolean insertByBo(YmPlanBo bo);

    /**
     * 修改预约计划管理
     */
    Boolean updateByBo(YmPlanBo bo);

    /**
     * 校验并批量删除预约计划管理信息
     */
    Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid);
}
