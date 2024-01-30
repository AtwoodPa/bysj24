<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="default" :inline="true" v-show="showSearch" label-width="100px">
      <el-form-item label="接种点名称" prop="name">
        <el-input
          v-model="queryParams.name"
          placeholder="请输入接种点名称"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="接种点地址" prop="address">
        <el-input
          v-model="queryParams.address"
          placeholder="请输入接种点地址"
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
          v-hasPermi="['vaccine:inoculateSite:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="Edit"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['vaccine:inoculateSite:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="Delete"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['vaccine:inoculateSite:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="Download"
          @click="handleExport"
          v-hasPermi="['vaccine:inoculateSite:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar v-model:showSearch="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="inoculateSiteList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="ID"  width="55"  align="center" prop="id" v-if="true"/>
      <el-table-column label="接种点图片" align="center" prop="imgUrl" />
      <el-table-column label="接种点名称" align="center" prop="name" />
      <el-table-column label="接种点地址" align="center" prop="address" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template #default="scope">
          <el-tooltip content="修改" placement="top" >
            <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)" v-hasPermi="['vaccine:inoculateSite:edit']"></el-button>
          </el-tooltip>
          <el-tooltip content="删除" placement="top" >
            <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)" v-hasPermi="['vaccine:inoculateSite:remove']"></el-button>
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

    <!-- 添加或修改疫苗接种站点管理对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="siteForm" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="站点名称" prop="name">
          <el-input v-model="form.name" placeholder="请输入疫苗接种站点名称" />
        </el-form-item>
        <el-form-item label="站点地址" prop="address">
          <el-input v-model="form.address" placeholder="请输入疫苗接种站点地址" />
        </el-form-item>
        <el-form-item label="" prop="imgUrl">
          <el-input v-model="form.imgUrl" placeholder="请输入" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button :loading="buttonLoading" type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script setup name="InoculateSite">
import { listInoculateSite, getInoculateSite, delInoculateSite, addInoculateSite, updateInoculateSite } from "@/api/vaccine/inoculateSite";
const {proxy} = getCurrentInstance();

const inoculateSiteList = ref([]);
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
  queryParams: {
    pageNum: 1,
    pageSize: 10,
    name: undefined,
    address: undefined,
    imgUrl: undefined
  },
  form: {
    id: undefined,
    name: undefined,
    address: undefined,
    imgUrl: undefined
  },
  rules: {
    id: [
      { required: true, message: "不能为空", trigger: "blur" }
    ],
    name: [
      { required: true, message: "不能为空", trigger: "blur" }
    ],
    address: [
      { required: true, message: "不能为空", trigger: "blur" }
    ],
    imgUrl: [
      { required: true, message: "不能为空", trigger: "blur" }
    ]
  }
});


const {queryParams, form, rules} = toRefs(data);

function getList() {
  loading.value = true;
  listInoculateSite(queryParams.value).then(response => {
    inoculateSiteList.value = response.rows;
    total.value = response.total;
    loading.value = false;
  });
}

function cancel() {
  open.value = false;
  reset();
};

function reset() {
  form.value = {
    id: undefined,
    name: undefined,
    address: undefined,
    imgUrl: undefined
  };
  proxy.resetForm["siteForm"];
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
  ids.value = selection.map(item => item.id);
  single.value = selection.length !== 1;
  multiple.value = !selection.length;
}

function handleAdd() {
  reset();
  open.value = true;
  title.value = "添加疫苗接种站点管理";
}
function handleUpdate(row) {
  loading.value = true;
  reset();
  const id = row.id || ids.value;
  getInoculateSite(id).then(response => {
    loading.value = false;
    form.value = response.data;
    open.value = true;
    title.value = "修改疫苗接种站点管理";
  });
}
function submitForm() {
  proxy.$refs["siteForm"].validate(valid => {
    if (valid) {
      buttonLoading.value = true;
      if (form.value.id != null) {
        updateInoculateSite(form.value).then(response => {
          proxy.$modal.msgSuccess("修改成功");
          open.value = false;
          getList();
        }).finally(() => {
          buttonLoading.value = false;
        });
      } else {
        addInoculateSite(form.value).then(response => {
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
  const id = row.id || ids.value;
  proxy.$modal.confirm('是否确认删除疫苗接种站点管理编号为"' + id + '"的数据项？').then(() => {
    loading.value = true;
    return delInoculateSite(id);
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
  this.download('vaccine/inoculateSite/export', {
    ...queryParams.value
  }, `inoculateSite_${new Date().getTime()}.xlsx`)
}

getList();
</script>
