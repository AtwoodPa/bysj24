<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" :inline="true" v-show="showSearch" label-width="68px">

      <el-form-item label="名称" prop="name">
        <el-input
          v-model="queryParams.name"
          placeholder="请输入名称"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="代号" prop="code">
        <el-input
          v-model="queryParams.code"
          placeholder="请输入代号"
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

    <el-table v-loading="loading" :data="villageList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="#" type="index" width="50" align="center">
        <template #default="scope">
          <span>{{
              (queryParams.pageNum - 1) * queryParams.pageSize + scope.$index + 1
            }}</span>
        </template>
      </el-table-column>
      <el-table-column label="名称" align="center" prop="name" width="180" />
      <el-table-column
        label="区域"
        align="center"
        prop="areaCode"
        width="200"
      />
      <el-table-column label="年份" align="center" prop="year" width="100" />
      <el-table-column
        label="建筑类型"
        align="center"
        prop="type"
        width="130"
      />
      <el-table-column label="绿化率" align="center" prop="green" width="80" />
      <el-table-column
        label="介绍"
        align="center"
        prop="introduce"
        :show-overflow-tooltip="true"
      />
      <el-table-column label="备注" align="center" prop="remark" width="120" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width" width="150">
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

    <!-- 添加或修改小区管理对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="vRef" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="名称" prop="name">
          <el-input v-model="form.name" placeholder="请输入名称" />
        </el-form-item>
        <el-form-item label="区域">
          <el-cascader
            style="width: 100%"
            :options="options"
            v-model="selectedOptions"
            @change="addressChoose"
            placeholder="请选择区域"
          ></el-cascader>
        </el-form-item>
        <el-form-item label="年份" prop="year">
          <el-input v-model="form.year" placeholder="请输入年份" />
        </el-form-item>
        <el-form-item label="建筑类型" prop="green">
          <el-input v-model="form.type" placeholder="请输入建筑类型" />
        </el-form-item>
        <el-form-item label="绿化率" prop="green">
          <el-input v-model="form.green" placeholder="请输入绿化率" />
        </el-form-item>
        <el-form-item label="介绍" prop="introduce">
          <el-input
            v-model="form.introduce"
            type="textarea"
            placeholder="请输入介绍"
            :autosize="{ minRows: 4, maxRows: 4 }"
            :style="{ width: '100%' }"
          ></el-input>
        </el-form-item>
        <el-form-item label="备注" prop="remark">
          <el-input v-model="form.remark" placeholder="请输入备注" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button :loading="buttonLoading" type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script setup name="Village">
import { listVillage, getVillage, delVillage, addVillage, updateVillage } from "@/api/core/village";
const { proxy } = getCurrentInstance();
import {
  provinceAndCityData,
  regionData,
  provinceAndCityDataPlus,
  regionDataPlus,
  CodeToText,
  TextToCode,
} from "element-china-area-data";
const villageList = ref([]);
const open = ref(false);
const buttonLoading = ref(false);
const loading = ref(true);
const showSearch = ref(true);
const ids = ref([]);
const single = ref(true);
const multiple = ref(true);
const total = ref(0);
const title = ref("");
const options =  regionDataPlus;
const data = reactive({
  // 查询参数
  queryParams: {
    pageNum: 1,
    pageSize: 10,
    province: undefined,
    city: undefined,
    area: undefined,
    name: undefined,
    code: undefined,
    year: undefined,
    type: undefined,
    green: undefined,
    introduce: undefined,
    wayState: undefined,
    wayCode: undefined,
    waySpace: undefined,
    lon: undefined,
    Lat: undefined,
    state: undefined,
  },
  // 表单参数
  form: {},
  // 表单校验
  rules: {
    province: [{ required: true, message: "省不能为空", trigger: "blur" }],
    city: [{ required: true, message: "市不能为空", trigger: "blur" }],
    area: [{ required: true, message: "区不能为空", trigger: "blur" }],
    name: [{ required: true, message: "名称不能为空", trigger: "blur" }],
  }
});

const { queryParams, form, rules } = toRefs(data);

function getList(){
  loading.value = true;
  listVillage(queryParams.value).then(response => {
    villageList.value = response.rows;
    total.value = response.total;
    loading.value = false;
  });
}

function addressChoose(value){
  console.log(
    "省市区：",
    CodeToText[value[0]],
    CodeToText[value[1]],
    CodeToText[value[2]]
  );

  form.value.province = CodeToText[value[0]];
  form.value.city = CodeToText[value[1]];
  form.value.area = CodeToText[value[2]];
}
function cancel() {
  open.value = false;
  reset();
}

function reset() {
  form.value = {
    id: undefined,
    province: undefined,
    city: undefined,
    area: undefined,
    name: undefined,
    code: undefined,
    year: undefined,
    type: undefined,
    green: undefined,
    introduce: undefined,
    wayState: undefined,
    wayCode: undefined,
    waySpace: undefined,
    lon: undefined,
    Lat: undefined,
    state: undefined,
    createTime: undefined,
    createBy: undefined,
    updateTime: undefined,
    updateBy: undefined,
    remark: undefined
  };
  proxy.resetForm("vRef");
}

function handleQuery() {
  queryParams.value.pageNum = 1;
  getList();
}

function resetQuery() {
  proxy.resetForm("queryForm");
  handleQuery();
}
const selectedOptions=  ref([])
function handleAdd() {
  selectedOptions.value = [];
  reset();
  open.value = true;
  title.value = "添加小区信息";
}


function handleUpdate(row) {
  loading.value = true;
  reset();
  const id = row.id || ids.value
  getVillage(id).then(response => {
    loading.value = false;
    form.value = response.data;

    let province = form.value.province;
    let city = form.value.city;
    let area = form.value.area;

    let arg1 = TextToCode[province].code;
    let arg2 = TextToCode[province][city].code;
    let arg3 = TextToCode[province][city][area].code;
    selectedOptions.value = [];
    selectedOptions.value.push(arg1, arg2, arg3);


    open.value = true;
    title.value = "修改小区信息";
  });
}

function submitForm() {
  proxy.$refs["vRef"].validate(valid => {
    if (valid) {
      buttonLoading.value = true;
      if (selectedOptions.value.length != 3){
        proxy.$modal.msgError("请选择省市区");
        buttonLoading.value = false;
        return;
      }
      if (form.value.id != null) {
        updateVillage(form.value).then(response => {
          proxy.$modal.msgSuccess("修改成功");
          open.value = false;
          getList();
        }).finally(() => {
          buttonLoading.value = false;
        });
      } else {
        addVillage(form.value).then(response => {
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
  const vids = row.id || ids.value;
  proxy.$modal.confirm('是否确认删除小区信息编号为"' + vids + '"的数据项？').then(() => {
    loading.value = true;
    return delVillage(vids);
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
  proxy.download('core/village/export', {
    ...queryParams.value
  }, `village_${new Date().getTime()}.xlsx`)
}
function handleSelectionChange(selection) {
  ids.value = selection.map(item => item.id)
  single.value = selection.length!==1
  multiple.value = !selection.length
}
getList();
</script>
