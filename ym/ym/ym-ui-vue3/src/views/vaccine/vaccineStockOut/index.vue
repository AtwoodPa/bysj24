<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryRef" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="疫苗库存" prop="siteAmount">
        <el-input
          v-model="queryParams.siteAmount"
          placeholder="请输入疫苗库存"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="Search" size="default" @click="handleQuery">搜索</el-button>
        <el-button icon="Refresh" size="default" @click="resetQuery">重置</el-button>
        <el-button
          type="primary"
          plain
          icon="Plus"
          size="default"
          @click="handleAdd"

        >新增
        </el-button>
      </el-form-item>
    </el-form>

    <el-table v-loading="loading" :data="vaccineStockList" @selection-change="handleSelectionChange">
      <el-table-column label="ID" show-overflow-tooltip width="150" align="center" prop="id" v-if="true"/>
      <el-table-column label="医院ID" align="center" prop="siteId" v-if="true"/>
      <el-table-column label="医院名称" align="center" prop="siteName" v-if="true"/>
      <el-table-column label="疫苗ID" align="center" prop="vaccineId" v-if="true"/>
      <el-table-column label="疫苗名称" align="center" prop="vaccineName" v-if="true"/>
      <el-table-column label="疫苗库存" align="center" prop="siteAmount"/>
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
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
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改疫苗出入库对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>

      <el-form ref="stockRef" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="接种地点" prop="siteId">
          <el-select
            v-model="form.siteId"
            placeholder="请选择接种地点"
            size="default"
            style="width: 240px"
          >
            <el-option
              v-for="item in siteList"
              :key="item.key"
              :label="item.value"
              :value="item.key"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="接种疫苗" prop="vaccineId">
          <el-select
            v-model="form.vaccineId"
            placeholder="请选择接种疫苗"
            size="default"
            style="width: 240px"
          >
            <el-option
              v-for="item in vaccines"
              :key="item.key"
              :label="item.value"
              :value="item.key"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="疫苗库存" prop="siteAmount">
          <el-input-number v-model="form.siteAmount" :min="1"/>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button :loading="buttonLoading" type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script setup name="VaccineStock">
import {
  listVaccineStock,
  getVaccineStock,
  delVaccineStock,
  addVaccineStock,
  updateVaccineStock
} from "@/api/vaccine/vaccineStock";
import {getAppointAddress, getVaccines} from '@/api/vaccine/appoint'

import {addVaccine, updateVaccine} from "@/api/vaccine/vaccine";

const {proxy} = getCurrentInstance();
const vaccineStockList = ref([]);
const siteList = ref([]);
const vaccines = ref([]);
const buttonLoading = ref(false);

const open = ref(false);
const loading = ref(true);
const ids = ref([]);
const single = ref(true);
const multiple = ref(true);
const total = ref(0);
const title = ref("");
const showSearch = ref(true);

const data = reactive({
  queryParams: {
    pageNum: 1,
    pageSize: 10,
    siteId: undefined,
    vaccineId: undefined,
    siteAmount: undefined
  },
  // 表单参数
  form: {},
  // 表单校验
  rules: {
    siteId: [
      {required: true, message: "医院ID不能为空", trigger: "blur"}
    ],
    vaccineId: [
      {required: true, message: "疫苗ID不能为空", trigger: "blur"}
    ],
    siteAmount: [
      {required: true, message: "疫苗库存不能为空", trigger: "blur"}
    ],
  }
});
const {queryParams, form, rules} = toRefs(data);

function getInoculateSite() {
  getAppointAddress().then(resp => {
    siteList.value = resp
  })
}

function getVaccineList() {
  getVaccines().then(response => {
    vaccines.value = response
  })
}

function getList() {
  loading.value = true;
  listVaccineStock(queryParams.value).then(res => {
    loading.value = false;
    vaccineStockList.value = res.rows;
    total.value = res.total;
  });
};

/** 搜索按钮操作 */
function handleQuery() {
  queryParams.value.pageNum = 1;
  getList();
};

/** 重置按钮操作 */
function resetQuery() {
  proxy.resetForm("queryRef");
  handleQuery();
};

function handleAdd() {
  reset();
  open.value = true;
  title.value = "分配站点疫苗";
}

/**修改按钮操作 */
function handleUpdate(row) {
  loading.value = true;
  reset();
  const id = row.id || ids.value
  getVaccineStock(id).then(response => {
    loading.value = false;
    form.value = response.data;
    open.value = true;
    title.value = "修改疫苗信息";
  });
}

function handleDelete(row) {
  const stockIds = row.id ;
  proxy.$modal.confirm('是否确认删除出库编号为"' + stockIds + '"的数据项?').then(function () {
    return delVaccineStock(stockIds);
  }).then(() => {
    getList();
    proxy.$modal.msgSuccess("删除成功");
  }).catch(() => {
  });
}

/** 多选框选中数据 */
function handleSelectionChange(selection) {
  ids.value = selection.map(item => item.roleId);
  single.value = selection.length != 1;
  multiple.value = !selection.length;
}

function reset() {

  proxy.resetForm("stockRef")
}

/** 提交按钮 */
function submitForm() {
  proxy.$refs["stockRef"].validate(valid => {
    if (valid) {
      buttonLoading.value = true;
      if (form.value.id != null) {
        updateVaccineStock(form.value).then(response => {
          proxy.$modal.msgSuccess("修改成功");
          open.value = false;
          getList();
        }).finally(() => {
          buttonLoading.value = false;
        });
      } else {
        addVaccineStock(form.value).then(response => {
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

/** 取消按钮 */
function cancel() {
  open.value = false;
  reset();
}

// 获取接种站点数据
getInoculateSite();
// 获取疫苗信息数据
getVaccineList();
// 获取入库情况
getList();

</script>
