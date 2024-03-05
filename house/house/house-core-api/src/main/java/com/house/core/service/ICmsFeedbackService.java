package com.house.core.service;

import com.house.core.domain.CmsFeedback;
import com.house.core.domain.vo.CmsFeedbackVo;
import com.house.core.domain.bo.CmsFeedbackBo;
import com.house.common.core.page.TableDataInfo;
import com.house.common.core.domain.PageQuery;

import java.util.Collection;
import java.util.List;

/**
 * 用户反馈管理Service接口
 *
 * @author house
 * @date 2024-03-05
 */
public interface ICmsFeedbackService {

    /**
     * 查询用户反馈管理
     */
    CmsFeedbackVo queryById(Long id);

    /**
     * 查询用户反馈管理列表
     */
    TableDataInfo<CmsFeedbackVo> queryPageList(CmsFeedbackBo bo, PageQuery pageQuery);

    /**
     * 查询用户反馈管理列表
     */
    List<CmsFeedbackVo> queryList(CmsFeedbackBo bo);

    /**
     * 新增用户反馈管理
     */
    Boolean insertByBo(CmsFeedbackBo bo);

    /**
     * 修改用户反馈管理
     */
    Boolean updateByBo(CmsFeedbackBo bo);

    /**
     * 校验并批量删除用户反馈管理信息
     */
    Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid);
}
