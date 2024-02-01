package com.ym.vaccine.service.impl;

import cn.hutool.core.bean.BeanUtil;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ym.common.utils.StringUtils;
import com.ym.common.core.page.TableDataInfo;
import com.ym.common.core.domain.PageQuery;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.ym.vaccine.domain.YmPay;
import com.ym.vaccine.domain.YmPlan;
import com.ym.vaccine.service.IVaccineService;
import com.ym.vaccine.service.IYmPayService;
import com.ym.vaccine.service.IYmPlanService;
import com.ym.vaccine.utils.QRCodeUtils;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import com.ym.vaccine.domain.bo.YmAppointBo;
import com.ym.vaccine.domain.vo.YmAppointVo;
import com.ym.vaccine.domain.YmAppoint;
import com.ym.vaccine.mapper.YmAppointMapper;
import com.ym.vaccine.service.IYmAppointService;
import org.springframework.transaction.annotation.Transactional;

import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets;
import java.util.*;

/**
 * 预约Service业务层处理
 *
 * @author ym
 * @date 2024-01-29
 */
@RequiredArgsConstructor
@Service
public class YmAppointServiceImpl extends ServiceImpl<YmAppointMapper,YmAppoint> implements IYmAppointService {

    private final YmAppointMapper baseMapper;

    private final IYmPlanService planService;
    private final IVaccineService vaccineService;
    private final IYmPayService payService;

    @Value("${upload.image.qrCodeImage.url}")
    private String uploadImageQrCodeImageUrl;

    @Override
    @Transactional(rollbackFor = Exception.class)   //出错回滚
    public void appoint(YmAppoint appoint, YmPlan plan) throws Exception {
        try {
            uploadImageQrCodeImageUrl = new String(uploadImageQrCodeImageUrl.getBytes("iso8859-1"), StandardCharsets.UTF_8);   //application.properties有中文需要转码
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("字符转码异常！");
        }

        if (appoint == null || plan == null) {
            throw new RuntimeException("参数有误");
        }

        plan.setAmount(plan.getAmount() - 1);
        planService.updateById(plan);
        appoint.setStatus(0L);
        appoint.setCreateTime(new Date());
        save(appoint);
        String fileName = UUID.randomUUID().toString().replace("-", "") + ".jpg";
        String path = QRCodeUtils.generateQRCode(appoint.getId() + "", 400, 400, "jpg", uploadImageQrCodeImageUrl + "/" + fileName);
        appoint.setQrCodeUrl("/" + fileName);
        updateById(appoint);

        YmPay pay = new YmPay();
        pay.setCost(vaccineService.getById(plan.getVaccineId()).getPrice());
        pay.setCreateTime(new Date());
        pay.setAppointId(appoint.getId());
        payService.save(pay);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)   //出错回滚
    public void cancelAppoint(YmAppoint appoint, YmPlan plan) {
        if (appoint == null || plan == null) {
            throw new RuntimeException("参数有误");
        }

        appoint.setStatus(6L);
        updateById(appoint);

        plan.setAmount(plan.getAmount() + 1);
        planService.updateById(plan);
    }

    /**
     * 查询预约
     */
    @Override
    public YmAppointVo queryById(Long id){
        return baseMapper.selectVoById(id);
    }

    /**
     * 查询预约列表
     */
    @Override
    public TableDataInfo<YmAppointVo> queryPageList(YmAppointBo bo, PageQuery pageQuery) {
        LambdaQueryWrapper<YmAppoint> lqw = buildQueryWrapper(bo);
        Page<YmAppointVo> result = baseMapper.selectVoPage(pageQuery.build(), lqw);
        return TableDataInfo.build(result);
    }

    /**
     * 查询预约列表
     */
    @Override
    public List<YmAppointVo> queryList(YmAppointBo bo) {
        LambdaQueryWrapper<YmAppoint> lqw = buildQueryWrapper(bo);
        return baseMapper.selectVoList(lqw);
    }

    private LambdaQueryWrapper<YmAppoint> buildQueryWrapper(YmAppointBo bo) {
       // Map<String, Object> params = bo.getParams();
        LambdaQueryWrapper<YmAppoint> lqw = Wrappers.lambdaQuery();
        lqw.eq(bo.getUserId() != null, YmAppoint::getUserId, bo.getUserId());
        lqw.eq(bo.getAppointDate() != null, YmAppoint::getAppointDate, bo.getAppointDate());
        lqw.eq(bo.getStatus() != null, YmAppoint::getStatus, bo.getStatus());
        lqw.eq(StringUtils.isNotBlank(bo.getQrCodeUrl()), YmAppoint::getQrCodeUrl, bo.getQrCodeUrl());
        lqw.eq(bo.getPlanId() != null, YmAppoint::getPlanId, bo.getPlanId());
        lqw.eq(bo.getTimeSlot() != null, YmAppoint::getTimeSlot, bo.getTimeSlot());
        return lqw;
    }

    /**
     * 新增预约
     */
    @Override
    public Boolean insertByBo(YmAppointBo bo) {
        YmAppoint add = BeanUtil.toBean(bo, YmAppoint.class);
        validEntityBeforeSave(add);
        boolean flag = baseMapper.insert(add) > 0;
        if (flag) {
            bo.setId(add.getId());
        }
        return flag;
    }

    /**
     * 修改预约
     */
    @Override
    public Boolean updateByBo(YmAppointBo bo) {
        YmAppoint update = BeanUtil.toBean(bo, YmAppoint.class);
        validEntityBeforeSave(update);
        return baseMapper.updateById(update) > 0;
    }

    /**
     * 保存前的数据校验
     */
    private void validEntityBeforeSave(YmAppoint entity){
        //TODO 做一些数据校验,如唯一约束
    }

    /**
     * 批量删除预约
     */
    @Override
    public Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid) {
        if(isValid){
            //TODO 做一些业务上的校验,判断是否需要校验
        }
        return baseMapper.deleteBatchIds(ids) > 0;
    }
}
