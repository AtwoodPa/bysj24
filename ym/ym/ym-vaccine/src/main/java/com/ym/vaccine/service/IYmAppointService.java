package com.ym.vaccine.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ym.vaccine.domain.YmAppoint;
import com.ym.vaccine.domain.vo.YmAppointVo;
import com.ym.vaccine.domain.bo.YmAppointBo;
import com.ym.common.core.page.TableDataInfo;
import com.ym.common.core.domain.PageQuery;

import java.util.Collection;
import java.util.List;

/**
 * 预约Service接口
 *
 * @author ym
 * @date 2024-01-29
 */
public interface IYmAppointService extends IService<YmAppoint> {

    void appoint(YmAppoint appoint, YmPlan plan) throws Exception;

    void cancelAppoint(YmAppoint appoint, YmPlan plan);

    /**
     * 查询预约
     */
    YmAppointVo queryById(Long id);

    /**
     * 查询预约列表
     */
    TableDataInfo<YmAppointVo> queryPageList(YmAppointBo bo, PageQuery pageQuery);

    /**
     * 查询预约列表
     */
    List<YmAppointVo> queryList(YmAppointBo bo);

    /**
     * 新增预约
     */
    Boolean insertByBo(YmAppointBo bo);

    /**
     * 修改预约
     */
    Boolean updateByBo(YmAppointBo bo);

    /**
     * 校验并批量删除预约信息
     */
    Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid);
}
