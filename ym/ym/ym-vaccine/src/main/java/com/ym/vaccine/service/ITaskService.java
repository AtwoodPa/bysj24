package com.ym.vaccine.service;

import com.ym.vaccine.domain.YmAppoint;

import java.util.List;

/**
 * 预约计划定时任务
 *
 * @author supanpan
 * @date 2024/01/31
 */
public interface ITaskService {
    void change0To5(List<YmAppoint> appointList);

    void changeTo7(List<YmAppoint> appointList);
}
