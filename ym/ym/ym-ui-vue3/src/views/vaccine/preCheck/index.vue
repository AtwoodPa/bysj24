<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="default" :inline="true" v-show="showSearch" label-width="100px">
      <el-form-item label="接种人姓名" prop="realName">
        <el-input
          v-model="queryParams.realName"
          placeholder="请输入接种人姓名"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="Search" @click="handleQuery">搜索</el-button>
        <el-button icon="Refresh" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-table v-loading="loading" :data="preCheckList" >
      <el-table-column label="ID" width="55" align="center" prop="id" v-if="true"/>
      <el-table-column label="接种人姓名" width="120" align="center" prop="realName" />
      <el-table-column label="是否服药" width="80" align="center" prop="isMedicine" >
        <template #default="{ row }">
          <span v-if="row.isMedicine === 0">否</span>
          <span v-else>是</span>
        </template>
      </el-table-column>
      <el-table-column label="药物名称" width="90" align="center" prop="medicine" >
        <template #default="{ row }">
          <span v-if="row.medicine != null" style="color: red">{{row.medicine}}</span>
          <span v-else>无</span>
        </template>
      </el-table-column>
      <el-table-column label="是否禁忌症" width="90" align="center" prop="isContraindication" >
        <template #default="{ row }">
          <span v-if="row.isContraindication === 0">否</span>
          <span v-else>是</span>
        </template>
      </el-table-column>
      <el-table-column label="禁忌症名称" width="100" align="center" prop="contraindication" >
        <template #default="{ row }">
          <span v-if="row.contraindication != null" style="color: red">{{row.contraindication}}</span>
          <span v-else>无</span>
        </template>
      </el-table-column>
      <el-table-column label="高压值" width="80" align="center" prop="bloodPressureHigh" />
      <el-table-column label="低压值" width="80" align="center" prop="bloodPressureLow" />
      <el-table-column label="体温" width="80" align="center" prop="temperature" >
        <template #default="{ row }">
          <span>{{row.temperature + "°C"}}</span>
        </template>
      </el-table-column>
      <el-table-column label="医护人员名称" width="120" align="center" prop="workerName" />
      <el-table-column label="预检时间" align="center" prop="createTime" width="180">
        <template #default="{row}">
          <span>{{ parseTime(row.createTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="接种点名称" align="center" prop="siteName" />
      <el-table-column label="备注" align="center" prop="note" />
    </el-table>
    <pagination
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />
  </div>
</template>

<script setup name="PreCheck">
import { listPreCheck } from "@/api/vaccine/preCheck";
import {parseTime} from "@/utils/ruoyi";
const {proxy} = getCurrentInstance();

const preCheckList = ref([]);
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
    realName: undefined
  }
})
const {queryParams} = toRefs(data);
function getList() {
  loading.value = true;
  listPreCheck(data.queryParams).then(response => {
    preCheckList.value = response.rows;
    total.value = response.total;
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
getList();
</script>
