package com.ym.vaccine.service.impl;

import cn.hutool.core.bean.BeanUtil;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ym.common.utils.StringUtils;
import com.ym.common.core.page.TableDataInfo;
import com.ym.common.core.domain.PageQuery;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import com.ym.vaccine.domain.bo.YmSignBo;
import com.ym.vaccine.domain.vo.YmSignVo;
import com.ym.vaccine.domain.YmSign;
import com.ym.vaccine.mapper.YmSignMapper;
import com.ym.vaccine.service.IYmSignService;

import java.util.List;
import java.util.Map;
import java.util.Collection;

/**
 * 接种签到Service业务层处理
 *
 * @author ym
 * @date 2024-01-29
 */
@RequiredArgsConstructor
@Service
public class YmSignServiceImpl extends ServiceImpl<YmSignMapper,YmSign> implements IYmSignService {

    private final YmSignMapper baseMapper;

    /**
     * 查询接种签到
     */
    @Override
    public YmSignVo queryById(Long id){
        return baseMapper.selectVoById(id);
    }

    /**
     * 查询接种签到列表
     */
    @Override
    public TableDataInfo<YmSignVo> queryPageList(YmSignBo bo, PageQuery pageQuery) {
        LambdaQueryWrapper<YmSign> lqw = buildQueryWrapper(bo);
        Page<YmSignVo> result = baseMapper.selectVoPage(pageQuery.build(), lqw);
        return TableDataInfo.build(result);
    }

    /**
     * 查询接种签到列表
     */
    @Override
    public List<YmSignVo> queryList(YmSignBo bo) {
        LambdaQueryWrapper<YmSign> lqw = buildQueryWrapper(bo);
        return baseMapper.selectVoList(lqw);
    }

    private LambdaQueryWrapper<YmSign> buildQueryWrapper(YmSignBo bo) {
//        Map<String, Object> params = bo.getParams();
        LambdaQueryWrapper<YmSign> lqw = Wrappers.lambdaQuery();
        lqw.eq(bo.getWorkerId() != null, YmSign::getWorkerId, bo.getWorkerId());
        lqw.eq(bo.getAppointId() != null, YmSign::getAppointId, bo.getAppointId());
        return lqw;
    }

    /**
     * 新增接种签到
     */
    @Override
    public Boolean insertByBo(YmSignBo bo) {
        YmSign add = BeanUtil.toBean(bo, YmSign.class);
        validEntityBeforeSave(add);
        boolean flag = baseMapper.insert(add) > 0;
        if (flag) {
            bo.setId(add.getId());
        }
        return flag;
    }

    /**
     * 修改接种签到
     */
    @Override
    public Boolean updateByBo(YmSignBo bo) {
        YmSign update = BeanUtil.toBean(bo, YmSign.class);
        validEntityBeforeSave(update);
        return baseMapper.updateById(update) > 0;
    }

    /**
     * 保存前的数据校验
     */
    private void validEntityBeforeSave(YmSign entity){
        //TODO 做一些数据校验,如唯一约束
    }

    /**
     * 批量删除接种签到
     */
    @Override
    public Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid) {
        if(isValid){
            //TODO 做一些业务上的校验,判断是否需要校验
        }
        return baseMapper.deleteBatchIds(ids) > 0;
    }
}
