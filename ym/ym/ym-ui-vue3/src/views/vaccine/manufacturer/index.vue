<template>
  <div class="app-container">
    <el-row>
      <el-col :span="20" :xs="24">
        <el-form :model="queryParams" ref="queryForm" size="default" :inline="true" v-show="showSearch"
                 label-width="68px">
          <el-form-item label="厂家名称" prop="facturerName">
            <el-input
              v-model="queryParams.facturerName"
              placeholder="请输入厂家名称"
              clearable
              prefix-icon="Search"
              style="width: 240px"
              @keyup.enter.native="handleQuery"
            />
          </el-form-item>
          <el-form-item label="厂家地址" prop="address">
            <el-input
              v-model="queryParams.address"
              placeholder="请输入厂家地址"
              clearable
              prefix-icon="Search"
              style="width: 240px"
              @keyup.enter.native="handleQuery"
            />
          </el-form-item>
          <el-form-item label="厂家描述" prop="description">
            <el-input
              v-model="queryParams.description"
              placeholder="请输入厂家描述"
              clearable
              @keyup.enter.native="handleQuery"
            />
          </el-form-item>
          <el-form-item>
            <el-button type="primary" icon="Search" @click="handleQuery">搜索</el-button>
            <el-button icon="Refresh" @click="resetQuery">重置</el-button>
          </el-form-item>
        </el-form>
      </el-col>
    </el-row>


    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="Plus"
          @click="handleAdd"
          v-hasPermi="['vaccine:manufacturer:add']"
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
          v-hasPermi="['vaccine:manufacturer:edit']"
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
          v-hasPermi="['vaccine:manufacturer:remove']"
        >删除
        </el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="Download"
          @click="handleExport"
          v-hasPermi="['vaccine:manufacturer:export']"
        >导出
        </el-button>
      </el-col>
      <right-toolbar v-model:showSearch="showSearch" @queryTable="getList" :columns="columns"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="manufacturerList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="50" align="center"/>
      <el-table-column label="厂家编号" width="80" align="center" prop="manufacturerId" v-if="columns[0].visible"/>
      <el-table-column label="厂家名称" align="center" prop="facturerName" v-if="columns[1].visible"/>
      <el-table-column label="厂家地址" align="center" prop="address" v-if="columns[2].visible"/>
      <el-table-column label="厂家信息描述" align="center" prop="description" v-if="columns[3].visible" :show-overflow-tooltip="true" />
      <el-table-column label="操作" align="center" class-name="default-padding fixed-width">
        <template #default="scope">
          <el-tooltip content="修改" placement="top" >
            <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)" v-hasPermi="['vaccine:manufacturer:edit']"></el-button>
          </el-tooltip>
          <el-tooltip content="删除" placement="top" >
            <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)" v-hasPermi="['vaccine:manufacturer:remove']"></el-button>
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

    <!-- 添加或修改疫苗厂家对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="manufacturerForm" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="厂家名称" prop="facturerName">
          <el-input v-model="form.facturerName" placeholder="请输入"/>
        </el-form-item>
        <el-form-item label="厂家地址" prop="address">
          <el-input v-model="form.address" placeholder="请输入"/>
        </el-form-item>
        <el-form-item label="厂家信息描述" prop="description">
          <el-input v-model="form.description" type="textarea" placeholder="请输入内容"/>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button :loading="buttonLoading" type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script setup name="Manufacturer">
import {
  listManufacturer,
  getManufacturer,
  delManufacturer,
  addManufacturer,
  updateManufacturer
} from "@/api/vaccine/manufacturer";

const {proxy} = getCurrentInstance();

const manufacturerList = ref([]);
const open = ref(false);
const buttonLoading = ref(false);
const loading = ref(true);
const showSearch = ref(true);
const ids = ref([]);
const single = ref(true);
const multiple = ref(true);
const total = ref(0);
const title = ref("");

// 列显隐信息
const columns = ref([
  { key: 0, label: `厂家编号`, visible: true },
  { key: 1, label: `厂家名称`, visible: true },
  { key: 2, label: `厂家地址`, visible: true },
  { key: 3, label: `厂家信息描述`, visible: true }
]);

const data = reactive({
  // 表单参数
  form: {},
  // 查询参数
  queryParams: {
    pageNum: 1,
    pageSize: 10,
    facturerName: undefined,
    address: undefined,
    description: undefined
  },
  // 表单校验
  rules: {
    manufacturerId: [
      {required: true, message: "不能为空", trigger: "blur"}
    ],
    facturerName: [
      {required: true, message: "不能为空", trigger: "blur"}
    ],
    address: [
      {required: true, message: "不能为空", trigger: "blur"}
    ],
    description: [
      {required: true, message: "厂家信息描述不能为空", trigger: "blur"}
    ]
  }
});
const {queryParams, form, rules} = toRefs(data);

/** 查询疫苗厂家列表 */
function getList() {
  loading.value = true;
  listManufacturer(queryParams.value).then(response => {
    manufacturerList.value = response.rows;
    total.value = response.total;
    loading.value = false;
  });
}

/** 取消按钮 */
function cancel() {
  open.value = false;
  reset();
};

/* 重置表单 */
function reset() {
  form.value = {
    manufacturerId: undefined,
    facturerName: undefined,
    address: undefined,
    description: undefined
  };
  proxy.resetForm("manufacturerForm");
};

/** 搜索按钮操作 */
function handleQuery() {
  queryParams.value.pageNum = 1;
  getList();
}

/** 重置按钮操作 */
function resetQuery() {
  proxy.resetForm("queryForm");
  handleQuery();
}

/** 多选框选中数据 **/
function handleSelectionChange(selection) {
  ids.value = selection.map(item => item.manufacturerId);
  single.value = selection.length !== 1;
  multiple.value = !selection.length;
}

/** 新增按钮操作 */
function handleAdd() {
  reset();
  open.value = true;
  title.value = "添加疫苗厂家";
}

/**修改按钮操作 */
function handleUpdate(row) {
  loading.value = true;
  reset();
  const manufacturerId = row.manufacturerId || ids.value
  getManufacturer(manufacturerId).then(response => {
    loading.value = false;
    form.value = response.data;
    form.value.manufacturerId = response.data.manufacturerId;
    form.value.facturerName = response.data.facturerName;
    form.value.address = response.data.address;
    form.value.description = response.data.description;
    open.value = true;
    title.value = "修改疫苗厂家";
  });
}

/** 提交按钮 */
function submitForm() {
  proxy.$refs["manufacturerForm"].validate(valid => {
    if (valid) {
      buttonLoading.value = true;
      if (form.value.manufacturerId != null) {
        updateManufacturer(form.value).then(response => {
          proxy.$modal.msgSuccess("修改成功");
          open.value = false;
          getList();
        }).finally(() => {
          buttonLoading.value = false;
        });
      } else {
        addManufacturer(form.value).then(response => {
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

/** 删除按钮操作 */
function handleDelete(row) {
  const manufacturerIds = row.manufacturerId || ids.value
  proxy.$modal.confirm('是否确认删除疫苗厂家编号为"' + manufacturerIds + '"的数据项？').then(function () {
    return delManufacturer(manufacturerIds);
  }).then(() => {
    getList();
    proxy.$modal.msgSuccess("删除成功");
  }).catch(() => {
  });
}

/** 导出按钮操作 */
function handleExport() {
  proxy.download('vaccine/manufacturer/export', {
    ...queryParams.value,
  }, `manufacturer_${new Date().getTime()}.xlsx`)
}

getList();
</script>
