package com.ym.vaccine.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ym.vaccine.domain.YmPreCheck;
import com.ym.vaccine.domain.vo.YmPreCheckVo;
import com.ym.vaccine.domain.bo.YmPreCheckBo;
import com.ym.common.core.page.TableDataInfo;
import com.ym.common.core.domain.PageQuery;

import java.util.Collection;
import java.util.List;

/**
 * 预检信息查询Service接口
 *
 * @author ym
 * @date 2024-01-29
 */
public interface IYmPreCheckService extends IService<YmPreCheck> {

    /**
     * 查询预检信息查询
     */
    YmPreCheckVo queryById(Long id);

    /**
     * 查询预检信息查询列表
     */
    TableDataInfo<YmPreCheckVo> queryPageList(YmPreCheckBo bo, PageQuery pageQuery);

    /**
     * 查询预检信息查询列表
     */
    List<YmPreCheckVo> queryList(YmPreCheckBo bo);

    /**
     * 新增预检信息查询
     */
    Boolean insertByBo(YmPreCheckBo bo);

    /**
     * 修改预检信息查询
     */
    Boolean updateByBo(YmPreCheckBo bo);

    /**
     * 校验并批量删除预检信息查询信息
     */
    Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid);
}
