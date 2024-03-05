<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="default" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="校友姓名" prop="name">
        <el-input
          v-model="queryParams.name"
          placeholder="请输入校友姓名"
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
          v-hasPermi="['core:style:add']"
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
          v-hasPermi="['core:style:edit']"
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
          v-hasPermi="['core:style:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="Download"
          size="default"
          @click="handleExport"
          v-hasPermi="['core:style:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar v-model:showSearch="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="styleList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="主键ID" align="center" prop="id" v-if="true"/>
      <el-table-column label="校友姓名" align="center" prop="name" />
      <el-table-column label="校友描述" align="center" prop="descs" />
      <el-table-column label="创建时间" align="center" prop="createTime" width="180">
        <template #default="{row}">
          <span>{{ parseTime(row.createTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="图片URL" align="center" prop="imgUrl" >
        <template #default="{ row }">
          <img :src="getServerUrl()+'image'+row.imgUrl" style='width: 178px;height: 178px;display: block;'/>
        </template>
      </el-table-column>
      <el-table-column label="操作" align="center" class-name="default-padding fixed-width">
        <template #default="scope">
          <el-tooltip content="修改" placement="top">
            <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)"></el-button>
          </el-tooltip>
          <el-tooltip content="删除" placement="top">
            <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)"></el-button>
          </el-tooltip>
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

    <!-- 添加或修改校友风采管理对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="styleForm" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="校友姓名" prop="name">
          <el-input v-model="form.name" placeholder="请输入校友姓名" />
        </el-form-item>
        <el-form-item label="校友描述" prop="descs">
          <el-input v-model="form.descs" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        <el-form-item label="创建时间" prop="createTime">
          <el-date-picker clearable
            v-model="form.createTime"
                          type="datetime"
                          format="YYYY-MM-DD HH:mm:ss"
                          value-format="YYYY-MM-DD HH:mm:ss"
            placeholder="请选择创建时间">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="活动图片" prop="imgUrl">
          <el-upload
            class="avatar-uploader"
            action="http://localhost:8080/core/core/image/upload"
            :show-file-list="false"
            :on-success="handleAvatarSuccess"
            :before-upload="beforeAvatarUpload">
            <img v-if="form.imgUrl" :src="getServerUrl()+'image'+form.imgUrl" style="width: 200px"/>
            <el-icon v-else class="avatar-uploader-icon">
              <Plus/>
            </el-icon>
          </el-upload>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button :loading="buttonLoading" type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script setup name="Style">
import { listStyle, getStyle, delStyle, addStyle, updateStyle } from "@/api/core/style";
// 获取本地服务器地址
import {getServerUrl} from "@/utils/request";
import {Plus} from "@element-plus/icons-vue";
// 获取代理对象
const {proxy} = getCurrentInstance();

const styleList = ref([]);
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
  form: {},
  queryParams: {
    pageNum: 1,
    pageSize: 10,
    name: undefined,
    descs: undefined,
    createTime: undefined,
    imgUrl: undefined
  },
  rules: {
    id: [
      { required: true, message: "主键ID不能为空", trigger: "blur" }
    ],
    name: [
      { required: true, message: "校友姓名不能为空", trigger: "blur" }
    ],
    descs: [
      { required: true, message: "校友描述不能为空", trigger: "blur" }
    ],
    createTime: [
      { required: true, message: "创建时间不能为空", trigger: "blur" }
    ],
    imgUrl: [
      { required: true, message: "图片URL不能为空", trigger: "blur" }
    ]
  }
});
const {queryParams, form, rules} = toRefs(data);
function getList(){
  loading.value = true;
  listStyle(queryParams.value).then(response => {
    styleList.value = response.rows;
    total.value = response.total;
    loading.value = false;
  });
}
const handleAvatarSuccess = (response, uploadFile) => {
  data.form.imgUrl = "/" + response.data;
};

const beforeAvatarUpload = (rawFile) => {
  return true;
};
function cancel() {
  open.value = false;
  reset();
}

function reset() {
  form.value = {
    id: undefined,
    name: undefined,
    address: undefined,
    imgUrl: undefined,
    desc: undefined,
    startTime: undefined,
    endTime: undefined
  };
  proxy.resetForm["styleForm"];

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
  ids.value = selection.map(item => item.id);
  single.value = selection.length !== 1;
  multiple.value = !selection.length;
}

/** 新增按钮操作 */
function handleAdd() {
  reset();
  open.value = true;
  title.value = "添加校友风采信息";
}

function handleUpdate(row) {
  loading.value = true;
  reset();
  const id = row.id || ids.value;
  getStyle(id).then(response => {
    loading.value = false;
    form.value = response.data;
    open.value = true;
    title.value = "修改校友风采信息";
  });
}
function submitForm() {
  proxy.$refs["styleForm"].validate(valid => {
    if (valid) {
      buttonLoading.value = true;
      if (form.value.id != null) {
        updateStyle(form.value).then(response => {
          proxy.$modal.msgSuccess("修改成功");
          open.value = false;
          getList();
        }).finally(() => {
          buttonLoading.value = false;
        });
      } else {
        addStyle(form.value).then(response => {
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
  const sids = row.id || ids.value;
  proxy.$modal.confirm('是否确认删除校友风采信息编号为"' + sids + '"的数据项？').then(() => {
    loading.value = true;
    return delStyle(sids);
  }).then(() => {
    loading.value = false;
    getList();
    proxy.$modal.msgSuccess("删除成功");
  }).catch(() => {
  }).finally(() => {
    loading.value = false;
  });
}

function handleExport(){
  proxy.download('core/style/export', {
    ...queryParams.value
  }, `style_${new Date().getTime()}.xlsx`);
}


getList();

</script>
