package com.ym.vaccine.service;

import com.ym.vaccine.domain.Feedback;
import com.ym.vaccine.domain.vo.FeedbackVo;
import com.ym.vaccine.domain.bo.FeedbackBo;
import com.ym.common.core.page.TableDataInfo;
import com.ym.common.core.domain.PageQuery;

import java.util.Collection;
import java.util.List;

/**
 * 用户反馈管理Service接口
 *
 * @author ym
 * @date 2024-02-24
 */
public interface IFeedbackService {

    /**
     * 查询用户反馈管理
     */
    FeedbackVo queryById(Long id);

    /**
     * 查询用户反馈管理列表
     */
    TableDataInfo<FeedbackVo> queryPageList(FeedbackBo bo, PageQuery pageQuery);

    /**
     * 查询用户反馈管理列表
     */
    List<FeedbackVo> queryList(FeedbackBo bo);

    /**
     * 新增用户反馈管理
     */
    Boolean insertByBo(FeedbackBo bo);

    /**
     * 修改用户反馈管理
     */
    Boolean updateByBo(FeedbackBo bo);

    /**
     * 校验并批量删除用户反馈管理信息
     */
    Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid);
}
