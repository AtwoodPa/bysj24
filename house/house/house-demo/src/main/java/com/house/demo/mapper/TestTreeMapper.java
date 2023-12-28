package com.house.demo.mapper;

import com.house.common.annotation.DataColumn;
import com.house.common.annotation.DataPermission;
import com.house.common.core.mapper.BaseMapperPlus;
import com.house.demo.domain.TestTree;
import com.house.demo.domain.vo.TestTreeVo;

/**
 * 测试树表Mapper接口
 *
 * @author Lion Li
 * @date 2021-07-26
 */
@DataPermission({
    @DataColumn(key = "deptName", value = "dept_id"),
    @DataColumn(key = "userName", value = "user_id")
})
public interface TestTreeMapper extends BaseMapperPlus<TestTreeMapper, TestTree, TestTreeVo> {

}
