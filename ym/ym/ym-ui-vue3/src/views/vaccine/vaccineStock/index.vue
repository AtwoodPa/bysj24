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

      <el-form-item label="疫苗厂家" prop="manufacturer">
        <el-input
          v-model="queryParams.manufacturer"
          placeholder="请输入疫苗厂家"
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
    </el-row>
    <el-table stripe v-loading="loading" :data="vaccineList" @selection-change="handleSelectionChange">
      <el-table-column label="疫苗编号" align="center" prop="id" width="80" v-if="columns[0].visible"/>
      <el-table-column label="疫苗名称" align="center" prop="name" width="320" v-if="columns[1].visible"/>
      <el-table-column label="疫苗价格" align="center" prop="price" width="120" v-if="columns[2].visible">
        <template #default="{ row }">
          <span>{{ row.price }}元</span>
        </template>
      </el-table-column>
      <el-table-column label="疫苗库存" align="center" width="120" prop="amount" v-if="true">
        <template #default="{ row }">
          <span>{{ row.amount }} 个</span>
        </template>
      </el-table-column>
      <el-table-column label="疫苗厂家" align="center" width="120" prop="manufacturer" v-if="columns[3].visible"/>
      <el-table-column label="疫苗分类" align="center" prop="category" width="120" v-if="columns[4].visible"/>
      <el-table-column label="疫苗详情" align="center" width="280" :show-overflow-tooltip="true" prop="detail"
                       v-if="columns[5].visible"/>
      <el-table-column label="疫苗图片" width="120" align="center" prop="imgUrl" v-if="columns[6].visible">
        <template #default="{ row }">
          <img :src="getServerUrl()+'vaccineImage'+row.imgUrl" style='width: 78px;height: 78px;display: block;'/>
        </template>
      </el-table-column>
      <el-table-column label="操作" fixed="right" align="center" class-name="small-padding " v-if="columns[7].visible">
        <template #default="scope">
          <el-tooltip content="添加库存" placement="top">
            <el-button link type="primary" @click="handleUpdate(scope.row)" v-hasPermi="['vaccine:vaccine:edit']">
              <el-icon>
                <HomeFilled/>
              </el-icon>
              <span>添加库存</span>
            </el-button>
          </el-tooltip>

        </template>
      </el-table-column>
    </el-table>

    <pagination
      v-show="total>0"
      :total="total"
      v-model:page="queryParams.pageNum"
      v-model:limit="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改疫苗信息对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="vaccineForm" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="疫苗名称" prop="name">
          <el-input v-model="form.name" :disabled="true" placeholder="请输入疫苗名称"/>
        </el-form-item>
        <el-form-item label="疫苗库存" prop="amount">
          <!--          <el-input v-model="form.amount" placeholder="请输入疫苗库存" />-->
          <el-input-number v-model="form.amount" :min="1"/>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button :loading="buttonLoading" type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<style scoped>
.avatar-uploader .avatar {
  width: 178px;
  height: 178px;
  display: block;
}
</style>
<script setup name="VaccineStock">
import {addVaccine, delVaccine, getVaccine, listVaccine, updateVaccine} from "@/api/vaccine/vaccine";
import {getServerUrl} from "@/utils/request";
import {Plus} from '@element-plus/icons-vue'

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
  {key: 0, label: `疫苗编号`, visible: true},
  {key: 1, label: `疫苗名称`, visible: true},
  {key: 2, label: `疫苗价格`, visible: true},
  {key: 3, label: `疫苗厂家`, visible: true},
  {key: 4, label: `疫苗分类`, visible: true},
  {key: 5, label: `疫苗详情`, visible: true},
  {key: 6, label: `疫苗图片地址`, visible: true},
  {key: 7, label: `操作`, visible: true}
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
      {required: true, message: "疫苗id不能为空", trigger: "blur"}
    ],
    name: [
      {required: true, message: "疫苗名称不能为空", trigger: "blur"}
    ],
    price: [
      {required: true, message: "疫苗价格不能为空", trigger: "blur"}
    ],
    manufacturer: [
      {required: true, message: "疫苗厂家不能为空", trigger: "blur"}
    ],
    category: [
      {required: true, message: "疫苗分类不能为空", trigger: "blur"}
    ],
    detail: [
      {required: true, message: "疫苗详情不能为空", trigger: "blur"}
    ],
    imgUrl: [
      {required: true, message: "疫苗图片地址不能为空", trigger: "blur"}
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

const handleAvatarSuccess = (response, uploadFile) => {
  data.form.imgUrl = "/" + response.data;
};

const beforeAvatarUpload = (rawFile) => {

  return true;
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
  title.value = "疫苗入库操作";
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
    title.value = "疫苗入库操作";
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
