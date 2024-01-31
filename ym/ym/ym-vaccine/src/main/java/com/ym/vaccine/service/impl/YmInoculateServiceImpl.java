package com.ym.vaccine.service.impl;

import cn.hutool.core.bean.BeanUtil;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ym.common.utils.StringUtils;
import com.ym.common.core.page.TableDataInfo;
import com.ym.common.core.domain.PageQuery;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.ym.vaccine.domain.YmAppoint;
import com.ym.vaccine.domain.YmObserve;
import com.ym.vaccine.service.IYmAppointService;
import com.ym.vaccine.service.IYmObserveService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import com.ym.vaccine.domain.bo.YmInoculateBo;
import com.ym.vaccine.domain.vo.YmInoculateVo;
import com.ym.vaccine.domain.YmInoculate;
import com.ym.vaccine.mapper.YmInoculateMapper;
import com.ym.vaccine.service.IYmInoculateService;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Collection;

/**
 * 疫苗接种记录Service业务层处理
 *
 * @author ym
 * @date 2024-01-29
 */
@RequiredArgsConstructor
@Service
public class YmInoculateServiceImpl extends ServiceImpl<YmInoculateMapper,YmInoculate> implements IYmInoculateService {

    private final YmInoculateMapper baseMapper;

    private final IYmAppointService appointService;

    private final IYmObserveService observeService;

    /**
     * 疫苗接种
     *
     * @param appoint
     * @param inoculate
     */
    @Override
    @Transactional(rollbackFor = Exception.class)
    public void inoculate(YmAppoint appoint, YmInoculate inoculate) {
        if (appoint == null || inoculate == null) {
            throw new RuntimeException("参数有误");
        }

        appoint.setStatus(3L);
        appointService.updateById(appoint);

        save(inoculate);

        YmObserve observe = new YmObserve();
        observe.setAppointId(appoint.getId());
        observe.setCreateTime(new Date());
        observe.setWorkerId(inoculate.getWorkerId());
        observe.setIsFinish(0L);
        observe.setEndTime(new Date(observe.getCreateTime().getTime() + 1000 * 60 * 30));
        observeService.save(observe);
    }

    /**
     * 接种失败
     * @param appoint
     * @param inoculate
     */
    @Override
    @Transactional(rollbackFor = Exception.class)
    public void notSucceeded(YmAppoint appoint, YmInoculate inoculate) {
        if (appoint == null || inoculate == null) {
            throw new RuntimeException("参数有误");
        }

        appoint.setStatus(4L);
        appointService.updateById(appoint);

        save(inoculate);
    }

    /**
     * 查询疫苗接种记录
     */
    @Override
    public YmInoculateVo queryById(Long id){
        return baseMapper.selectVoById(id);
    }

    /**
     * 查询疫苗接种记录列表
     */
    @Override
    public TableDataInfo<YmInoculateVo> queryPageList(YmInoculateBo bo, PageQuery pageQuery) {
        LambdaQueryWrapper<YmInoculate> lqw = buildQueryWrapper(bo);
        Page<YmInoculateVo> result = baseMapper.selectVoPage(pageQuery.build(), lqw);
        return TableDataInfo.build(result);
    }

    /**
     * 查询疫苗接种记录列表
     */
    @Override
    public List<YmInoculateVo> queryList(YmInoculateBo bo) {
        LambdaQueryWrapper<YmInoculate> lqw = buildQueryWrapper(bo);
        return baseMapper.selectVoList(lqw);
    }

    private LambdaQueryWrapper<YmInoculate> buildQueryWrapper(YmInoculateBo bo) {
//        Map<String, Object> params = bo.getParams();
        LambdaQueryWrapper<YmInoculate> lqw = Wrappers.lambdaQuery();
        lqw.eq(StringUtils.isNotBlank(bo.getPart()), YmInoculate::getPart, bo.getPart());
        lqw.eq(StringUtils.isNotBlank(bo.getVaccineBatchCode()), YmInoculate::getVaccineBatchCode, bo.getVaccineBatchCode());
        lqw.eq(bo.getWorkerId() != null, YmInoculate::getWorkerId, bo.getWorkerId());
        lqw.eq(bo.getAppointId() != null, YmInoculate::getAppointId, bo.getAppointId());
        lqw.eq(StringUtils.isNotBlank(bo.getNote()), YmInoculate::getNote, bo.getNote());
        return lqw;
    }

    /**
     * 新增疫苗接种记录
     */
    @Override
    public Boolean insertByBo(YmInoculateBo bo) {
        YmInoculate add = BeanUtil.toBean(bo, YmInoculate.class);
        validEntityBeforeSave(add);
        boolean flag = baseMapper.insert(add) > 0;
        if (flag) {
            bo.setId(add.getId());
        }
        return flag;
    }

    /**
     * 修改疫苗接种记录
     */
    @Override
    public Boolean updateByBo(YmInoculateBo bo) {
        YmInoculate update = BeanUtil.toBean(bo, YmInoculate.class);
        validEntityBeforeSave(update);
        return baseMapper.updateById(update) > 0;
    }

    /**
     * 保存前的数据校验
     */
    private void validEntityBeforeSave(YmInoculate entity){
        //TODO 做一些数据校验,如唯一约束
    }

    /**
     * 批量删除疫苗接种记录
     */
    @Override
    public Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid) {
        if(isValid){
            //TODO 做一些业务上的校验,判断是否需要校验
        }
        return baseMapper.deleteBatchIds(ids) > 0;
    }
}
