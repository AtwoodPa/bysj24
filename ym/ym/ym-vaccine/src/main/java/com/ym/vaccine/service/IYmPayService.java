package com.ym.vaccine.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ym.common.core.page.TableDataInfo;
import com.ym.common.core.domain.PageQuery;

import java.util.Collection;
import java.util.List;

/**
 * 支付功能Service接口
 *
 * @author ym
 * @date 2024-01-29
 */
public interface IYmPayService extends IService<YmPay> {

    /**
     * 查询支付功能
     */
    YmPayVo queryById(Long id);

    /**
     * 查询支付功能列表
     */
    TableDataInfo<YmPayVo> queryPageList(YmPayBo bo, PageQuery pageQuery);

    /**
     * 查询支付功能列表
     */
    List<YmPayVo> queryList(YmPayBo bo);

    /**
     * 新增支付功能
     */
    Boolean insertByBo(YmPayBo bo);

    /**
     * 修改支付功能
     */
    Boolean updateByBo(YmPayBo bo);

    /**
     * 校验并批量删除支付功能信息
     */
    Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid);
}
