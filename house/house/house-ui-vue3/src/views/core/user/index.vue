<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="房源id" prop="houseId">
        <el-input
          v-model="queryParams.houseId"
          placeholder="请输入房源id"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="用户id" prop="userId">
        <el-input
          v-model="queryParams.userId"
          placeholder="请输入用户id"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="发布人id(房东id)" prop="publishId">
        <el-input
          v-model="queryParams.publishId"
          placeholder="请输入发布人id(房东id)"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="实际价格" prop="actualPrice">
        <el-input
          v-model="queryParams.actualPrice"
          placeholder="请输入实际价格"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="0：待出租, 1：已出租, 2:下架" prop="state">
        <el-input
          v-model="queryParams.state"
          placeholder="请输入0：待出租, 1：已出租, 2:下架"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search"  @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh"  @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="Plus"
          @click="handleAdd"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="Edit"
          :disabled="single"
          @click="handleUpdate"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="Delete"
          :disabled="multiple"
          @click="handleDelete"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="Download"
          @click="handleExport"
        >导出</el-button>
      </el-col>
      <right-toolbar v-model:showSearch="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="userList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="" align="center" prop="id" v-if="true"/>
      <el-table-column label="房源id" align="center" prop="houseId" />
      <el-table-column label="用户id" align="center" prop="userId" />
      <el-table-column label="发布人id(房东id)" align="center" prop="publishId" />
      <el-table-column label="实际价格" align="center" prop="actualPrice" />
      <el-table-column label="0：待出租, 1：已出租, 2:下架" align="center" prop="state" />
      <el-table-column label="" align="center" prop="remark" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template #default="scope">
          <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)" >修改</el-button>
          <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)" >删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <pagination
      v-show="total > 0"
      :total="total"
      v-model:page="queryParams.pageNum"
      v-model:limit="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改出租管理对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="rentUserRef" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="房源id" prop="houseId">
          <el-input v-model="form.houseId" placeholder="请输入房源id" />
        </el-form-item>
        <el-form-item label="用户id" prop="userId">
          <el-input v-model="form.userId" placeholder="请输入用户id" />
        </el-form-item>
        <el-form-item label="发布人id(房东id)" prop="publishId">
          <el-input v-model="form.publishId" placeholder="请输入发布人id(房东id)" />
        </el-form-item>
        <el-form-item label="实际价格" prop="actualPrice">
          <el-input v-model="form.actualPrice" placeholder="请输入实际价格" />
        </el-form-item>
        <el-form-item label="0：待出租, 1：已出租, 2:下架" prop="state">
          <el-input v-model="form.state" placeholder="请输入0：待出租, 1：已出租, 2:下架" />
        </el-form-item>
        <el-form-item label="" prop="remark">
          <el-input v-model="form.remark" placeholder="请输入" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button :loading="buttonLoading" type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script setup name="RentUser">
import { listUser, getUser, delUser, addUser, updateUser } from "@/api/core/user";
const { proxy } = getCurrentInstance();

const userList = ref([]);
const open = ref(false);
const buttonLoading = ref(false);
const loading = ref(true);
const showSearch = ref(true);
const ids = ref([]);
const single = ref(true);
const multiple = ref(true);
const total = ref(0);
const title = ref("");

const data = reactive({
  // 查询参数
  queryParams: {
    pageNum: 1,
    pageSize: 10,
    houseId: undefined,
    userId: undefined,
    publishId: undefined,
    actualPrice: undefined,
    state: undefined,
  },
  // 表单参数
  form: {},
  // 表单校验
  rules: {
    id: [
      { required: true, message: "不能为空", trigger: "blur" }
    ],
    houseId: [
      { required: true, message: "房源id不能为空", trigger: "blur" }
    ],
    userId: [
      { required: true, message: "用户id不能为空", trigger: "blur" }
    ],
    publishId: [
      { required: true, message: "发布人id(房东id)不能为空", trigger: "blur" }
    ],
    actualPrice: [
      { required: true, message: "实际价格不能为空", trigger: "blur" }
    ],
    state: [
      { required: true, message: "0：待出租, 1：已出租, 2:下架不能为空", trigger: "blur" }
    ],
    remark: [
      { required: true, message: "不能为空", trigger: "blur" }
    ]
  }
});

const { queryParams, form, rules } = toRefs(data);

function getList(){
  loading.value = true;
  listUser(queryParams.value).then(response => {
    userList.value = response.rows;
    total.value = response.total;
    loading.value = false;
  });
}

function cancel() {
  open.value = false;
  reset();
}

function reset() {
  form.value = {
    id: undefined,
    houseId: undefined,
    userId: undefined,
    publishId: undefined,
    actualPrice: undefined,
    state: undefined,
    createTime: undefined,
    createBy: undefined,
    updateTime: undefined,
    updateBy: undefined,
    remark: undefined
  };
  proxy.resetForm("rentUserRef");
}

function handleQuery() {
  queryParams.value.pageNum = 1;
  getList();
}

function resetQuery() {
  proxy.resetForm("queryForm");
  handleQuery();
}

function handleAdd() {
  reset();
  open.value = true;
  title.value = "添加出租记录";
}

function handleUpdate(row) {
  loading.value = true;
  reset();
  const id = row.id || ids.value
  getUser(id).then(response => {
    loading.value = false;
    form.value = response.data;
    open.value = true;
    title.value = "修改出租记录";
  });
}

function submitForm() {
  proxy.$refs["rentUserRef"].validate(valid => {
    if (valid) {
      buttonLoading.value = true;
      if (form.value.id != null) {
        updateUser(form.value).then(response => {
          proxy.$modal.msgSuccess("修改成功");
          open.value = false;
          getList();
        }).finally(() => {
          buttonLoading.value = false;
        });
      } else {
        addUser(form.value).then(response => {
          proxy.$modal.msgSuccess("新增成功");
          open.value = false;
          getList();
        }).finally(() => {
          buttonLoading.value = false;
        });
      }
    }
  });
}

function handleDelete(row) {
  const ruids = row.id || ids.value;
  proxy.$modal.confirm('是否确认删除出租记录编号为"' + ruids + '"的数据项？').then(() => {
    loading.value = true;
    return delUser(ruids);
  }).then(() => {
    loading.value = false;
    getList();
    proxy.$modal.msgSuccess("删除成功");
  }).catch(() => {
  }).finally(() => {
    loading.value = false;
  });
}

function handleSelectionChange(val) {
  ids.value = val.map(item => item.id);
  single.value = val.length !== 1;
  multiple.value = !val.length;
}
function handleExport() {
  proxy.download('core/user/export', {
    ...queryParams.value
  }, `rendUser_${new Date().getTime()}.xlsx`)
}
getList();
</script>
