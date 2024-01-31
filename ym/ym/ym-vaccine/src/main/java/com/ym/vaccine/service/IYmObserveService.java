package com.ym.vaccine.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ym.vaccine.domain.YmAppoint;
import com.ym.vaccine.domain.YmObserve;
import com.ym.vaccine.domain.vo.YmObserveVo;
import com.ym.vaccine.domain.bo.YmObserveBo;
import com.ym.common.core.page.TableDataInfo;
import com.ym.common.core.domain.PageQuery;

import java.util.Collection;
import java.util.List;

/**
 * 留观查询Service接口
 *
 * @author ym
 * @date 2024-01-29
 */
public interface IYmObserveService extends IService<YmObserve> {

    void observe(YmAppoint appoint, YmObserve observe);
    /**
     * 查询留观查询
     */
    YmObserveVo queryById(Long id);

    /**
     * 查询留观查询列表
     */
    TableDataInfo<YmObserveVo> queryPageList(YmObserveBo bo, PageQuery pageQuery);

    /**
     * 查询留观查询列表
     */
    List<YmObserveVo> queryList(YmObserveBo bo);

    /**
     * 新增留观查询
     */
    Boolean insertByBo(YmObserveBo bo);

    /**
     * 修改留观查询
     */
    Boolean updateByBo(YmObserveBo bo);

    /**
     * 校验并批量删除留观查询信息
     */
    Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid);
}
