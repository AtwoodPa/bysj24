<template>
  <div class="app-container">
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

    <el-table v-loading="loading" :data="observeList" >
      <el-table-column label="ID" width="55" align="center" prop="id" v-if="true"/>
      <el-table-column label="接种人姓名" align="center" prop="realName" />
      <el-table-column label="医护人员姓名" align="center" prop="workerName" />
      <el-table-column label="留观开始时间" align="center" prop="createTime" width="180"/>
      <el-table-column label="留观结束时间" align="center" prop="endTime" width="180"/>
      <el-table-column label="接种点名称" align="center" prop="siteName" />
      <el-table-column label="留观状态" align="center" prop="isFinish" >
        <template #default="{row}">
          <span v-if="row.isFinish === 1">留观结束</span>
          <span v-else style="color: red">尚未留观</span>
        </template>
      </el-table-column>
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

<script  setup name="Observe">
import { listObserve } from "@/api/vaccine/observe"
const {proxy} = getCurrentInstance()


const observeList = ref([])
const open = ref(false)
const buttonLoading = ref(false)
const loading = ref(true)
const showSearch = ref(true)
const ids = ref([])
const single = ref(true)
const multiple = ref(true)
const total = ref(0)
const title = ref("")

const data = reactive({
  queryParams: {
    pageNum: 1,
    pageSize: 10,
    realName: undefined
  }
})
const {queryParams, form, rules} = toRefs(data)

function getList() {
  loading.value = true
  listObserve(data.queryParams).then(response => {
    observeList.value = response.rows
    total.value = response.total
    loading.value = false
  })
}

function handleQuery() {
  queryParams.value.pageNum = 1
  getList()
}

function resetQuery() {
  proxy.resetForm("queryForm")
  handleQuery()
}
getList()
</script>
