package com.ym.vaccine.service.impl;

import cn.hutool.core.bean.BeanUtil;
import com.ym.common.utils.StringUtils;
import com.ym.common.core.page.TableDataInfo;
import com.ym.common.core.domain.PageQuery;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import com.ym.vaccine.domain.bo.FeedbackBo;
import com.ym.vaccine.domain.vo.FeedbackVo;
import com.ym.vaccine.domain.Feedback;
import com.ym.vaccine.mapper.FeedbackMapper;
import com.ym.vaccine.service.IFeedbackService;

import java.util.List;
import java.util.Map;
import java.util.Collection;

/**
 * 用户反馈管理Service业务层处理
 *
 * @author ym
 * @date 2024-02-24
 */
@RequiredArgsConstructor
@Service
public class FeedbackServiceImpl implements IFeedbackService {

    private final FeedbackMapper baseMapper;

    /**
     * 查询用户反馈管理
     */
    @Override
    public FeedbackVo queryById(Long id){
        return baseMapper.selectVoById(id);
    }

    /**
     * 查询用户反馈管理列表
     */
    @Override
    public TableDataInfo<FeedbackVo> queryPageList(FeedbackBo bo, PageQuery pageQuery) {
        LambdaQueryWrapper<Feedback> lqw = buildQueryWrapper(bo);
        Page<FeedbackVo> result = baseMapper.selectVoPage(pageQuery.build(), lqw);
        return TableDataInfo.build(result);
    }

    /**
     * 查询用户反馈管理列表
     */
    @Override
    public List<FeedbackVo> queryList(FeedbackBo bo) {
        LambdaQueryWrapper<Feedback> lqw = buildQueryWrapper(bo);
        return baseMapper.selectVoList(lqw);
    }

    private LambdaQueryWrapper<Feedback> buildQueryWrapper(FeedbackBo bo) {
//        Map<String, Object> params = bo.getParams();
        LambdaQueryWrapper<Feedback> lqw = Wrappers.lambdaQuery();
        lqw.eq(StringUtils.isNotBlank(bo.getUserid()), Feedback::getUserid, bo.getUserid());
        lqw.eq(bo.getSubmittime() != null, Feedback::getSubmittime, bo.getSubmittime());
        lqw.eq(StringUtils.isNotBlank(bo.getMessage()), Feedback::getMessage, bo.getMessage());
        lqw.eq(bo.getBacktime() != null, Feedback::getBacktime, bo.getBacktime());
        lqw.eq(StringUtils.isNotBlank(bo.getBackmessage()), Feedback::getBackmessage, bo.getBackmessage());
        return lqw;
    }

    /**
     * 新增用户反馈管理
     */
    @Override
    public Boolean insertByBo(FeedbackBo bo) {
        Feedback add = BeanUtil.toBean(bo, Feedback.class);
        validEntityBeforeSave(add);
        boolean flag = baseMapper.insert(add) > 0;
        if (flag) {
            bo.setId(add.getId());
        }
        return flag;
    }

    /**
     * 修改用户反馈管理
     */
    @Override
    public Boolean updateByBo(FeedbackBo bo) {
        Feedback update = BeanUtil.toBean(bo, Feedback.class);
        validEntityBeforeSave(update);
        return baseMapper.updateById(update) > 0;
    }

    /**
     * 保存前的数据校验
     */
    private void validEntityBeforeSave(Feedback entity){
        //TODO 做一些数据校验,如唯一约束
    }

    /**
     * 批量删除用户反馈管理
     */
    @Override
    public Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid) {
        if(isValid){
            //TODO 做一些业务上的校验,判断是否需要校验
        }
        return baseMapper.deleteBatchIds(ids) > 0;
    }
}
