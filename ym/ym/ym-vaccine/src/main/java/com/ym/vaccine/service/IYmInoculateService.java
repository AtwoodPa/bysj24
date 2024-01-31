package com.ym.vaccine.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ym.vaccine.domain.YmAppoint;
import com.ym.vaccine.domain.YmInoculate;
import com.ym.vaccine.domain.vo.YmInoculateVo;
import com.ym.vaccine.domain.bo.YmInoculateBo;
import com.ym.common.core.page.TableDataInfo;
import com.ym.common.core.domain.PageQuery;

import java.util.Collection;
import java.util.List;

/**
 * 疫苗接种记录Service接口
 *
 * @author ym
 * @date 2024-01-29
 */
public interface IYmInoculateService extends IService<YmInoculate> {

    void inoculate(YmAppoint appoint, YmInoculate inoculate);

    void notSucceeded(YmAppoint appoint, YmInoculate inoculate);
    /**
     * 查询疫苗接种记录
     */
    YmInoculateVo queryById(Long id);

    /**
     * 查询疫苗接种记录列表
     */
    TableDataInfo<YmInoculateVo> queryPageList(YmInoculateBo bo, PageQuery pageQuery);

    /**
     * 查询疫苗接种记录列表
     */
    List<YmInoculateVo> queryList(YmInoculateBo bo);

    /**
     * 新增疫苗接种记录
     */
    Boolean insertByBo(YmInoculateBo bo);

    /**
     * 修改疫苗接种记录
     */
    Boolean updateByBo(YmInoculateBo bo);

    /**
     * 校验并批量删除疫苗接种记录信息
     */
    Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid);
}
