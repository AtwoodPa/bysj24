package com.ym.vaccine.service;

import com.ym.common.core.domain.PageQuery;
import com.ym.common.core.page.TableDataInfo;
import com.ym.vaccine.domain.bo.YmOrdersBo;
import com.ym.vaccine.domain.vo.YmOrdersVo;

import java.util.Collection;
import java.util.List;

/**
 * 订单管理Service接口
 *
 * @author ym
 * @date 2024-02-19
 */
public interface IYmOrdersService {

    /**
     * 查询订单管理
     */
    YmOrdersVo queryById(Long id);

    /**
     * 查询订单管理列表
     */
    TableDataInfo<YmOrdersVo> queryPageList(YmOrdersBo bo, PageQuery pageQuery);

    /**
     * 查询订单管理列表
     */
    List<YmOrdersVo> queryList(YmOrdersBo bo);

    /**
     * 新增订单管理
     */
    Boolean insertByBo(YmOrdersBo bo);

    /**
     * 修改订单管理
     */
    Boolean updateByBo(YmOrdersBo bo);

    /**
     * 校验并批量删除订单管理信息
     */
    Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid);
}
