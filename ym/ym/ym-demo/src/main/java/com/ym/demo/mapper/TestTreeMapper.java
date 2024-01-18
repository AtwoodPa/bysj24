package com.ym.demo.mapper;

import com.ym.common.annotation.DataColumn;
import com.ym.common.annotation.DataPermission;
import com.ym.common.core.mapper.BaseMapperPlus;
import com.ym.demo.domain.TestTree;
import com.ym.demo.domain.vo.TestTreeVo;

/**
 * 测试树表Mapper接口
 *
 * @author PP
 * @date 2021-07-26
 */
@DataPermission({
    @DataColumn(key = "deptName", value = "dept_id"),
    @DataColumn(key = "userName", value = "user_id")
})
public interface TestTreeMapper extends BaseMapperPlus<TestTreeMapper, TestTree, TestTreeVo> {

}
