package com.house.core.service.impl;

import cn.hutool.core.bean.BeanUtil;
import com.house.common.utils.StringUtils;
import com.house.common.core.page.TableDataInfo;
import com.house.common.core.domain.PageQuery;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import com.house.core.domain.bo.CmsFeedbackBo;
import com.house.core.domain.vo.CmsFeedbackVo;
import com.house.core.domain.CmsFeedback;
import com.house.core.mapper.CmsFeedbackMapper;
import com.house.core.service.ICmsFeedbackService;

import java.util.List;
import java.util.Map;
import java.util.Collection;

/**
 * 用户反馈管理Service业务层处理
 *
 * @author house
 * @date 2024-03-05
 */
@RequiredArgsConstructor
@Service
public class CmsFeedbackServiceImpl implements ICmsFeedbackService {

    private final CmsFeedbackMapper baseMapper;

    /**
     * 查询用户反馈管理
     */
    @Override
    public CmsFeedbackVo queryById(Long id){
        return baseMapper.selectVoById(id);
    }

    /**
     * 查询用户反馈管理列表
     */
    @Override
    public TableDataInfo<CmsFeedbackVo> queryPageList(CmsFeedbackBo bo, PageQuery pageQuery) {
        LambdaQueryWrapper<CmsFeedback> lqw = buildQueryWrapper(bo);
        Page<CmsFeedbackVo> result = baseMapper.selectVoPage(pageQuery.build(), lqw);
        return TableDataInfo.build(result);
    }

    /**
     * 查询用户反馈管理列表
     */
    @Override
    public List<CmsFeedbackVo> queryList(CmsFeedbackBo bo) {
        LambdaQueryWrapper<CmsFeedback> lqw = buildQueryWrapper(bo);
        return baseMapper.selectVoList(lqw);
    }

    private LambdaQueryWrapper<CmsFeedback> buildQueryWrapper(CmsFeedbackBo bo) {
        Map<String, Object> params = bo.getParams();
        LambdaQueryWrapper<CmsFeedback> lqw = Wrappers.lambdaQuery();
        lqw.eq(StringUtils.isNotBlank(bo.getFeedType()), CmsFeedback::getFeedType, bo.getFeedType());
        lqw.eq(StringUtils.isNotBlank(bo.getFeedTitle()), CmsFeedback::getFeedTitle, bo.getFeedTitle());
        lqw.eq(StringUtils.isNotBlank(bo.getFeedContent()), CmsFeedback::getFeedContent, bo.getFeedContent());
        return lqw;
    }

    /**
     * 新增用户反馈管理
     */
    @Override
    public Boolean insertByBo(CmsFeedbackBo bo) {
        CmsFeedback add = BeanUtil.toBean(bo, CmsFeedback.class);
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
    public Boolean updateByBo(CmsFeedbackBo bo) {
        CmsFeedback update = BeanUtil.toBean(bo, CmsFeedback.class);
        validEntityBeforeSave(update);
        return baseMapper.updateById(update) > 0;
    }

    /**
     * 保存前的数据校验
     */
    private void validEntityBeforeSave(CmsFeedback entity){
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