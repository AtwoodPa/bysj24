package com.ym.vaccine.service.impl;

import com.ym.vaccine.domain.YmAppoint;
import com.ym.vaccine.service.ITaskService;
import com.ym.vaccine.service.IYmAppointService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

/**
 * @author supanpan
 * @date 2024/01/31
 */
@Service
@RequiredArgsConstructor

public class TaskServiceImpl implements ITaskService {

    private final IYmAppointService appointService;

    @Override
    @Transactional(rollbackFor = Exception.class)// 开启事务回滚
    public void change0To5(List<YmAppoint> appointList) {
        for (int i = 0; i < appointList.size(); i++) {
            if (new Date().after(appointList.get(i).getAppointDate())) {
                appointList.get(i).setStatus(5L);
                appointService.updateById(appointList.get(i));
            }
        }
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void changeTo7(List<YmAppoint> appointList) {
        for (int i = 0; i < appointList.size(); i++) {
            appointList.get(i).setStatus(7L);
            appointService.updateById(appointList.get(i));
        }
    }
}
