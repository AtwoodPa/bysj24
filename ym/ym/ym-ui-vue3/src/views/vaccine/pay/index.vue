<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="default" :inline="true" v-show="showSearch" label-width="100px">
      <el-form-item label="接种人名称" prop="realName">
        <el-input
          v-model="queryParams.realName"
          placeholder="请输入接种人名称"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="Search"  @click="handleQuery">搜索</el-button>
        <el-button icon="Refresh"  @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-table v-loading="loading" :data="payList" >
      <el-table-column label="ID" width="55" align="center" prop="id" v-if="true"/>
      <el-table-column label="接种人姓名"  align="center" prop="realName" />
      <el-table-column label="支付金额 (单位: 元)"  align="center" prop="cost" />
      <el-table-column label="疫苗名称" align="center" prop="vaccineName" />
      <el-table-column label="支付时间" align="center" prop="createTime" width="180"/>
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

<script setup name="Pay">
import { listPay } from "@/api/vaccine/pay";
import {parseTime} from "@/utils/ruoyi";

const {proxy} = getCurrentInstance();

const payList = ref([]);
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
  listPay(data.queryParams).then(response => {
    payList.value = response.rows;
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
function cancel() {
  open.value = false;
  reset();
}


getList();
</script>
