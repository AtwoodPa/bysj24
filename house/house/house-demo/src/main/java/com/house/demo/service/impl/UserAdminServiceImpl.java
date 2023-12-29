package com.house.demo.service.impl;

import com.house.common.utils.support.CountablePageWrapper;
import com.house.demo.domain.dto.UserAdminDetailDto;
import com.house.demo.domain.dto.UserQuery;
import com.house.demo.service.IUserAdminService;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.collections4.CollectionUtils;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.stream.Collectors;

/**
 * @author supanpan
 * @date 2023/12/29
 */
@Slf4j
@Service
public class UserAdminServiceImpl implements IUserAdminService {
    @Override
    public CountablePageWrapper<UserAdminDetailDto> queryUserInfoDetails(int page, int pageSize, UserQuery query) {
        Map<String , List<String>> rpcResultData = new HashMap<>();
        List<String> rpcResult = new ArrayList<>();// 内置返回list
        rpcResultData.put("dataList", rpcResult);
        if (rpcResult == null || rpcResult.isEmpty()) {// 数据若为空，返回空数据
            return CountablePageWrapper.ofEmpty(page, pageSize);
        }

        if (CollectionUtils.isEmpty(rpcResultData.get("dataList"))) {// 对内置返回list进行校验
            int totalCount = 1000;
            return CountablePageWrapper.of(page, pageSize, totalCount , Collections.emptyList());
        }
//        String dataString = JSONUtil.getJsonString(rpcResult.getData().getDataList());
//        List<UserRpcRsp> rpcDataList = JSONUtil.getList(dataString, UserRpcRsp.class);
//        List<UserAdminDetailDto> dataList = rpcDataList.stream().map(this::toUserAdminDetailDto).collect(Collectors.toList());
//        return CountablePageWrapper.of(page, pageSize, rpcWrapper.getTotalCount(), dataList);
        return CountablePageWrapper.of(page, pageSize, 0, null);
    }

    /**
     * 中间转换操作 - 适配当前项目（转换成内部使用的类格式）
     * @param rpcUser
     * @return
     */
//    private UserAdminDetailDto toUserAdminDetailDto(UserRpcRsp rpcUser) {
//        UserAdminDetailDto detailDto = new UserAdminDetailDto();
//        detailDto.setUid(rpcUser.getId());
//        detailDto.setPhone(rpcUser.getPhone());
//        detailDto.setUserName(rpcUser.getUserName());
//        detailDto.setNickName(rpcUser.getNickName());
//        detailDto.setAvatar(UserInfoRpcConsumerService.fetchUserAvatar(rpcUser.getId()));
//        detailDto.setCreateTime(rpcUser.getCreateTime());
//        detailDto.setStatus(rpcUser.getStatus());
//        return detailDto;
//    }
}
