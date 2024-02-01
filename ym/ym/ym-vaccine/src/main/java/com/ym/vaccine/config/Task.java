package com.ym.vaccine.config;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.ym.vaccine.domain.YmAppoint;
import com.ym.vaccine.mapper.YmAppointMapper;
import com.ym.vaccine.service.ITaskService;
import com.ym.vaccine.service.IYmAppointService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;

import java.util.List;

/**
 * 定时任务配置
 *
 * 1. 处理预约时间已经过期的预约
 * 2. 处理接种流程未正常结束的预约
 * @author supanpan
 * @date 2024/01/31
 */
@Configuration
@EnableScheduling
public class Task {
    private static final Logger logger = LoggerFactory.getLogger(Task.class);

    @Autowired
    private YmAppointMapper appointMapper;

    @Autowired
    private ITaskService taskService;

    @Scheduled(cron = "0 0 1 * * *")
    private void Task() {
        logger.info("开始处理预约时间已经过期的预约");
        QueryWrapper<YmAppoint> appointQueryWrapper = new QueryWrapper<>();
        appointQueryWrapper.eq("status", 0);

        List<YmAppoint> appointList1 = appointMapper.selectList(appointQueryWrapper);
        taskService.change0To5(appointList1);
        logger.info("处理预约时间已经过期的预约结束");

        logger.info("开始处理接种流程未正常结束的预约");
        appointQueryWrapper.clear();
        appointQueryWrapper.eq("status", 1);
        appointQueryWrapper.or();
        appointQueryWrapper.eq("status", 2);
        appointQueryWrapper.or();
        appointQueryWrapper.eq("status", 3);
        List<YmAppoint> appointList2 = appointMapper.selectList(appointQueryWrapper);
        taskService.changeTo7(appointList2);
        logger.info("处理接种流程未正常结束的预约结束");
    }
}
