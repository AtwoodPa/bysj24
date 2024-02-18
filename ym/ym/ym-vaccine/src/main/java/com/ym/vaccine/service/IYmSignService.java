package com.ym.vaccine.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ym.vaccine.domain.YmAppoint;
import com.ym.common.core.page.TableDataInfo;
import com.ym.common.core.domain.PageQuery;

import java.util.Collection;
import java.util.List;

/**
 * 接种签到Service接口
 *
 * @author ym
 * @date 2024-01-29
 */
public interface IYmSignService extends IService<YmSign> {

    /**
     * 查询接种签到
     */
    YmSignVo queryById(Long id);

    /**
     * 查询接种签到列表
     */
    TableDataInfo<YmSignVo> queryPageList(YmSignBo bo, PageQuery pageQuery);

    /**
     * 查询接种签到列表
     */
    List<YmSignVo> queryList(YmSignBo bo);

    /**
     * 新增接种签到
     */
    Boolean insertByBo(YmSignBo bo);

    /**
     * 修改接种签到
     */
    Boolean updateByBo(YmSignBo bo);

    /**
     * 校验并批量删除接种签到信息
     */
    Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid);

    void sign(YmAppoint appoint, YmSign sign);
}
