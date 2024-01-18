package com.ym.vaccine.service;

import com.ym.vaccine.domain.YmVaccinationRecord;
import com.ym.vaccine.domain.vo.YmVaccinationRecordVo;
import com.ym.vaccine.domain.bo.YmVaccinationRecordBo;
import com.ym.common.core.page.TableDataInfo;
import com.ym.common.core.domain.PageQuery;

import java.util.Collection;
import java.util.List;

/**
 * 接种记录，存储用户接种记录Service接口
 *
 * @author ym
 * @date 2024-01-18
 */
public interface IYmVaccinationRecordService {

    /**
     * 查询接种记录，存储用户接种记录
     */
    YmVaccinationRecordVo queryById(Long recordId);

    /**
     * 查询接种记录，存储用户接种记录列表
     */
    TableDataInfo<YmVaccinationRecordVo> queryPageList(YmVaccinationRecordBo bo, PageQuery pageQuery);

    /**
     * 查询接种记录，存储用户接种记录列表
     */
    List<YmVaccinationRecordVo> queryList(YmVaccinationRecordBo bo);

    /**
     * 新增接种记录，存储用户接种记录
     */
    Boolean insertByBo(YmVaccinationRecordBo bo);

    /**
     * 修改接种记录，存储用户接种记录
     */
    Boolean updateByBo(YmVaccinationRecordBo bo);

    /**
     * 校验并批量删除接种记录，存储用户接种记录信息
     */
    Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid);
}
