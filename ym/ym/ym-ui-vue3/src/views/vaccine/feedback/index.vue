<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="default" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="身份证号" prop="userid">
        <el-input
          v-model="queryParams.userid"
          placeholder="请输入"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>

      <el-form-item>
        <el-button type="primary" icon="Search" size="default" @click="handleQuery">搜索</el-button>
        <el-button icon="Refresh" size="default" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>
    <el-table v-loading="loading" :data="feedbackList">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="序号" align="center" prop="id" v-if="true" width="80"/>
      <el-table-column label="身份证号" align="center" prop="userid" width="180"/>
      <el-table-column label="提交时间" align="center" prop="submittime" width="180">
        <template  #default="scope">
          <span>{{ parseTime(scope.row.submittime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="反馈内容" align="center" prop="message" width="240"/>
      <el-table-column label="回复反馈时间" align="center" prop="backtime" width="180">
        <template  #default="scope">
          <span>{{ parseTime(scope.row.backtime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="回复反馈内容" align="center" prop="backmessage" width="240"/>
      <el-table-column  fixed="right" label="操作" align="center" class-name="default-padding fixed-width">
        <template #default="scope">
          <el-tooltip content="修改" placement="top" >
            <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)" ></el-button>
          </el-tooltip>
          <el-tooltip content="删除" placement="top" >
            <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)" ></el-button>
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

    <!-- 添加或修改用户反馈管理对话框 -->
    <el-dialog :title="title"  v-model="open" width="500px" append-to-body>
      <el-form ref="backForm" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="身份证号" prop="userid">
          <el-input v-model="form.userid" placeholder="请输入" />
        </el-form-item>
        <el-form-item label="反馈时间" prop="submittime">
          <el-date-picker clearable
            v-model="form.submittime"
                          type="datetime"
                          format="YYYY-MM-DD HH:mm:ss"
                          value-format="YYYY-MM-DD HH:mm:ss"
            placeholder="请选择">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="反馈内容" prop="message">
          <el-input v-model="form.message" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        <el-form-item label="回复时间" prop="backtime">
          <el-date-picker clearable
            v-model="form.backtime"
                          type="datetime"
                          format="YYYY-MM-DD HH:mm:ss"
                          value-format="YYYY-MM-DD HH:mm:ss"
            placeholder="请选择">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="回复内容" prop="backmessage">
          <el-input v-model="form.backmessage" type="textarea" placeholder="请输入内容" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button :loading="buttonLoading" type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script setup name="Feedback">
import { listFeedback, getFeedback, delFeedback, addFeedback, updateFeedback } from "@/api/vaccine/feedback";

const {proxy} = getCurrentInstance();

const feedbackList = ref([]);
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
    userid: undefined,
    submittime: undefined,
    message: undefined,
    backtime: undefined,
    backmessage: undefined
  },
  // 表单参数
  form: {},
  // 表单校验
  rules: {
    id: [
      { required: true, message: "不能为空", trigger: "blur" }
    ],
    userid: [
      { required: true, message: "不能为空", trigger: "blur" }
    ],
    submittime: [
      { required: true, message: "不能为空", trigger: "blur" }
    ],
    message: [
      { required: true, message: "不能为空", trigger: "blur" }
    ],
    backtime: [
      { required: true, message: "不能为空", trigger: "blur" }
    ],
    backmessage: [
      { required: true, message: "不能为空", trigger: "blur" }
    ]
  }
});
const {queryParams, form, rules} = toRefs(data);

function getList(){
  loading.value = true;
  listFeedback(queryParams.value).then(response => {
    feedbackList.value = response.rows;
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
  proxy.resetForm["backForm"];
}
function handleUpdate(row) {
  loading.value = true;
  reset();
  const id = row.id || ids.value;
  getFeedback(id).then(response => {
    loading.value = false;
    form.value = response.data;
    open.value = true;
    title.value = "添加反馈回复";
  }).finally(() => {
    loading.value = false;
  });
}
function handleQuery() {
  queryParams.value.pageNum = 1;
  getList();
}
function resetQuery() {
  proxy.resetForm("queryForm");
  handleQuery();
}
function handleDelete(row) {
  const id = row.id || ids.value;
  proxy.$modal.confirm('是否确认删除id为"' + id + '"的反馈数据？').then(() => {
    loading.value = true;
    return delFeedback(id);
  }).then(() => {
    loading.value = false;
    getList();
    proxy.$modal.msgSuccess("删除成功");
  }).catch(() => {
  }).finally(() => {
    loading.value = false;
  });
}

function submitForm(){
  proxy.$refs["backForm"].validate(valid => {
    if (valid) {
      buttonLoading.value = true;
      if (form.value.id != null) {
        updateFeedback(form.value).then(response => {
          proxy.$modal.msgSuccess("修改成功");
          open.value = false;
          getList();
        }).finally(() => {
          buttonLoading.value = false;
        });
      } else {
        addFeedback(form.value).then(response => {
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
function handleAdd() {
  reset();
  open.value = true;
  title.value = "添加反馈信息";
}
getList();

</script>
