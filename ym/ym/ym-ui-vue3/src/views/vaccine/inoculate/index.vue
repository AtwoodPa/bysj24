<template>
  <div class="app-container">
    <div slot="header" class="clearfix">
      <span>我的接种记录</span>
    </div>

    <el-table v-loading="loading" :data="inoculateList" >
      <el-table-column label="ID" width="55" align="center" prop="id" v-if="false"/>
      <el-table-column label="接种人姓名" align="center" prop="nickName" />
      <el-table-column label="接种部位" align="center" prop="part" />
      <el-table-column label="接种点名称" align="center" prop="inoculateSiteName" />
      <el-table-column label="医护人员姓名" align="center" prop="workName" />
      <el-table-column label="接种时间" align="center" prop="createTime" width="180">
        <template #default="{row}">
          <span>{{ parseTime(row.createTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="疫苗名称" align="center" prop="vaccineName" />
      <el-table-column label="疫苗批号" align="center" prop="batchNumber" />
      <el-table-column label="备注" align="center" prop="remark" />
    </el-table>

    <pagination
      v-show="total>0"
      :total="total"
      v-model:page="queryParams.pageNum"
      v-model:limit="queryParams.pageSize"
      @pagination="getList"
    />


  </div>
</template>
<style scoped>
.clearfix {
  text-align: center;
  justify-content: center;
  font-size: 20px;
  margin-bottom: 20px;
}
</style>
<script setup name="Inoculate">
import {
  listInoculate,
  getInoculate,
  delInoculate,
  addInoculate,
  updateInoculate,
  getUserInoculates
} from "@/api/vaccine/inoculate";
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
  getUserInoculates(data.queryParams).then(response => {
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
