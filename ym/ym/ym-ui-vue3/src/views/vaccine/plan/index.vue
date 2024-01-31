<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="default" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="疫苗名称" prop="vaccineName">
        <el-input
          v-model="queryParams.vaccineName"
          placeholder="请输入疫苗名称"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="接种点" prop="inoculateSiteName">
        <el-input
          v-model="queryParams.inoculateSiteName"
          placeholder="请输入接种点名称"
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
          v-hasPermi="['vaccine:plan:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="Edit"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['vaccine:plan:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="Delete"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['vaccine:plan:remove']"
        >删除</el-button>
      </el-col>

      <right-toolbar v-model:showSearch="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="planList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="ID" align="center" prop="id" v-if="true"/>
      <el-table-column label="疫苗名称" align="center" prop="vaccineName" width="180"/>
      <el-table-column label="接种点名称" align="center" prop="inoculateSiteName" width="180"/>
      <el-table-column label="可预约总量" align="center" prop="amount" />
      <el-table-column label="起始日期" align="center" prop="startDate" width="150"/>
      <el-table-column label="结束日期" align="center" prop="endDate" width="150" />
      <el-table-column label="上午起始整点数" align="center" prop="startTimeMorning" />
      <el-table-column label="上午最大预约量" align="center" prop="morningLimit" />
      <el-table-column label="上午结束整点数" align="center" prop="endTimeMorning" />
      <el-table-column label="下午起始整点数" align="center" prop="startTimeAfternoon" />
      <el-table-column label="下午最大预约量" align="center" prop="afternoonLimit" />
      <el-table-column label="下午结束整点数" align="center" prop="endTimeAfternoon" />
      <el-table-column label="夜晚起始整点数" align="center" prop="startTimeEvening" />
      <el-table-column label="夜晚最大预约量" align="center" prop="eveningLimit" />
      <el-table-column label="夜晚结束整点数" align="center" prop="endTimeEvening" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template #default="scope">
          <el-tooltip content="修改" placement="top" >
            <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)" v-hasPermi="['vaccine:plan:edit']"></el-button>
          </el-tooltip>
          <el-tooltip content="删除" placement="top" >
            <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)" v-hasPermi="['vaccine:plan:remove']"></el-button>
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

    <!-- 添加或修改预约计划管理对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="planForm" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="起始日期" prop="startDate">
          <el-date-picker clearable
                          v-model="form.startDate"
                          type="datetime"

                          value-format="YYYY-MM-DD"
                          placeholder="请选择起始日期">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="结束日期" prop="endDate">
          <el-date-picker clearable
                          v-model="form.endDate"
                          type="datetime"
                          value-format="YYYY-MM-DD"

                          placeholder="请选择结束日期">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="上午起始整点数" prop="startTimeMorning">
          <el-input v-model="form.startTimeMorning" placeholder="请输入上午起始整点数" />
        </el-form-item>
        <el-form-item label="上午结束整点数" prop="endTimeMorning">
          <el-input v-model="form.endTimeMorning" placeholder="请输入上午结束整点数" />
        </el-form-item>
        <el-form-item label="下午起始整点数" prop="startTimeAfternoon">
          <el-input v-model="form.startTimeAfternoon" placeholder="请输入下午起始整点数" />
        </el-form-item>
        <el-form-item label="下午结束整点数" prop="endTimeAfternoon">
          <el-input v-model="form.endTimeAfternoon" placeholder="请输入下午结束整点数" />
        </el-form-item>
        <el-form-item label="疫苗名称" prop="vaccineId">
          <el-select
            v-model="form.vaccineId"
            class="m-2"
            placeholder="请输入疫苗名称"
            style="width: 400px"
          >
            <el-option
              v-for="item in vaccineOptions"
              :key="item.key"
              :label="item.value"
              :value="item.key"
            />
          </el-select>
        </el-form-item>

        <el-form-item label="接种点" prop="inoculateSiteId">
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
        <el-form-item label="预约总量" prop="amount">
          <el-input v-model="form.amount" placeholder="请输入可预约总量" />
        </el-form-item>
        <el-form-item label="夜晚起始整点数" prop="startTimeEvening">
          <el-input v-model="form.startTimeEvening" placeholder="请输入夜晚起始整点数" />
        </el-form-item>
        <el-form-item label="夜晚结束整点数" prop="endTimeEvening">
          <el-input v-model="form.endTimeEvening" placeholder="请输入夜晚结束整点数" />
        </el-form-item>
        <el-form-item label="上午最大预约量" prop="morningLimit">
          <el-input v-model="form.morningLimit" placeholder="请输入上午最大预约量" />
        </el-form-item>
        <el-form-item label="下午最大预约量" prop="afternoonLimit">
          <el-input v-model="form.afternoonLimit" placeholder="请输入下午最大预约量" />
        </el-form-item>
        <el-form-item label="夜晚最大预约量" prop="eveningLimit">
          <el-input v-model="form.eveningLimit" placeholder="请输入夜晚最大预约量" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button :loading="buttonLoading" type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script setup name="Plan">
import { listPlan, getPlan, delPlan, addPlan, updatePlan, getVaccineSelectOption, getInoculateSiteSelectOption } from "@/api/vaccine/plan";

const {proxy} = getCurrentInstance();

const planList = ref([]);
const open = ref(false);
const buttonLoading = ref(false);
const loading = ref(true);
const showSearch = ref(true);
const ids = ref([]);
const single = ref(true);
const multiple = ref(true);
const total = ref(0);
const title = ref("");
const vaccineOptions = ref([]);
const siteOptions = ref([]);

const data =reactive({
  form: {},
  queryParams: {
    pageNum: 1,
    pageSize: 10,
    startDate: undefined,
    endDate: undefined,
    startTimeMorning: undefined,
    endTimeMorning: undefined,
    startTimeAfternoon: undefined,
    endTimeAfternoon: undefined,
    vaccineId: undefined,
    vaccineName: undefined,
    inoculateSiteId: undefined,
    inoculateSiteName: undefined,
    amount: undefined,
    startTimeEvening: undefined,
    endTimeEvening: undefined,
    morningLimit: undefined,
    afternoonLimit: undefined,
    eveningLimit: undefined
  },
  rules: {
    id: [
      { required: true, message: "不能为空", trigger: "blur" }
    ],
    startDate: [
      { required: true, message: "不能为空", trigger: "blur" }
    ],
    endDate: [
      { required: true, message: "不能为空", trigger: "blur" }
    ],
    startTimeMorning: [
      { required: true, message: "不能为空", trigger: "blur" }
    ],
    endTimeMorning: [
      { required: true, message: "不能为空", trigger: "blur" }
    ],
    startTimeAfternoon: [
      { required: true, message: "不能为空", trigger: "blur" }
    ],
    endTimeAfternoon: [
      { required: true, message: "不能为空", trigger: "blur" }
    ],
    vaccineId: [
      { required: true, message: "不能为空", trigger: "blur" }
    ],
    inoculateSiteId: [
      { required: true, message: "不能为空", trigger: "blur" }
    ],
    amount: [
      { required: true, message: "不能为空", trigger: "blur" }
    ],
    startTimeEvening: [
      { required: true, message: "不能为空", trigger: "blur" }
    ],
    endTimeEvening: [
      { required: true, message: "不能为空", trigger: "blur" }
    ],
    morningLimit: [
      { required: true, message: "不能为空", trigger: "blur" }
    ],
    afternoonLimit: [
      { required: true, message: "不能为空", trigger: "blur" }
    ],
    eveningLimit: [
      { required: true, message: "不能为空", trigger: "blur" }
    ]
  }
});
const {queryParams, form, rules} = toRefs(data);
function getList() {
  loading.value = true;
  listPlan(queryParams.value).then(response => {
    planList.value = response.rows;
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
    startDate: undefined,
    endDate: undefined,
    startTimeMorning: undefined,
    endTimeMorning: undefined,
    startTimeAfternoon: undefined,
    endTimeAfternoon: undefined,
    vaccineId: undefined,
    inoculateSiteId: undefined,
    amount: undefined,
    startTimeEvening: undefined,
    endTimeEvening: undefined,
    morningLimit: undefined,
    afternoonLimit: undefined,
    eveningLimit: undefined
  };
  proxy.resetForm["planForm"];
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
  single.value = selection.length!==1
  multiple.value = !selection.length
}
function handleAdd() {
  reset();
  open.value = true;
  title.value = "添加预约计划管理";
}

function handleUpdate(row) {
  loading.value = true;
  reset();
  const id = row.id || ids.value
  getPlan(id).then(response => {
    loading.value = false;
    form.value = response.data;
    open.value = true;
    title.value = "修改预约计划管理";
  });
}

function submitForm() {
  proxy.$refs["planForm"].validate(valid => {
    if (valid) {
      buttonLoading.value = true;
      if (form.value.id != null) {
        updatePlan(form.value).then(response => {
          proxy.$modal.msgSuccess("修改成功");
          open.value = false;
          getList();
        }).finally(() => {
          buttonLoading.value = false;
        });
      } else {
        addPlan(form.value).then(response => {
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
  const ids = row.id || ids.value
  proxy.$modal.confirm('是否确认删除预约计划编号为"' + ids + '"的数据项？').then(() => {
    loading.value = true;
    return delPlan(ids);
  }).then(() => {
    loading.value = false;
    getList();
    proxy.$modal.msgSuccess("删除成功");
  }).catch(() => {
  }).finally(() => {
    loading.value = false;
  });
}
function getVaccineOptionsLists(){
  getVaccineSelectOption().then(resp => {
    vaccineOptions.value = resp.data
  })
}
function getInoculateSite(){
  getInoculateSiteSelectOption().then(resp => {
    siteOptions.value = resp.data
  })
}
getList();
getInoculateSite();
getVaccineOptionsLists();
</script>
