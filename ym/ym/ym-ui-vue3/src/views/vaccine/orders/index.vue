<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">

      <el-form-item label="订单状态" prop="status">
        <el-select
          v-model="queryParams.status"
          placeholder="请选择"
          size="default"
          style="width: 150px"
        >
          <el-option
            v-for="item in statusOptions"
            :key="item.key"
            :label="item.value"
            :value="item.key"
          ></el-option>
        </el-select>

      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="Search" size="default" @click="handleQuery">搜索</el-button>
        <el-button icon="Refresh" size="default" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">

      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="Delete"
          size="default"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['vaccine:orders:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="Download"
          size="default"
          @click="handleExport"
          v-hasPermi="['vaccine:orders:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar v-model:showSearch="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="ordersList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="ID" align="center" prop="id" v-if="true"/>
      <el-table-column label="患者姓名" align="center" prop="nickName" />
      <el-table-column label="订单总金额" align="center" prop="totalAmount" />
      <el-table-column label="支付方式" align="center" prop="paymentMethod" />
      <el-table-column label="疫苗名称" align="center" prop="vaccineName" />
      <el-table-column label="站点名称" align="center" prop="inoculateSiteName" />
      <el-table-column label="订单状态" align="center" prop="statusName" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template #default="scope">
          <el-tooltip content="接种" placement="top" >
            <el-button link type="primary" icon="Edit" @click="handleInoculate(scope.row)" ></el-button>
          </el-tooltip>
          <el-tooltip content="删除" placement="top" >
            <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)" v-hasPermi="['vaccine:orders:remove']"></el-button>
          </el-tooltip>
        </template>
      </el-table-column>
    </el-table>

    <pagination
      v-show="total>0"
      :total="total"
      v-model:page="queryParams.pageNum"
      v-model:limit="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改疫苗接种站点管理对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="inoculateForm" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="接种时间" prop="inoculateTime">
          <el-date-picker
            v-model="form.inoculateTime"
            type="date"
            format="YYYY-MM-DD"
            value-format="YYYY-MM-DD HH:mm:ss"
            placeholder="选择日期"
            style="width: 100%"
          ></el-date-picker>
        </el-form-item>
        <el-form-item label="接种部位" prop="name">
          <el-select v-model="form.part" placeholder="请选择时间段">
            <el-option
              v-for="item in options"
              :key="item.value"
              :label="item.label"
              :value="item.value"
            ></el-option>
          </el-select>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button :loading="buttonLoading" type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script setup name="Orders">
import {listOrders, delOrders, addInoculate, getOrders} from "@/api/vaccine/orders";
const {proxy} = getCurrentInstance();

const ordersList = ref([]);
const open = ref(false);
const buttonLoading = ref(false);
const loading = ref(true);
const showSearch = ref(true);
const ids = ref([]);
const single = ref(true);
const multiple = ref(true);
const total = ref(0);
const title = ref("");
const options = ref([
  {
    value: '左上臂',
    lable: '左上臂',
  },
  {
    value: '右上臂',
    lable: '右上臂',
  },
  {
    value: '右肩',
    lable: '右肩',
  },
  {
    value: '右肩',
    lable: '右肩',
  },
  ]);
const statusOptions = ref([
  {
    value: '待支付',
    key: '0',
  },
  {
    value: '已支付',
    key: '1',
  },
  {
    value: '已取消',
    key: '2',
  },
  {
    value: '已接种',
    key: '3',
  }
]);

const data = reactive({
  queryParams: {
    pageNum: 1,
    pageSize: 10,
    name: undefined,
    address: undefined,
    imgUrl: undefined
  },
  form: {
    pageNum: 1,
    pageSize: 10,
    // 订单id
    orderId: undefined,
    // 接种部位
    part: undefined,
    // 接种时间
    inoculateTime: undefined
  }
});
const {queryParams, form, rules} = toRefs(data);


function getList() {
  loading.value = true;
  listOrders(queryParams.value).then(response => {
    ordersList.value = response.rows;
    total.value = response.total;
    loading.value = false;
  });
}
function cancel() {
  open.value = false;
  reset();
};

function reset() {
  form.value = {
    // 订单id
    orderId: undefined,
    // 接种部位
    part: undefined,
    // 接种时间
    inoculateTime: undefined
  };
  proxy.resetForm["inoculateForm"];
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
function handleInoculate(row) {
  loading.value = true;
  reset();
  const id = row.id ;
  const name = row.nickName;
  proxy.$modal.confirm('是否对患者"' + name + '"进行接种？').then(() => {
    getOrders(id).then(response => {
      form.value.orderId = response.data.id;
      open.value = true;
      title.value = "接种操作";
    })
  }).then(() => {
    loading.value = false;
    getList();

  }).catch(() => {
  }).finally(() => {
    loading.value = false;
  });
}
function submitForm() {
  proxy.$refs["inoculateForm"].validate(valid => {
    if (valid) {
      buttonLoading.value = true;
      console.log(form.value)
      addInoculate(form.value).then(response => {
          proxy.$modal.msgSuccess("接种成功");
          open.value = false;
          getList();
        }).finally(() => {
          buttonLoading.value = false;
        });

    }
  });
}

function handleDelete(row) {
  const id = row.id || ids.value;
  proxy.$modal.confirm('是否确认删除疫苗接种站点管理编号为"' + id + '"的数据项？').then(() => {
    loading.value = true;
    return delOrders(id);
  }).then(() => {
    loading.value = false;
    getList();
    proxy.$modal.msgSuccess("删除成功");
  }).catch(() => {
  }).finally(() => {
    loading.value = false;
  });
}
function handleExport() {
  this.download('vaccine/order/export', {
    ...queryParams.value
  }, `order_${new Date().getTime()}.xlsx`)
}
getList()
</script>
