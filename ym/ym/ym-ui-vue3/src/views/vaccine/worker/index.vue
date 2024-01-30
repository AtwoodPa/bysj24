<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="default" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="用户名" prop="username">
        <el-input
          v-model="queryParams.username"
          placeholder="请输入医护人员用户名"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="真实姓名" prop="realName">
        <el-input
          v-model="queryParams.realName"
          placeholder="请输入医护人员姓名"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="手机号码" prop="phone">
        <el-input
          v-model="queryParams.phone"
          placeholder="请输入医护人员手机号码"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="Search"  @click="handleQuery">搜索</el-button>
        <el-button icon="Refresh"  @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="Plus"

          @click="handleAdd"
          v-hasPermi="['vaccine:worker:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="Edit"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['vaccine:worker:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="Delete"

          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['vaccine:worker:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="Download"

          @click="handleExport"
          v-hasPermi="['vaccine:worker:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar v-model:showSearch="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="workerList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="ID" align="center" prop="id" v-if="true"/>
      <el-table-column label="用户名" align="center" prop="username" />
      <el-table-column label="密码" align="center" prop="password" value="***"/>
      <el-table-column label="真实姓名" align="center" prop="realName" />
      <el-table-column label="身份证号" align="center" prop="cardId" />
      <el-table-column label="手机号码" align="center" prop="phone" />
      <el-table-column label="接种站点" align="center" prop="inoculateSiteName" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template #default="scope">
          <el-tooltip content="修改" placement="top" >
            <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)" v-hasPermi="['vaccine:worker:edit']"></el-button>
          </el-tooltip>
          <el-tooltip content="删除" placement="top" >
            <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)" v-hasPermi="['vaccine:worker:remove']"></el-button>
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

    <!-- 添加或修改医护人员信息对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="workerForm" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="用户名" prop="username">
          <el-input v-model="form.username" placeholder="请输入" />
        </el-form-item>
        <el-form-item label="密码" prop="password">
          <el-input v-model="form.password" placeholder="请输入" />
        </el-form-item>
        <el-form-item label="真实姓名" prop="realName">
          <el-input v-model="form.realName" placeholder="请输入" />
        </el-form-item>
        <el-form-item label="身份证号" prop="cardId">
          <el-input v-model="form.cardId" placeholder="请输入" />
        </el-form-item>
        <el-form-item label="联系方式" prop="phone">
          <el-input v-model="form.phone" placeholder="请输入" />
        </el-form-item>
        <el-form-item label="接种站点" prop="inoculateSiteId">
          <el-select
            v-model="form.inoculateSiteId"
            class="m-2"
            placeholder="请输入接种点名称"
            style="width: 400px"
          >
            <el-option
              v-for="item in siteOptions"
              :key="item.key"
              :label="item.value"
              :value="item.key"
            />
          </el-select>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button :loading="buttonLoading" type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script setup name="Worker">
import { listWorker, getWorker, delWorker, addWorker, updateWorker } from "@/api/vaccine/worker";
import {getInoculateSiteSelectOption} from "@/api/vaccine/plan";
const {proxy} = getCurrentInstance();

const workerList = ref([]);
const open = ref(false);
const buttonLoading = ref(false);
const loading = ref(true);
const showSearch = ref(true);
const ids = ref([]);
const single = ref(true);
const multiple = ref(true);
const total = ref(0);
const title = ref("");
const siteOptions = ref([]);
const data = reactive({
  queryParams: {
    pageNum: 1,
    pageSize: 10,
    username: undefined,
    password: undefined,
    realName: undefined,
    cardId: undefined,
    phone: undefined,
    inoculateSiteId: undefined
  },
  form: {
    id: undefined,
    username: undefined,
    password: undefined,
    realName: undefined,
    cardId: undefined,
    phone: undefined,
    inoculateSiteId: undefined
  },
  rules: {
    id: [
      { required: true, message: "不能为空", trigger: "blur" }
    ],
    username: [
      { required: true, message: "不能为空", trigger: "blur" }
    ],
    password: [
      { required: true, message: "不能为空", trigger: "blur" }
    ],
    realName: [
      { required: true, message: "不能为空", trigger: "blur" }
    ],
    cardId: [
      { required: true, message: "不能为空", trigger: "blur" }
    ],
    phone: [
      { required: true, message: "不能为空", trigger: "blur" }
    ],
    inoculateSiteId: [
      { required: true, message: "不能为空", trigger: "blur" }
    ]
  }
});
const {queryParams, form, rules} = toRefs(data);

function getList() {
  loading.value = true;
  listWorker(queryParams.value).then(response => {
    workerList.value = response.rows;
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
    inoculateSiteId: undefined
  };
  proxy.resetForm["workerForm"];
}
function handleQuery() {
  queryParams.value.pageNum = 1;
  getList();
}

function resetQuery() {
  proxy.resetForm("queryForm");
  handleQuery();
}
/** 多选框选中数据 **/
function handleSelectionChange(selection) {
  ids.value = selection.map(item => item.id);
  single.value = selection.length !== 1;
  multiple.value = !selection.length;
}
function handleAdd() {
  reset();
  open.value = true;
  title.value = "添加医护人员信息";
}

function handleUpdate(row) {
  loading.value = true;
  reset();
  const id = row.id || ids.value;
  getWorker(id).then(response => {
    loading.value = false;
    form.value = response.data;
    open.value = true;
    title.value = "修改医护人员信息";
  });
}
function submitForm() {
  proxy.$refs["workerForm"].validate(valid => {
    if (valid) {
      buttonLoading.value = true;
      if (form.value.id != null) {
        updateWorker(form.value).then(response => {
          proxy.$modal.msgSuccess("修改成功");
          open.value = false;
          getList();
        }).finally(() => {
          buttonLoading.value = false;
        });
      } else {
        addWorker(form.value).then(response => {
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
  const ids = row.id || this.ids;
  handleDelete.$modal.confirm('是否确认删除医护人员信息编号为"' + ids + '"的数据项？').then(() => {
    loading.value = true;
    return delWorker(ids);
  }).then(() => {
    loading.value = false;
    this.getList();
    proxy.$modal.msgSuccess("删除成功");
  }).catch(() => {
  }).finally(() => {
    loading.value = false;
  });
}

function handleExport() {
  proxy.download('vaccine/worker/export', {
    ...queryParams.value,
  }, `worker_${new Date().getTime()}.xlsx`)
}
function getInoculateSite(){
  getInoculateSiteSelectOption().then(resp => {
    siteOptions.value = resp.data
  })
}
getInoculateSite();
getList();
</script>
