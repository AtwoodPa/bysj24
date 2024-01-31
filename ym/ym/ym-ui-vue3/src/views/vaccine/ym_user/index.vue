<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="default" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="用户名" prop="username">
        <el-input
          v-model="queryParams.username"
          placeholder="请输入用户名"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>

      <el-form-item label="真实姓名" prop="realName">
        <el-input
          v-model="queryParams.realName"
          placeholder="请输入用户真实姓名"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="身份证号" prop="cardId">
        <el-input
          v-model="queryParams.cardId"
          placeholder="请输入身份证号"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="手机号" prop="phone">
        <el-input
          v-model="queryParams.phone"
          placeholder="请输入用户手机号"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="用户地址" prop="address">
        <el-input
          v-model="queryParams.address"
          placeholder="请输入用户地址"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="Search" @click="handleQuery">搜索</el-button>
        <el-button icon="Refresh" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="Plus"
          @click="handleAdd"
          v-hasPermi="['vaccine:ym_user:add']"
        >新增
        </el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="Edit"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['vaccine:ym_user:edit']"
        >修改
        </el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="Delete"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['vaccine:ym_user:remove']"
        >删除
        </el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="Download"

          @click="handleExport"
          v-hasPermi="['vaccine:ym_user:export']"
        >导出
        </el-button>
      </el-col>
      <right-toolbar v-model:showSearch="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="ym_userList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center"/>
      <el-table-column label="用户编号" align="center" prop="id" v-if="columns[0].visible"/>
      <el-table-column label="用户名" align="center" prop="username" v-if="columns[1].visible"/>
      <el-table-column label="用户密码" align="center" prop="password" v-if="columns[2].visible"/>
      <el-table-column label="用户真实姓名" align="center" prop="realName" v-if="columns[3].visible"/>
      <el-table-column label="用户身份证号" align="center" prop="cardId" v-if="columns[4].visible"/>
      <el-table-column label="用户手机号" align="center" prop="phone" v-if="columns[5].visible"/>
      <el-table-column label="用户地址" align="center" prop="address" v-if="columns[6].visible"/>
      <el-table-column label="用户所在地区编码" align="center" prop="districtCode" v-if="columns[7].visible"/>
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width" v-if="columns[8].visible">
        <template #default="scope">
          <el-tooltip content="修改" placement="top">
            <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)"
                       v-hasPermi="['vaccine:ym_user:edit']"></el-button>
          </el-tooltip>
          <el-tooltip content="删除" placement="top">
            <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)"
                       v-hasPermi="['vaccine:ym_user:remove']"></el-button>
          </el-tooltip>
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
    <el-dialog :title="title" v-model="open" width="600px" append-to-body>
      <el-form ref="userForm" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="用 户 名" prop="username">
          <el-input v-model="form.username" placeholder="请输入疫苗用户名"/>
        </el-form-item>
        <el-form-item label="用户密码" prop="password">
          <el-input v-model="form.password" placeholder="请输入疫苗用户密码"/>
        </el-form-item>
        <el-form-item label="真实姓名" prop="realName">
          <el-input v-model="form.realName" placeholder="请输入疫苗用户真实姓名"/>
        </el-form-item>
        <el-form-item label="身份证号" prop="cardId">
          <el-input v-model="form.cardId" placeholder="请输入疫苗用户身份证号"/>
        </el-form-item>
        <el-form-item label="联系方式" prop="phone">
          <el-input v-model="form.phone" placeholder="请输入疫苗用户手机号"/>
        </el-form-item>
        <el-form-item label="用户地址" prop="address">
          <el-input v-model="form.address" placeholder="请输入疫苗用户地址"/>
        </el-form-item>
        <el-form-item label="地区编码" prop="districtCode">
          <el-input v-model="form.districtCode" placeholder="请输入疫苗用户所在地区编码"/>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button :loading="buttonLoading" type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script setup name="Ym_user">
import {listYm_user, getYm_user, delYm_user, addYm_user, updateYm_user} from "@/api/vaccine/ym_user";


const {proxy} = getCurrentInstance();

const ym_userList = ref([]);
const open = ref(false);
const buttonLoading = ref(false);
const loading = ref(true);
const showSearch = ref(true);
const ids = ref([]);
const single = ref(true);
const multiple = ref(true);
const total = ref(0);
const title = ref("");

const columns = ref([
  {key: 0, label: `用户编号`, visible: true},
  {key: 1, label: `用户名`, visible: true},
  {key: 2, label: `用户密码`, visible: true},
  {key: 3, label: `真实姓名`, visible: true},
  {key: 4, label: `身份证号`, visible: true},
  {key: 5, label: `联系方式`, visible: true},
  {key: 6, label: `用户地址`, visible: true},
  {key: 7, label: `地区编码`, visible: true},
  {key: 8, label: `操作`, visible: true}

]);

const data = reactive({
  form: {},
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
  rules: {
    id: [
      {required: true, message: "疫苗用户id不能为空", trigger: "blur"}
    ],
    username: [
      {required: true, message: "疫苗用户名不能为空", trigger: "blur"}
    ],
    password: [
      {required: true, message: "疫苗用户密码不能为空", trigger: "blur"}
    ],
    realName: [
      {required: true, message: "疫苗用户真实姓名不能为空", trigger: "blur"}
    ],
    cardId: [
      {required: true, message: "疫苗用户身份证号不能为空", trigger: "blur"}
    ],
    phone: [
      {required: true, message: "疫苗用户手机号不能为空", trigger: "blur"}
    ],
    address: [
      {required: true, message: "疫苗用户地址不能为空", trigger: "blur"}
    ],
    districtCode: [
      {required: true, message: "疫苗用户所在地区编码不能为空", trigger: "blur"}
    ]
  }
});

const {queryParams, form, rules} = toRefs(data);

function getList() {
  loading.value = true;
  listYm_user(queryParams.value).then(response => {
    ym_userList.value = response.rows;
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
    username: undefined,
    password: undefined,
    realName: undefined,
    cardId: undefined,
    phone: undefined,
    address: undefined,
    districtCode: undefined
  };
  proxy.resetForm["userForm"];
}

function handleQuery() {
  queryParams.value.pageNum = 1;
  getList();
}

function resetQuery() {
  proxy.resetForm("queryForm");
  handleQuery();
}

function handleSelectionChange(selection) {
  ids.value = selection.map(item => item.id)
  single.value = selection.length !== 1
  multiple.value = !selection.length
}

function handleAdd() {
  reset();
  open.value = true;
  title.value = "添加疫苗预约用户";
}

function handleUpdate(row) {
  loading.value = true;
  reset();
  const id = row.id || ids.value
  getYm_user(id).then(response => {
    loading.value = false;
    form.value = response.data;
    open.value = true;
    title.value = "修改疫苗预约用户";
  });
}

function submitForm() {
  proxy.$refs["userForm"].validate(valid => {
    if (valid) {
      buttonLoading.value = true;
      if (form.value.id != null) {
        updateYm_user(form.value).then(response => {
          proxy.$modal.msgSuccess("修改成功");
          open.value = false;
          getList();
        }).finally(() => {
          buttonLoading.value = false;
        });
      } else {
        addYm_user(form.value).then(response => {
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
  const ids = row.id || ids.value;
  proxy.$modal.confirm('是否确认删除疫苗预约用户编号为"' + ids + '"的数据项？').then(() => {
    loading.value = true;
    return delYm_user(ids);
  }).then(() => {
    loading.value = false;
    getList();
    proxy.$modal.msgSuccess("删除成功");
  }).catch(() => {
  }).finally(() => {
    loading.value = false;
  });
}

function handleExport() {
  proxy.download('vaccine/user/export', {
    ...queryParams.value
  }, `user_${new Date().getTime()}.xlsx`)
}

getList()
</script>
