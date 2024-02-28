<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" :inline="true" v-show="showSearch" label-width="40px">
      <el-form-item label="标题" prop="title">
        <el-input
          v-model="queryParams.title"
          placeholder="请输入疫苗知识的标题"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>

      <el-form-item>
        <el-button type="primary" icon="Search" size="default" @click="handleQuery">搜索</el-button>
        <el-button icon="Refresh" size="default" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="Plus"
          size="default"
          @click="handleAdd"

        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="Edit"
          size="default"
          :disabled="single"
          @click="handleUpdate"

        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="Delete"
          size="default"
          :disabled="multiple"
          @click="handleDelete"

        >删除</el-button>
      </el-col>
      <right-toolbar v-model:showSearch="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="vaccineKnowledgeList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="ID" align="center" prop="id" v-if="true"/>
      <el-table-column label="标题" align="center" prop="title" />
      <el-table-column label="接种好处" show-overflow-tooltip align="center" prop="benefits" />
      <el-table-column label="注意的事项" show-overflow-tooltip align="center" prop="instructions" />
      <el-table-column label="发布时间" align="center" prop="publishTime" width="180">
        <template #default="{ row }">
          <span>{{ parseTime(row.publishTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="发布用户" align="center" prop="publisher" />
      <el-table-column label="知识详情" show-overflow-tooltip align="center" prop="knowledge" />

      <el-table-column label="操作" align="center" >
        <template #default="scope">
          <el-tooltip content="修改" placement="top" >
            <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)"></el-button>
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
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改存储疫苗知识信息的对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="kForm" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="标题" prop="Title">
          <el-input v-model="form.title" placeholder="请输入疫苗知识的标题" />
        </el-form-item>
        <el-form-item label="好处" prop="Benefits">
          <el-input v-model="form.benefits" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        <el-form-item label="注意的事项" prop="Instructions">
          <el-input v-model="form.instructions" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        <el-form-item label="发布时间" prop="PublishTime">
          <el-date-picker clearable
            v-model="form.publishTime"
                          type="datetime"
                          format="YYYY-MM-DD HH:mm:ss"
                          value-format="YYYY-MM-DD HH:mm:ss"
            placeholder="请选择发布时间">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="发布人" prop="Publisher">
          <el-input v-model="form.publisher" placeholder="请输入发布疫苗知识的用户或管理员的姓名或标识符" />
        </el-form-item>
        <el-form-item label="知识详情" prop="Knowledge">
          <el-input v-model="form.knowledge" type="textarea" placeholder="请输入内容" />
        </el-form-item>

      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button :loading="buttonLoading" type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script setup name="VaccineKnowledge">
import { listVaccineKnowledge, getVaccineKnowledge, delVaccineKnowledge, addVaccineKnowledge, updateVaccineKnowledge } from "@/api/vaccine/vaccineKnowledge";
import {getVaccine} from "@/api/vaccine/vaccine";

const {proxy} = getCurrentInstance();

const vaccineKnowledgeList = ref([]);
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
    title: undefined,
    benefits: undefined,
    instructions: undefined,
    publishTime: undefined,
    publisher: undefined,
    knowledge: undefined,
    coverImage: undefined
  },
  // 表单参数
  form: {},
  // 表单校验
  rules: {
    id: [
      { required: true, message: "唯一标识每一条疫苗知识记录的自增ID不能为空", trigger: "blur" }
    ],
    title: [
      { required: true, message: "疫苗知识的标题不能为空", trigger: "blur" }
    ],
    benefits: [
      { required: true, message: "接种该疫苗的好处不能为空", trigger: "blur" }
    ],
    instructions: [
      { required: true, message: "接种该疫苗前需要注意的事项不能为空", trigger: "blur" }
    ],
    publishTime: [
      { required: true, message: "疫苗知识的发布时间不能为空", trigger: "blur" }
    ],
    publisher: [
      { required: true, message: "发布疫苗知识的用户或管理员的姓名或标识符不能为空", trigger: "blur" }
    ],
    knowledge: [
      { required: true, message: "详细描述疫苗知识的文本不能为空", trigger: "blur" }
    ]
  }
});
const {queryParams, form, rules} = toRefs(data);

function getList(){
  loading.value = true;
  listVaccineKnowledge(data.queryParams).then(resp => {
    vaccineKnowledgeList.value = resp.rows;
    total.value = resp.total;
    loading.value = false;
  })
}
function cancel() {
  open.value = false;
  reset();
};
function reset() {
  form.value = {
    id: undefined,
    title: undefined,
    benefits: undefined,
    instructions: undefined,
    publishTime: undefined,
    publisher: undefined,
    knowledge: undefined,
    coverImage: undefined
  };
  proxy.resetForm["kForm"];
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
  title.value = "添加疫苗知识信息";
}
function handleUpdate(row) {
  loading.value = true;
  reset();
  const id = row.id || ids.value
  getVaccineKnowledge(id).then(response => {
    loading.value = false;
    form.value = response.data;
    open.value = true;
    title.value = "修改疫苗信息";
  });
}

/** 提交按钮 */
function submitForm() {
  proxy.$refs["kForm"].validate(valid => {
    if (valid) {
      buttonLoading.value = true;
      if (form.value.id != null) {
        updateVaccineKnowledge(form.value).then(response => {
          proxy.$modal.msgSuccess("修改成功");
          open.value = false;
          getList();
        }).finally(() => {
          buttonLoading.value = false;
        });
      } else {
        addVaccineKnowledge(form.value).then(response => {
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
  proxy.$modal.confirm('是否确认删除编号为"' + id + '"的数据项？').then(function () {
    return  delVaccineKnowledge(id);
  }).then(() => {
    getList();
    proxy.$modal.msgSuccess("删除成功");
  }).catch(() => {
  });
}

getList();
</script>
