<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="省" prop="province">
        <el-input
          v-model="queryParams.province"
          placeholder="请输入省"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="市" prop="city">
        <el-input
          v-model="queryParams.city"
          placeholder="请输入市"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="区" prop="area">
        <el-input
          v-model="queryParams.area"
          placeholder="请输入区"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
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
      <el-form-item label="年份" prop="year">
        <el-input
          v-model="queryParams.year"
          placeholder="请输入年份"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="绿化率" prop="green">
        <el-input
          v-model="queryParams.green"
          placeholder="请输入绿化率"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="介绍" prop="introduce">
        <el-input
          v-model="queryParams.introduce"
          placeholder="请输入介绍"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="靠近地铁" prop="wayState">
        <el-input
          v-model="queryParams.wayState"
          placeholder="请输入靠近地铁"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="地铁线路" prop="wayCode">
        <el-input
          v-model="queryParams.wayCode"
          placeholder="请输入地铁线路"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="地铁距离" prop="waySpace">
        <el-input
          v-model="queryParams.waySpace"
          placeholder="请输入地铁距离"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="经度" prop="lon">
        <el-input
          v-model="queryParams.lon"
          placeholder="请输入经度"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="纬度" prop="Lat">
        <el-input
          v-model="queryParams.Lat"
          placeholder="请输入纬度"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="状态" prop="state">
        <el-input
          v-model="queryParams.state"
          placeholder="请输入状态"
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
      <el-table-column label="id" align="center" prop="id" v-if="true"/>
      <el-table-column label="省" align="center" prop="province" />
      <el-table-column label="市" align="center" prop="city" />
      <el-table-column label="区" align="center" prop="area" />
      <el-table-column label="名称" align="center" prop="name" />
      <el-table-column label="代号" align="center" prop="code" />
      <el-table-column label="年份" align="center" prop="year" />
      <el-table-column label="建筑类型" align="center" prop="type" />
      <el-table-column label="绿化率" align="center" prop="green" />
      <el-table-column label="介绍" align="center" prop="introduce" />
      <el-table-column label="靠近地铁" align="center" prop="wayState" />
      <el-table-column label="地铁线路" align="center" prop="wayCode" />
      <el-table-column label="地铁距离" align="center" prop="waySpace" />
      <el-table-column label="经度" align="center" prop="lon" />
      <el-table-column label="纬度" align="center" prop="Lat" />
      <el-table-column label="状态" align="center" prop="state" />
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

    <!-- 添加或修改小区管理对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="vRef" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="省" prop="province">
          <el-input v-model="form.province" placeholder="请输入省" />
        </el-form-item>
        <el-form-item label="市" prop="city">
          <el-input v-model="form.city" placeholder="请输入市" />
        </el-form-item>
        <el-form-item label="区" prop="area">
          <el-input v-model="form.area" placeholder="请输入区" />
        </el-form-item>
        <el-form-item label="名称" prop="name">
          <el-input v-model="form.name" placeholder="请输入名称" />
        </el-form-item>
        <el-form-item label="代号" prop="code">
          <el-input v-model="form.code" placeholder="请输入代号" />
        </el-form-item>
        <el-form-item label="年份" prop="year">
          <el-input v-model="form.year" placeholder="请输入年份" />
        </el-form-item>
        <el-form-item label="绿化率" prop="green">
          <el-input v-model="form.green" placeholder="请输入绿化率" />
        </el-form-item>
        <el-form-item label="介绍" prop="introduce">
          <el-input v-model="form.introduce" placeholder="请输入介绍" />
        </el-form-item>
        <el-form-item label="靠近地铁" prop="wayState">
          <el-input v-model="form.wayState" placeholder="请输入靠近地铁" />
        </el-form-item>
        <el-form-item label="地铁线路" prop="wayCode">
          <el-input v-model="form.wayCode" placeholder="请输入地铁线路" />
        </el-form-item>
        <el-form-item label="地铁距离" prop="waySpace">
          <el-input v-model="form.waySpace" placeholder="请输入地铁距离" />
        </el-form-item>
        <el-form-item label="经度" prop="lon">
          <el-input v-model="form.lon" placeholder="请输入经度" />
        </el-form-item>
        <el-form-item label="纬度" prop="Lat">
          <el-input v-model="form.Lat" placeholder="请输入纬度" />
        </el-form-item>
        <el-form-item label="状态" prop="state">
          <el-input v-model="form.state" placeholder="请输入状态" />
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

<script setup name="Village">
import { listVillage, getVillage, delVillage, addVillage, updateVillage } from "@/api/core/village";
const { proxy } = getCurrentInstance();

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
    id: [
      { required: true, message: "id不能为空", trigger: "blur" }
    ],
    province: [
      { required: true, message: "省不能为空", trigger: "blur" }
    ],
    city: [
      { required: true, message: "市不能为空", trigger: "blur" }
    ],
    area: [
      { required: true, message: "区不能为空", trigger: "blur" }
    ],
    name: [
      { required: true, message: "名称不能为空", trigger: "blur" }
    ],
    code: [
      { required: true, message: "代号不能为空", trigger: "blur" }
    ],
    year: [
      { required: true, message: "年份不能为空", trigger: "blur" }
    ],
    type: [
      { required: true, message: "建筑类型不能为空", trigger: "change" }
    ],
    green: [
      { required: true, message: "绿化率不能为空", trigger: "blur" }
    ],
    introduce: [
      { required: true, message: "介绍不能为空", trigger: "blur" }
    ],
    wayState: [
      { required: true, message: "靠近地铁不能为空", trigger: "blur" }
    ],
    wayCode: [
      { required: true, message: "地铁线路不能为空", trigger: "blur" }
    ],
    waySpace: [
      { required: true, message: "地铁距离不能为空", trigger: "blur" }
    ],
    lon: [
      { required: true, message: "经度不能为空", trigger: "blur" }
    ],
    Lat: [
      { required: true, message: "纬度不能为空", trigger: "blur" }
    ],
    state: [
      { required: true, message: "状态不能为空", trigger: "blur" }
    ],
    remark: [
      { required: true, message: "不能为空", trigger: "blur" }
    ]
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

function handleAdd() {
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
    open.value = true;
    title.value = "修改小区信息";
  });
}

function submitForm() {
  proxy.$refs["vRef"].validate(valid => {
    if (valid) {
      buttonLoading.value = true;
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
