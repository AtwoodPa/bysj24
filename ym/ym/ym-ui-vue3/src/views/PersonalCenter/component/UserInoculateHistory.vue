<template>
  <div class="app-container">


    <el-table width="350px" v-loading="loading" :data="inoculateList">
      <el-table-column label="ID" width="95" align="center" show-overflow-tooltip prop="id"  v-if="true"/>
      <el-table-column label="接种人姓名" align="center" prop="nickName" width="100"/>
      <el-table-column label="接种部位" align="center" prop="part"/>
      <el-table-column label="接种点名称" align="center" prop="inoculateSiteName" width="100" />
      <el-table-column label="医护人员姓名" align="center" prop="workName" width="120"/>
      <el-table-column label="接种时间" align="center" prop="createTime" width="180">
        <template #default="{row}">
          <span>{{ parseTime(row.createTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="疫苗名称" align="center" prop="vaccineName" width="120"/>
      <el-table-column label="疫苗批号" align="center" prop="batchNumber" width="150"/>
      <el-table-column label="备注" align="center" prop="remark" fixed="right"/>
    </el-table>


  </div>
</template>

<script setup name="UserInoculateHistory">
import {listInoculate} from "@/api/vaccine/inoculate";
import {parseTime} from "@/utils/ruoyi";

const {proxy} = getCurrentInstance();
const total = ref(0);
const title = ref("");
const inoculateList = ref([]);
const loading = ref(false);
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
<style scoped lang="scss">

</style>
