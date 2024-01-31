<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="default" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="疫苗名称" prop="name">
        <el-input
          v-model="queryParams.name"
          placeholder="请输入疫苗名称"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="疫苗价格" prop="price">
        <el-input
          v-model="queryParams.price"
          placeholder="请输入疫苗价格"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="疫苗厂家" prop="manufacturer">
        <el-input
          v-model="queryParams.manufacturer"
          placeholder="请输入疫苗厂家"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="疫苗分类" prop="category">
        <el-input
          v-model="queryParams.category"
          placeholder="请输入疫苗分类"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="疫苗详情" prop="detail">
        <el-input
          v-model="queryParams.detail"
          placeholder="请输入疫苗详情"
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
          v-hasPermi="['vaccine:vaccine:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="Edit"

          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['vaccine:vaccine:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="Delete"

          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['vaccine:vaccine:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="Download"

          @click="handleExport"
          v-hasPermi="['vaccine:vaccine:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar v-model:showSearch="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="vaccineList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="疫苗编号" align="center" prop="id" v-if="columns[0].visible"/>
      <el-table-column label="疫苗名称" align="center" prop="name" v-if="columns[1].visible"/>
      <el-table-column label="疫苗价格" align="center" prop="price" v-if="columns[2].visible" />
      <el-table-column label="疫苗厂家" align="center" prop="manufacturer"  v-if="columns[3].visible"/>
      <el-table-column label="疫苗分类" align="center" prop="category" v-if="columns[4].visible" />
      <el-table-column label="疫苗详情" align="center" prop="detail" v-if="columns[5].visible" />
      <el-table-column label="疫苗图片" align="center" prop="imgUrl" v-if="columns[6].visible" >
        <template #default="{ row }">
          <img :src="getServerUrl()+'vaccineImage'+row.imgUrl" style='height:200px; width: 200px;'/>
        </template>
      </el-table-column>
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width" v-if="columns[7].visible">
        <template #default="scope">
          <el-tooltip content="修改" placement="top" >
            <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)" v-hasPermi="['vaccine:vaccine:edit']"></el-button>
          </el-tooltip>
          <el-tooltip content="删除" placement="top" >
            <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)" v-hasPermi="['vaccine:vaccine:remove']"></el-button>
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

    <!-- 添加或修改疫苗信息对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="vaccineForm" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="疫苗名称" prop="name">
          <el-input v-model="form.name" placeholder="请输入疫苗名称" />
        </el-form-item>
        <el-form-item label="疫苗价格" prop="price">
          <el-input v-model="form.price" placeholder="请输入疫苗价格" />
        </el-form-item>
        <el-form-item label="疫苗厂家" prop="manufacturer">
          <el-input v-model="form.manufacturer" placeholder="请输入疫苗厂家" />
        </el-form-item>
        <el-form-item label="疫苗分类" prop="category">
          <el-input v-model="form.category" placeholder="请输入疫苗分类" />
        </el-form-item>
        <el-form-item label="疫苗详情" prop="detail">
          <el-input v-model="form.detail" placeholder="请输入疫苗详情" />
        </el-form-item>
        <el-form-item label="疫苗图片" prop="imgUrl">
          <el-input v-model="form.imgUrl" placeholder="请输入疫苗图片地址" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button :loading="buttonLoading" type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script setup name="Vaccine">
import { listVaccine, getVaccine, delVaccine, addVaccine, updateVaccine } from "@/api/vaccine/vaccine";
import {getServerUrl} from "@/utils/request";
const {proxy} = getCurrentInstance();

const vaccineList = ref([]);
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
  { key: 0, label: `疫苗编号`, visible: true },
  { key: 1, label: `疫苗名称`, visible: true },
  { key: 2, label: `疫苗价格`, visible: true },
  { key: 3, label: `疫苗厂家`, visible: true },
  { key: 4, label: `疫苗分类`, visible: true },
  { key: 5, label: `疫苗详情`, visible: true },
  { key: 6, label: `疫苗图片地址`, visible: true },
  { key: 7, label: `操作`, visible: true }
]);

const data = reactive({
  form: {},
  queryParams: {
    pageNum: 1,
    pageSize: 10,
    name: undefined,
    price: undefined,
    manufacturer: undefined,
    category: undefined,
    detail: undefined,
    imgUrl: undefined
  },
  rules: {
    id: [
      { required: true, message: "疫苗id不能为空", trigger: "blur" }
    ],
    name: [
      { required: true, message: "疫苗名称不能为空", trigger: "blur" }
    ],
    price: [
      { required: true, message: "疫苗价格不能为空", trigger: "blur" }
    ],
    manufacturer: [
      { required: true, message: "疫苗厂家不能为空", trigger: "blur" }
    ],
    category: [
      { required: true, message: "疫苗分类不能为空", trigger: "blur" }
    ],
    detail: [
      { required: true, message: "疫苗详情不能为空", trigger: "blur" }
    ],
    imgUrl: [
      { required: true, message: "疫苗图片地址不能为空", trigger: "blur" }
    ]
  }
});
const {queryParams, form, rules} = toRefs(data);
function getList() {
  loading.value = true;
  listVaccine(data.queryParams).then(response => {
    vaccineList.value = response.rows;
    total.value = response.total;
    loading.value = false;
  });
}

/** 取消按钮 */
function cancel() {
  open.value = false;
  reset();
};

function reset() {
  form.value = {
    id: undefined,
    name: undefined,
    price: undefined,
    manufacturer: undefined,
    category: undefined,
    detail: undefined,
    imgUrl: undefined
  };
  proxy.resetForm["vaccineForm"];
};

function handleQuery() {
  queryParams.value.pageNum = 1;
  getList();
};

function resetQuery() {
  proxy.resetForm("queryForm");
  handleQuery();
};

/** 多选框选中数据 **/
function handleSelectionChange(selection) {
  ids.value = selection.map(item => item.id);
  single.value = selection.length !== 1;
  multiple.value = !selection.length;
}

/** 新增按钮操作 */
function handleAdd() {
  reset();
  open.value = true;
  title.value = "添加疫苗信息";
}

/**修改按钮操作 */
function handleUpdate(row) {
  loading.value = true;
  reset();
  const id = row.id || ids.value
  getVaccine(id).then(response => {
    loading.value = false;
    form.value = response.data;
    form.value.id = response.data.id;
    form.value.name = response.data.name;
    form.value.manufacturer = response.data.manufacturer;
    form.value.category = response.data.category;
    form.value.detail = response.data.detail;
    form.value.imgUrl = response.data.imgUrl;
    open.value = true;
    title.value = "修改疫苗信息";
  });
}

/** 提交按钮 */
function submitForm() {
  proxy.$refs["vaccineForm"].validate(valid => {
    if (valid) {
      buttonLoading.value = true;
      if (form.value.id != null) {
        updateVaccine(form.value).then(response => {
          proxy.$modal.msgSuccess("修改成功");
          open.value = false;
          getList();
        }).finally(() => {
          buttonLoading.value = false;
        });
      } else {
        addVaccine(form.value).then(response => {
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
  const id = row.id || ids.value
  proxy.$modal.confirm('是否确认删除疫苗信息编号为"' + id + '"的数据项？').then(function () {
    return delVaccine(id);
  }).then(() => {
    getList();
    proxy.$modal.msgSuccess("删除成功");
  }).catch(() => {
  });
}

/** 导出按钮操作 */
function handleExport() {
  proxy.download('vaccine/vaccine/export', {
    ...queryParams.value,
  }, `vaccine_${new Date().getTime()}.xlsx`)
}


getList();
</script>
