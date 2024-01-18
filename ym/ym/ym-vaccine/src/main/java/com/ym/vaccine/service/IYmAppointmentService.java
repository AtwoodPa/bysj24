package com.ym.vaccine.service;

import com.ym.vaccine.domain.YmAppointment;
import com.ym.vaccine.domain.vo.YmAppointmentVo;
import com.ym.vaccine.domain.bo.YmAppointmentBo;
import com.ym.common.core.page.TableDataInfo;
import com.ym.common.core.domain.PageQuery;

import java.util.Collection;
import java.util.List;

/**
 * 疫苗预约，存储用户预约信息Service接口
 *
 * @author ym
 * @date 2024-01-18
 */
public interface IYmAppointmentService {

    /**
     * 查询疫苗预约，存储用户预约信息
     */
    YmAppointmentVo queryById(Long appointmentId);

    /**
     * 查询疫苗预约，存储用户预约信息列表
     */
    TableDataInfo<YmAppointmentVo> queryPageList(YmAppointmentBo bo, PageQuery pageQuery);

    /**
     * 查询疫苗预约，存储用户预约信息列表
     */
    List<YmAppointmentVo> queryList(YmAppointmentBo bo);

    /**
     * 新增疫苗预约，存储用户预约信息
     */
    Boolean insertByBo(YmAppointmentBo bo);

    /**
     * 修改疫苗预约，存储用户预约信息
     */
    Boolean updateByBo(YmAppointmentBo bo);

    /**
     * 校验并批量删除疫苗预约，存储用户预约信息信息
     */
    Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid);
}
