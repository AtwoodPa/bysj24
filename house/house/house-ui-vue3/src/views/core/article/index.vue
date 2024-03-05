<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="简短标题" prop="smallTitle">
        <el-input
          v-model="queryParams.smallTitle"
          placeholder="请输入简短标题"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="完整标题" prop="bigTitle">
        <el-input
          v-model="queryParams.bigTitle"
          placeholder="请输入完整标题"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="封面图" prop="faceUrl">
        <el-input
          v-model="queryParams.faceUrl"
          placeholder="请输入封面图"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="缩略图" prop="faceThum">
        <el-input
          v-model="queryParams.faceThum"
          placeholder="请输入缩略图"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="来源" prop="articleSource">
        <el-input
          v-model="queryParams.articleSource"
          placeholder="请输入来源"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="排序号" prop="sortNo">
        <el-input
          v-model="queryParams.sortNo"
          placeholder="请输入排序号"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="" prop="starNum">
        <el-input
          v-model="queryParams.starNum"
          placeholder="请输入"
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

    <el-table v-loading="loading" :data="articleList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="id" align="center" prop="id" v-if="true"/>
      <el-table-column label="类型" align="center" prop="articleType" />
      <el-table-column label="简短标题" align="center" prop="smallTitle" />
      <el-table-column label="完整标题" align="center" prop="bigTitle" />
      <el-table-column label="封面图" align="center" prop="faceUrl" />
      <el-table-column label="缩略图" align="center" prop="faceThum" />
      <el-table-column label="内容" align="center" prop="articleContent" />
      <el-table-column label="来源" align="center" prop="articleSource" />
      <el-table-column label="排序号" align="center" prop="sortNo" />
      <el-table-column label="" align="center" prop="starNum" />
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

    <!-- 添加或修改文章内容管理对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="articleRef" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="简短标题" prop="smallTitle">
          <el-input v-model="form.smallTitle" placeholder="请输入简短标题" />
        </el-form-item>
        <el-form-item label="完整标题" prop="bigTitle">
          <el-input v-model="form.bigTitle" placeholder="请输入完整标题" />
        </el-form-item>
        <el-form-item label="封面图" prop="faceUrl">
          <el-input v-model="form.faceUrl" placeholder="请输入封面图" />
        </el-form-item>
        <el-form-item label="缩略图" prop="faceThum">
          <el-input v-model="form.faceThum" placeholder="请输入缩略图" />
        </el-form-item>
        <el-form-item label="内容">
          <editor v-model="form.articleContent" :min-height="192"/>
        </el-form-item>
        <el-form-item label="来源" prop="articleSource">
          <el-input v-model="form.articleSource" placeholder="请输入来源" />
        </el-form-item>
        <el-form-item label="排序号" prop="sortNo">
          <el-input v-model="form.sortNo" placeholder="请输入排序号" />
        </el-form-item>
        <el-form-item label="" prop="starNum">
          <el-input v-model="form.starNum" placeholder="请输入" />
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

<script setup name="Article">
import { listArticle, getArticle, delArticle, addArticle, updateArticle } from "@/api/core/article";
const { proxy } = getCurrentInstance();

const articleList = ref([]);
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
    articleType: undefined,
    smallTitle: undefined,
    bigTitle: undefined,
    faceUrl: undefined,
    faceThum: undefined,
    articleContent: undefined,
    articleSource: undefined,
    sortNo: undefined,
    starNum: undefined,
  },
  // 表单参数
  form: {},
  // 表单校验
  rules: {
    id: [
      { required: true, message: "id不能为空", trigger: "blur" }
    ],
    articleType: [
      { required: true, message: "类型不能为空", trigger: "change" }
    ],
    smallTitle: [
      { required: true, message: "简短标题不能为空", trigger: "blur" }
    ],
    bigTitle: [
      { required: true, message: "完整标题不能为空", trigger: "blur" }
    ],
    faceUrl: [
      { required: true, message: "封面图不能为空", trigger: "blur" }
    ],
    faceThum: [
      { required: true, message: "缩略图不能为空", trigger: "blur" }
    ],
    articleContent: [
      { required: true, message: "内容不能为空", trigger: "blur" }
    ],
    articleSource: [
      { required: true, message: "来源不能为空", trigger: "blur" }
    ],
    sortNo: [
      { required: true, message: "排序号不能为空", trigger: "blur" }
    ],
    starNum: [
      { required: true, message: "不能为空", trigger: "blur" }
    ],
    remark: [
      { required: true, message: "备注不能为空", trigger: "blur" }
    ]
  }
});

const { queryParams, form, rules } = toRefs(data);

function getList(){
  loading.value = true;
  listArticle(queryParams.value).then(response => {
    articleList.value = response.rows;
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
    articleType: undefined,
    smallTitle: undefined,
    bigTitle: undefined,
    faceUrl: undefined,
    faceThum: undefined,
    articleContent: undefined,
    articleSource: undefined,
    sortNo: undefined,
    starNum: undefined,
    createTime: undefined,
    createBy: undefined,
    updateTime: undefined,
    updateBy: undefined,
    remark: undefined
  };
  proxy.resetForm("articleRef");

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
  title.value = "添加文章内容";
}

function handleUpdate(row) {
  loading.value = true;
  reset();
  const id = row.id || ids.value;
  getArticle(id).then(response => {
    loading.value = false;
    form.value = response.data;
    open.value = true;
    title.value = "修改文章内容";
  });
}

function submitForm() {
  proxy.$refs["articleRef"].validate(valid => {
    if (valid) {
      buttonLoading.value = true;
      if (form.value.id != null) {
        updateArticle(form.value).then(response => {
          proxy.$modal.msgSuccess("修改成功");
          open.value = false;
          getList();
        }).finally(() => {
          buttonLoading.value = false;
        });
      } else {
        addArticle(form.value).then(response => {
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
  const aids = row.id || ids.value;
  proxy.$modal.confirm('是否确认删除文章内容编号为"' + aids + '"的数据项？').then(() => {
    loading.value = true;
    return delArticle(aids);
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
  proxy.download('core/article/export', {
    ...queryParams.value
  }, `article_${new Date().getTime()}.xlsx`)
}

function handleSelectionChange(selection) {
  ids.value = selection.map(item => item.id);
  single.value = selection.length !== 1;
  multiple.value = !selection.length;
}

getList()

</script>
