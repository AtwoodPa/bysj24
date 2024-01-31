package com.ym.vaccine.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ym.vaccine.domain.YmUser;
import com.ym.vaccine.domain.vo.YmUserVo;
import com.ym.vaccine.domain.bo.YmUserBo;
import com.ym.common.core.page.TableDataInfo;
import com.ym.common.core.domain.PageQuery;

import java.util.Collection;
import java.util.List;

/**
 * 疫苗预约用户Service接口
 *
 * @author ym
 * @date 2024-01-29
 */
public interface IYmUserService extends IService<YmUser> {

    /**
     * 查询疫苗预约用户
     */
    YmUserVo queryById(Long id);

    /**
     * 查询疫苗预约用户列表
     */
    TableDataInfo<YmUserVo> queryPageList(YmUserBo bo, PageQuery pageQuery);

    /**
     * 查询疫苗预约用户列表
     */
    List<YmUserVo> queryList(YmUserBo bo);

    /**
     * 新增疫苗预约用户
     */
    Boolean insertByBo(YmUserBo bo);

    /**
     * 修改疫苗预约用户
     */
    Boolean updateByBo(YmUserBo bo);

    /**
     * 校验并批量删除疫苗预约用户信息
     */
    Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid);
}
