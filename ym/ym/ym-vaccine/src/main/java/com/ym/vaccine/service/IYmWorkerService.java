package com.ym.vaccine.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ym.vaccine.domain.YmWorker;
import com.ym.vaccine.domain.vo.YmWorkerVo;
import com.ym.vaccine.domain.bo.YmWorkerBo;
import com.ym.common.core.page.TableDataInfo;
import com.ym.common.core.domain.PageQuery;

import java.util.Collection;
import java.util.List;

/**
 * 医护人员信息Service接口
 *
 * @author ym
 * @date 2024-01-29
 */
public interface IYmWorkerService extends IService<YmWorker> {

    /**
     * 查询医护人员信息
     */
    YmWorkerVo queryById(Long id);

    /**
     * 查询医护人员信息列表
     */
    TableDataInfo<YmWorkerVo> queryPageList(YmWorkerBo bo, PageQuery pageQuery);

    /**
     * 查询医护人员信息列表
     */
    List<YmWorkerVo> queryList(YmWorkerBo bo);

    /**
     * 新增医护人员信息
     */
    Boolean insertByBo(YmWorkerBo bo);

    /**
     * 修改医护人员信息
     */
    Boolean updateByBo(YmWorkerBo bo);

    /**
     * 校验并批量删除医护人员信息信息
     */
    Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid);
}
