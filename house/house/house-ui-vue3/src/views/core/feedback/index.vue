<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm"  :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="标题" prop="feedTitle">
        <el-input
          v-model="queryParams.feedTitle"
          placeholder="请输入标题"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search"  @click="handleQuery">搜索</el-button>
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
          icon="edit"
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

    <el-table v-loading="loading" :data="feedbackList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="id" align="center" prop="id" v-if="true"/>
      <el-table-column label="类别" align="center" prop="feedType" />
      <el-table-column label="标题" align="center" prop="feedTitle" />
      <el-table-column label="详情" align="center" prop="feedContent" />
      <el-table-column label="备注" align="center" prop="remark" />
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

    <!-- 添加或修改用户反馈管理对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="feedbackRef" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="标题" prop="feedTitle">
          <el-input v-model="form.feedTitle" placeholder="请输入标题" />
        </el-form-item>
        <el-form-item label="详情">
          <editor v-model="form.feedContent" :min-height="192"/>
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

<script setup name="Feedback">
import { listFeedback, getFeedback, delFeedback, addFeedback, updateFeedback } from "@/api/core/feedback";
const { proxy } = getCurrentInstance();

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
  // 查询参数
  queryParams: {
    pageNum: 1,
    pageSize: 10,
    feedType: undefined,
    feedTitle: undefined,
    feedContent: undefined,
  },
  // 表单参数
  form: {},
  // 表单校验
  rules: {
    id: [
      { required: true, message: "id不能为空", trigger: "blur" }
    ],
    feedType: [
      { required: true, message: "类别不能为空", trigger: "change" }
    ],
    feedTitle: [
      { required: true, message: "标题不能为空", trigger: "blur" }
    ],
    feedContent: [
      { required: true, message: "详情不能为空", trigger: "blur" }
    ],
    remark: [
      { required: true, message: "备注不能为空", trigger: "blur" }
    ]
  }
});

const { queryParams, form, rules } = toRefs(data);

function getList(){
  loading.value = true;
  listFeedback(queryParams.value).then(response => {
    feedbackList.value = response.rows;
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
    feedType: undefined,
    feedTitle: undefined,
    feedContent: undefined,
    createBy: undefined,
    createTime: undefined,
    updateBy: undefined,
    updateTime: undefined,
    remark: undefined
  };
  proxy.resetForm("feedbackRef");
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
  title.value = "添加用户反馈";
}

function handleUpdate(row) {
  loading.value = true;
  reset();
  const id = row.id || ids.value;
  getFeedback(id).then(response => {
    loading.value = false;
    form.value = response.data;
    open.value = true;
    title.value = "修改用户反馈";
  });
}

function submitForm() {
  proxy.$refs["feedbackRef"].validate(valid => {
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

function handleDelete(row) {
  const fids = row.id || ids.value;
  proxy.$modal.confirm('是否确认删除用户反馈编号为"' + fids + '"的数据项？').then(() => {
    loading.value = true;
    return delFeedback(fids);
  }).then(() => {
    loading.value = false;
    getList();
    proxy.$modal.msgSuccess("删除成功");
  }).catch(() => {
  }).finally(() => {
    loading.value = false;
  });
}
function handleSelectionChange(val) {
  ids.value = val.map(item => item.id);
  single.value = val.length !== 1;
  multiple.value = !val.length;
}
function handleExport() {
  proxy.download('core/feedback/export', {
    ...queryParams.value
  }, `feedback_${new Date().getTime()}.xlsx`)
}
getList();
</script>
