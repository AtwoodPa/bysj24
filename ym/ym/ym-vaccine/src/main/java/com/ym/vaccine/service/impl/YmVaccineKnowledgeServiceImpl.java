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
import com.ym.vaccine.domain.bo.YmVaccineKnowledgeBo;
import com.ym.vaccine.domain.vo.YmVaccineKnowledgeVo;
import com.ym.vaccine.domain.YmVaccineKnowledge;
import com.ym.vaccine.mapper.YmVaccineKnowledgeMapper;
import com.ym.vaccine.service.IYmVaccineKnowledgeService;

import java.util.List;
import java.util.Map;
import java.util.Collection;

/**
 * 存储疫苗知识信息的Service业务层处理
 *
 * @author ym
 * @date 2024-02-25
 */
@RequiredArgsConstructor
@Service
public class YmVaccineKnowledgeServiceImpl implements IYmVaccineKnowledgeService {

    private final YmVaccineKnowledgeMapper baseMapper;

    /**
     * 查询存储疫苗知识信息的
     */
    @Override
    public YmVaccineKnowledgeVo queryById(Long ID){
        return baseMapper.selectVoById(ID);
    }

    /**
     * 查询存储疫苗知识信息的列表
     */
    @Override
    public TableDataInfo<YmVaccineKnowledgeVo> queryPageList(YmVaccineKnowledgeBo bo, PageQuery pageQuery) {
        LambdaQueryWrapper<YmVaccineKnowledge> lqw = buildQueryWrapper(bo);
        Page<YmVaccineKnowledgeVo> result = baseMapper.selectVoPage(pageQuery.build(), lqw);
        return TableDataInfo.build(result);
    }

    /**
     * 查询存储疫苗知识信息的列表
     */
    @Override
    public List<YmVaccineKnowledgeVo> queryList(YmVaccineKnowledgeBo bo) {
        LambdaQueryWrapper<YmVaccineKnowledge> lqw = buildQueryWrapper(bo);
        return baseMapper.selectVoList(lqw);
    }

    private LambdaQueryWrapper<YmVaccineKnowledge> buildQueryWrapper(YmVaccineKnowledgeBo bo) {
        // Map<String, Object> params = bo.getParams();
        LambdaQueryWrapper<YmVaccineKnowledge> lqw = Wrappers.lambdaQuery();
        lqw.eq(StringUtils.isNotBlank(bo.getTitle()), YmVaccineKnowledge::getTitle, bo.getTitle());
        lqw.eq(StringUtils.isNotBlank(bo.getBenefits()), YmVaccineKnowledge::getBenefits, bo.getBenefits());
        lqw.eq(StringUtils.isNotBlank(bo.getInstructions()), YmVaccineKnowledge::getInstructions, bo.getInstructions());
        lqw.eq(bo.getPublishTime() != null, YmVaccineKnowledge::getPublishTime, bo.getPublishTime());
        lqw.eq(StringUtils.isNotBlank(bo.getPublisher()), YmVaccineKnowledge::getPublisher, bo.getPublisher());
        lqw.eq(StringUtils.isNotBlank(bo.getKnowledge()), YmVaccineKnowledge::getKnowledge, bo.getKnowledge());
        return lqw;
    }

    /**
     * 新增存储疫苗知识信息的
     */
    @Override
    public Boolean insertByBo(YmVaccineKnowledgeBo bo) {
        YmVaccineKnowledge add = BeanUtil.toBean(bo, YmVaccineKnowledge.class);
        validEntityBeforeSave(add);
        boolean flag = baseMapper.insert(add) > 0;
        if (flag) {
            bo.setId(add.getId());
        }
        return flag;
    }

    /**
     * 修改存储疫苗知识信息的
     */
    @Override
    public Boolean updateByBo(YmVaccineKnowledgeBo bo) {
        YmVaccineKnowledge update = BeanUtil.toBean(bo, YmVaccineKnowledge.class);
        validEntityBeforeSave(update);
        return baseMapper.updateById(update) > 0;
    }

    /**
     * 保存前的数据校验
     */
    private void validEntityBeforeSave(YmVaccineKnowledge entity){
        //TODO 做一些数据校验,如唯一约束
    }

    /**
     * 批量删除存储疫苗知识信息的
     */
    @Override
    public Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid) {
        if(isValid){
            //TODO 做一些业务上的校验,判断是否需要校验
        }
        return baseMapper.deleteBatchIds(ids) > 0;
    }
}
