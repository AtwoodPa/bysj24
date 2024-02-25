package com.ym.vaccine.service;

import com.ym.vaccine.domain.YmVaccineKnowledge;
import com.ym.vaccine.domain.vo.YmVaccineKnowledgeVo;
import com.ym.vaccine.domain.bo.YmVaccineKnowledgeBo;
import com.ym.common.core.page.TableDataInfo;
import com.ym.common.core.domain.PageQuery;

import java.util.Collection;
import java.util.List;

/**
 * 存储疫苗知识信息的Service接口
 *
 * @author ym
 * @date 2024-02-25
 */
public interface IYmVaccineKnowledgeService {

    /**
     * 查询存储疫苗知识信息的
     */
    YmVaccineKnowledgeVo queryById(Long ID);

    /**
     * 查询存储疫苗知识信息的列表
     */
    TableDataInfo<YmVaccineKnowledgeVo> queryPageList(YmVaccineKnowledgeBo bo, PageQuery pageQuery);

    /**
     * 查询存储疫苗知识信息的列表
     */
    List<YmVaccineKnowledgeVo> queryList(YmVaccineKnowledgeBo bo);

    /**
     * 新增存储疫苗知识信息的
     */
    Boolean insertByBo(YmVaccineKnowledgeBo bo);

    /**
     * 修改存储疫苗知识信息的
     */
    Boolean updateByBo(YmVaccineKnowledgeBo bo);

    /**
     * 校验并批量删除存储疫苗知识信息的信息
     */
    Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid);
}
