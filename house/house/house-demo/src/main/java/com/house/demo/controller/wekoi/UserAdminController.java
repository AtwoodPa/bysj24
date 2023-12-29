package com.house.demo.controller.wekoi;

import com.house.common.utils.StringUtils;
import com.house.common.utils.support.CommonResult;
import com.house.common.utils.support.CountablePageWrapper;
import com.house.common.utils.support.ParamUtils;
import com.house.demo.domain.dto.UserAdminDetailDto;
import com.house.demo.domain.dto.UserQuery;
import com.house.demo.service.IUserAdminService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.Objects;

/**
 * @author supanpan
 * @date 2023/12/29
 */
@Slf4j
@RestController
@RequestMapping("/backend/user")
public class UserAdminController {
    @Resource
    private IUserAdminService userAdminService;


    @GetMapping
    public CommonResult<CountablePageWrapper<UserAdminDetailDto>> list(
        @RequestParam(name = "uid",required = false,defaultValue = "") String uid,
        @RequestParam(name = "phone",required = false,defaultValue = "") String phone,
        @RequestParam(name = "start_time",required = false,defaultValue = "") String startTime,
        @RequestParam(name = "end_time",required = false,defaultValue = "") String endTime,
        @RequestParam(name = "page", required = false, defaultValue = "1") int page,
        @RequestParam(name = "page_size", required = false, defaultValue = "10") int pageSize
    ) {
        UserQuery query = UserQuery.builder()
            .uid(ParamUtils.nullableNumber(uid, Long::valueOf))
            .phone(StringUtils.trimToNull(phone))
            .build();

        // 当uid和phone都为空时，才会去判断时间
        if(Objects.isNull(query.getUid()) && Objects.isNull(query.getPhone())){
            // 判断对象是否为空，为空加上默认值
            query.setCreateTimeMillisStart(ParamUtils.nullableNumber(startTime, Long::valueOf));
            query.setCreateTimeMillisEnd(ParamUtils.nullableNumber(endTime, Long::valueOf));
        }

        return CommonResult.succeed(userAdminService.queryUserInfoDetails(page, pageSize, query));
    }
}
