<template>
  <div class="app-container">
    11111111
    <el-form :model="queryParams" ref="queryForm"  :inline="true" v-show="showSearch" label-width="100px">
      <el-form-item label="接种人姓名" prop="realName">
        <el-input
          v-model="queryParams.realName"
          placeholder="请输入接种人姓名"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="Search"  @click="handleQuery">搜索</el-button>
        <el-button icon="Refresh"  @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>



    <el-table v-loading="loading" :data="inoculateList" >
      <el-table-column label="ID" width="55" align="center" prop="id" v-if="false"/>
      <el-table-column label="接种人姓名" align="center" prop="realName" />
      <el-table-column label="接种部位" align="center" prop="part" />
      <el-table-column label="接种点名称" align="center" prop="siteName" />
      <el-table-column label="医护人员姓名" align="center" prop="workerName" />
      <el-table-column label="接种时间" align="center" prop="createTime" width="180">
        <template #default="{row}">
          <span>{{ parseTime(row.createTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="疫苗名称" align="center" prop="vaccineName" />
      <el-table-column label="疫苗批号" align="center" prop="vaccineBatchCode" />
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

<script setup name="Inoculate">
import { listInoculate, getInoculate, delInoculate, addInoculate, updateInoculate } from "@/api/vaccine/inoculate";
import {parseTime} from "@/utils/ruoyi";

const {proxy} = getCurrentInstance();

const inoculateList = ref([]);
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
  listInoculate(data.queryParams).then(response => {
    inoculateList.value = response.rows;
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
};
getList();
</script>
