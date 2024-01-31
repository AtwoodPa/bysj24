<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="default" :inline="true" v-show="showSearch" label-width="100px">
      <el-form-item label="接种人姓名" prop="userId">
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

    <el-table v-loading="loading" :data="appointList" >
      <el-table-column label="ID" align="center" width="55" prop="id" v-if="true"/>
      <el-table-column label="签到码" align="center" prop="qrCodeUrl"/>
      <el-table-column label="预约人姓名" align="center" prop="realName"/>
      <el-table-column label="接种点名称" align="center" prop="inoculateSiteName"/>
      <el-table-column label="预约日期" align="center" prop="appointDate" width="180" />
      <el-table-column label="操作时间" align="center" prop="createTime"/>
      <el-table-column label="疫苗名称" align="center" prop="vaccineName"/>
      <el-table-column label="接种状态" align="center" prop="status">
        <template #default="{ row }">
          <span  style="color: blue" v-if="row.status === 6">取消预约</span>
          <span style="color: red" v-else>接种结束</span>
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

  </div>
</template>

<script setup name="Appoint">
import {listAppoint} from "@/api/vaccine/appoint";

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


const data = reactive({
  queryParams: {
    pageNum: 1,
    pageSize: 10,
    realName: undefined
  }
})
const {queryParams, form, rules} = toRefs(data);

function getList() {
  loading.value = true;
  listAppoint(queryParams.value).then(response => {
    appointList.value = response.rows;
    total.value = response.total;
    loading.value = false;
  });
}
function handleQuery() {
  queryParams.value.pageNum = 1;
  getList();
};

function resetQuery() {
  proxy.resetForm("queryForm");
  handleQuery();
};

getList();
</script>
