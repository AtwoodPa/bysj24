<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="疫苗用户名" prop="username">
        <el-input
          v-model="queryParams.username"
          placeholder="请输入疫苗用户名"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="疫苗用户密码" prop="password">
        <el-input
          v-model="queryParams.password"
          placeholder="请输入疫苗用户密码"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="疫苗用户真实姓名" prop="realName">
        <el-input
          v-model="queryParams.realName"
          placeholder="请输入疫苗用户真实姓名"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="疫苗用户身份证号" prop="cardId">
        <el-input
          v-model="queryParams.cardId"
          placeholder="请输入疫苗用户身份证号"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="疫苗用户手机号" prop="phone">
        <el-input
          v-model="queryParams.phone"
          placeholder="请输入疫苗用户手机号"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="疫苗用户地址" prop="address">
        <el-input
          v-model="queryParams.address"
          placeholder="请输入疫苗用户地址"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="疫苗用户所在地区编码" prop="districtCode">
        <el-input
          v-model="queryParams.districtCode"
          placeholder="请输入疫苗用户所在地区编码"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['vaccine:ym_user:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['vaccine:ym_user:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['vaccine:ym_user:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['vaccine:ym_user:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="ym_userList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="疫苗用户id" align="center" prop="id" v-if="true"/>
      <el-table-column label="疫苗用户名" align="center" prop="username" />
      <el-table-column label="疫苗用户密码" align="center" prop="password" />
      <el-table-column label="疫苗用户真实姓名" align="center" prop="realName" />
      <el-table-column label="疫苗用户身份证号" align="center" prop="cardId" />
      <el-table-column label="疫苗用户手机号" align="center" prop="phone" />
      <el-table-column label="疫苗用户地址" align="center" prop="address" />
      <el-table-column label="疫苗用户所在地区编码" align="center" prop="districtCode" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['vaccine:ym_user:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['vaccine:ym_user:remove']"
          >删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <pagination
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改疫苗预约用户对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="疫苗用户名" prop="username">
          <el-input v-model="form.username" placeholder="请输入疫苗用户名" />
        </el-form-item>
        <el-form-item label="疫苗用户密码" prop="password">
          <el-input v-model="form.password" placeholder="请输入疫苗用户密码" />
        </el-form-item>
        <el-form-item label="疫苗用户真实姓名" prop="realName">
          <el-input v-model="form.realName" placeholder="请输入疫苗用户真实姓名" />
        </el-form-item>
        <el-form-item label="疫苗用户身份证号" prop="cardId">
          <el-input v-model="form.cardId" placeholder="请输入疫苗用户身份证号" />
        </el-form-item>
        <el-form-item label="疫苗用户手机号" prop="phone">
          <el-input v-model="form.phone" placeholder="请输入疫苗用户手机号" />
        </el-form-item>
        <el-form-item label="疫苗用户地址" prop="address">
          <el-input v-model="form.address" placeholder="请输入疫苗用户地址" />
        </el-form-item>
        <el-form-item label="疫苗用户所在地区编码" prop="districtCode">
          <el-input v-model="form.districtCode" placeholder="请输入疫苗用户所在地区编码" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button :loading="buttonLoading" type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import { listYm_user, getYm_user, delYm_user, addYm_user, updateYm_user } from "@/api/vaccine/ym_user";

export default {
  name: "Ym_user",
  data() {
    return {
      // 按钮loading
      buttonLoading: false,
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 疫苗预约用户表格数据
      ym_userList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        username: undefined,
        password: undefined,
        realName: undefined,
        cardId: undefined,
        phone: undefined,
        address: undefined,
        districtCode: undefined
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        id: [
          { required: true, message: "疫苗用户id不能为空", trigger: "blur" }
        ],
        username: [
          { required: true, message: "疫苗用户名不能为空", trigger: "blur" }
        ],
        password: [
          { required: true, message: "疫苗用户密码不能为空", trigger: "blur" }
        ],
        realName: [
          { required: true, message: "疫苗用户真实姓名不能为空", trigger: "blur" }
        ],
        cardId: [
          { required: true, message: "疫苗用户身份证号不能为空", trigger: "blur" }
        ],
        phone: [
          { required: true, message: "疫苗用户手机号不能为空", trigger: "blur" }
        ],
        address: [
          { required: true, message: "疫苗用户地址不能为空", trigger: "blur" }
        ],
        districtCode: [
          { required: true, message: "疫苗用户所在地区编码不能为空", trigger: "blur" }
        ]
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询疫苗预约用户列表 */
    getList() {
      this.loading = true;
      listYm_user(this.queryParams).then(response => {
        this.ym_userList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 表单重置
    reset() {
      this.form = {
        id: undefined,
        username: undefined,
        password: undefined,
        realName: undefined,
        cardId: undefined,
        phone: undefined,
        address: undefined,
        districtCode: undefined
      };
      this.resetForm("form");
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNum = 1;
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.resetForm("queryForm");
      this.handleQuery();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.id)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加疫苗预约用户";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.loading = true;
      this.reset();
      const id = row.id || this.ids
      getYm_user(id).then(response => {
        this.loading = false;
        this.form = response.data;
        this.open = true;
        this.title = "修改疫苗预约用户";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          this.buttonLoading = true;
          if (this.form.id != null) {
            updateYm_user(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            }).finally(() => {
              this.buttonLoading = false;
            });
          } else {
            addYm_user(this.form).then(response => {
              this.$modal.msgSuccess("新增成功");
              this.open = false;
              this.getList();
            }).finally(() => {
              this.buttonLoading = false;
            });
          }
        }
      });
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      const ids = row.id || this.ids;
      this.$modal.confirm('是否确认删除疫苗预约用户编号为"' + ids + '"的数据项？').then(() => {
        this.loading = true;
        return delYm_user(ids);
      }).then(() => {
        this.loading = false;
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {
      }).finally(() => {
        this.loading = false;
      });
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('vaccine/ym_user/export', {
        ...this.queryParams
      }, `ym_user_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
