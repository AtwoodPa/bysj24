<template>
  <div class="app-container">
    <el-table v-loading="loading" :data="appointList" >

      <el-table-column label="ID" align="center" prop="id" v-if="true"/>
      <el-table-column label="预约用户信息" align="center" prop="userName" />
      <el-table-column label="预约日期" align="center" prop="appointDate" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.appointDate, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="时间段" align="center" prop="timeSlot" />
      <el-table-column label="预约状态" align="center" prop="statusName" />
      <el-table-column label="接种站点信息" align="center" prop="inoculateSiteName" />
      <el-table-column label="疫苗信息" align="center" prop="vaccineName" />
      <el-table-column label="第几针" align="center" prop="whichPin" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template #default="scope">
          <el-tooltip content="修改" placement="top" >
            <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)" v-hasPermi="['vaccine:appoint:edit']"></el-button>
          </el-tooltip>
          <el-tooltip content="支付" placement="top" >
            <el-button link type="primary" icon="Iphone" @click="handlePay(scope.row)" ></el-button>
          </el-tooltip>
          <el-tooltip content="取消预约" placement="top" >
            <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)" v-hasPermi="['vaccine:appoint:remove']"></el-button>
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

    <!-- 添加或修改疫苗预约对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="appointForm" :model="form" :rules="rules" label-width="80px">

        <el-form-item label="预约日期" prop="appointDate">
          <el-date-picker
            v-model="form.appointDate"
            type="date"
            format="YYYY-MM-DD"
            value-format="YYYY-MM-DD HH:mm:ss"
            placeholder="选择日期"
            style="width: 100%"
          ></el-date-picker>
        </el-form-item>
        <el-form-item label="时间段" prop="timeSlot">
          <el-select v-model="form.timeSlot" placeholder="请选择时间段">
            <el-option
              v-for="item in options"
              :key="item.value"
              :label="item.label"
              :value="item.value"
            ></el-option>
          </el-select>
        </el-form-item>

        <el-form-item label="站点ID" prop="inoculateSiteId">
          <el-select
            v-model="form.inoculateSiteId"
            placeholder="请选择接种站点信息"
            size="default"
            style="width: 340px"
          >
            <el-option
              v-for="item in address"
              :key="item.key"
              :label="item.value"
              :value="item.key"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="疫苗ID" prop="vaccineId">
          <el-select
            v-model="form.vaccineId"
            placeholder="请选择疫苗"
            size="default"
            style="width: 340px"
          >
            <el-option
              v-for="item in vaccines"
              :key="item.key"
              :label="item.value"
              :value="item.key"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="接种针剂" prop="whichPin">
          <el-select
            v-model="form.whichPin"
            placeholder="请选择"
            size="default"
            style="width: 240px"
          >
            <el-option
              v-for="item in options2"
              :key="item.value"
              :label="item.label"
              :value="item.value"
            ></el-option>
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

<script setup name="Appoint">
import {addOrder,getAppointAddress, getVaccines, listAppoint, getAppoint, delAppoint, addAppoint, updateAppoint } from "@/api/vaccine/appoint";
const {proxy} = getCurrentInstance();

const appointList = ref([]);
const open = ref(false);
const buttonLoading = ref(false);
const loading = ref(true);
const showSearch = ref(true);
const ids = ref([]);
const single = ref(true);
const multiple = ref(true);
const total = ref(0);
const title = ref("");
const address = ref([]);
const vaccines = ref([]);
const options = ref([
  {
    value: '上午',
    lable: '上午',
  },
  {
    value: '下午',
    lable: '下午',
  }]);
const options2 = ref([
  {
    value: '第一针',
    lable: '第一针',
  },
  {
    value: '第二针',
    lable: '第二针',
  }]);
const data = reactive({
  queryParams: {
    pageNum: 1,
    pageSize: 10,
    userId: undefined,
    appointDate: undefined,
    timeSlot: undefined,
    status: undefined,
    inoculateSiteId: undefined,
    vaccineId: undefined,
    whichPin: undefined,
  },
  form: {
  },
  rules: {
    id: [
      { required: true, message: "不能为空", trigger: "blur" }
    ],
    appointDate: [
      { required: true, message: "预约日期不能为空", trigger: "blur" }
    ],
    timeSlot: [
      { required: true, message: "上午 or 下午不能为空", trigger: "blur" }
    ],

    inoculateSiteId: [
      { required: true, message: "接种站点信息不能为空", trigger: "blur" }
    ],
    vaccineId: [
      { required: true, message: "疫苗信息不能为空", trigger: "blur" }
    ],
    whichPin: [
      { required: true, message: "第几针不能为空", trigger: "blur" }
    ],
  }
});

const {queryParams, form, rules} = toRefs(data);

function getList(){
  loading.value = true;
  listAppoint(queryParams.value).then(response => {
    appointList.value = response.rows;
    total.value = response.total;
    loading.value = false;
  });
}

function cancel(){
  open.value = false;
  reset();
}
function reset(){
  form.value = {
    id: undefined,
    userId: undefined,
    appointDate: undefined,
    timeSlot: undefined,
    status: undefined,
    inoculateSiteId: undefined,
    vaccineId: undefined,
    whichPin: undefined,
    createTime: undefined
  };
  proxy.resetForm["appointForm"];

}
function handleUpdate(row) {
  loading.value = true;
  reset();
  const id = row.id || ids.value;
  getAppoint(id).then(response => {
    loading.value = false;
    form.value = response.data;
    open.value = true;
    title.value = "修改疫苗接种站点管理";
  }).finally(() => {
    loading.value = false;
  });
}
function handlePay(row) {
  const id = row.id ;
  const name = row.vaccineName;
  proxy.$modal.confirm('是否确认支付"' + name + '"？').then(() => {
    loading.value = true;
    return addOrder(id);
  }).then(() => {
    loading.value = false;
    getList();
    proxy.$modal.msgSuccess("支付成功");
  }).catch(() => {
  }).finally(() => {
    loading.value = false;
  });
}
function handleDelete(row) {
  const id = row.id ;
  const name = row.vaccineName;
  proxy.$modal.confirm('是否确认取消预约"' + name + '"？').then(() => {
    loading.value = true;
    return delAppoint(id);
  }).then(() => {
    loading.value = false;
    getList();
    proxy.$modal.msgSuccess("取消预约成功");
  }).catch(() => {
  }).finally(() => {
    loading.value = false;
  });
}
function submitForm(){
  proxy.$refs["appointForm"].validate(valid => {
    if (valid) {
      buttonLoading.value = true;
      if (form.value.id != null) {
        updateAppoint(form.value).then(response => {
          proxy.$modal.msgSuccess("修改成功");
          open.value = false;
          getList();
        }).finally(() => {
          buttonLoading.value = false;
        });
      } else {
        addAppoint(form.value).then(response => {
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
function getInoculateSite(){
  getAppointAddress().then(resp => {
    address.value = resp
  })
}

function getVaccine(){
  getVaccines().then(response => {
    vaccines.value = response
  })
}
// 获取接种站点数据
getInoculateSite();
// 获取疫苗信息数据
getVaccine();
getList();

</script>
