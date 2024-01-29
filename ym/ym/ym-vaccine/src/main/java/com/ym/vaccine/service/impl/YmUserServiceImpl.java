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
import com.ym.vaccine.domain.bo.YmUserBo;
import com.ym.vaccine.domain.vo.YmUserVo;
import com.ym.vaccine.domain.YmUser;
import com.ym.vaccine.mapper.YmUserMapper;
import com.ym.vaccine.service.IYmUserService;

import java.util.List;
import java.util.Map;
import java.util.Collection;

/**
 * 疫苗预约用户Service业务层处理
 *
 * @author ym
 * @date 2024-01-29
 */
@RequiredArgsConstructor
@Service
public class YmUserServiceImpl implements IYmUserService {

    private final YmUserMapper baseMapper;

    /**
     * 查询疫苗预约用户
     */
    @Override
    public YmUserVo queryById(Long id){
        return baseMapper.selectVoById(id);
    }

    /**
     * 查询疫苗预约用户列表
     */
    @Override
    public TableDataInfo<YmUserVo> queryPageList(YmUserBo bo, PageQuery pageQuery) {
        LambdaQueryWrapper<YmUser> lqw = buildQueryWrapper(bo);
        Page<YmUserVo> result = baseMapper.selectVoPage(pageQuery.build(), lqw);
        return TableDataInfo.build(result);
    }

    /**
     * 查询疫苗预约用户列表
     */
    @Override
    public List<YmUserVo> queryList(YmUserBo bo) {
        LambdaQueryWrapper<YmUser> lqw = buildQueryWrapper(bo);
        return baseMapper.selectVoList(lqw);
    }

    private LambdaQueryWrapper<YmUser> buildQueryWrapper(YmUserBo bo) {

        LambdaQueryWrapper<YmUser> lqw = Wrappers.lambdaQuery();
        lqw.like(StringUtils.isNotBlank(bo.getUsername()), YmUser::getUsername, bo.getUsername());
        lqw.eq(StringUtils.isNotBlank(bo.getPassword()), YmUser::getPassword, bo.getPassword());
        lqw.like(StringUtils.isNotBlank(bo.getRealName()), YmUser::getRealName, bo.getRealName());
        lqw.eq(StringUtils.isNotBlank(bo.getCardId()), YmUser::getCardId, bo.getCardId());
        lqw.eq(StringUtils.isNotBlank(bo.getPhone()), YmUser::getPhone, bo.getPhone());
        lqw.eq(StringUtils.isNotBlank(bo.getAddress()), YmUser::getAddress, bo.getAddress());
        lqw.eq(StringUtils.isNotBlank(bo.getDistrictCode()), YmUser::getDistrictCode, bo.getDistrictCode());
        return lqw;
    }

    /**
     * 新增疫苗预约用户
     */
    @Override
    public Boolean insertByBo(YmUserBo bo) {
        YmUser add = BeanUtil.toBean(bo, YmUser.class);
        validEntityBeforeSave(add);
        boolean flag = baseMapper.insert(add) > 0;
        if (flag) {
            bo.setId(add.getId());
        }
        return flag;
    }

    /**
     * 修改疫苗预约用户
     */
    @Override
    public Boolean updateByBo(YmUserBo bo) {
        YmUser update = BeanUtil.toBean(bo, YmUser.class);
        validEntityBeforeSave(update);
        return baseMapper.updateById(update) > 0;
    }

    /**
     * 保存前的数据校验
     */
    private void validEntityBeforeSave(YmUser entity){
        //TODO 做一些数据校验,如唯一约束
    }

    /**
     * 批量删除疫苗预约用户
     */
    @Override
    public Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid) {
        if(isValid){
            //TODO 做一些业务上的校验,判断是否需要校验
        }
        return baseMapper.deleteBatchIds(ids) > 0;
    }
}
