<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm"  :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="居室" prop="houseNum">
        <el-input
          v-model="queryParams.houseNum"
          placeholder="请输入居室"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="卫生间" prop="toiletNum">
        <el-input
          v-model="queryParams.toiletNum"
          placeholder="请输入卫生间"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="整套面积" prop="houseArea">
        <el-input
          v-model="queryParams.houseArea"
          placeholder="请输入整套面积"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="房间号" prop="roomCode">
        <el-input
          v-model="queryParams.roomCode"
          placeholder="请输入房间号"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="房屋面积" prop="roomArea">
        <el-input
          v-model="queryParams.roomArea"
          placeholder="请输入房屋面积"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="朝向" prop="direction">
        <el-input
          v-model="queryParams.direction"
          placeholder="请输入朝向"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="租金" prop="price">
        <el-input
          v-model="queryParams.price"
          placeholder="请输入租金"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="楼层" prop="floor">
        <el-input
          v-model="queryParams.floor"
          placeholder="请输入楼层"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="起租日期" prop="startDate">
        <el-date-picker clearable
          v-model="queryParams.startDate"
          type="date"
          value-format="YYYY-MM-DD HH:mm:ss"
          placeholder="请选择起租日期">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="房源描述" prop="introduce">
        <el-input
          v-model="queryParams.introduce"
          placeholder="请输入房源描述"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="房东姓名" prop="ownerName">
        <el-input
          v-model="queryParams.ownerName"
          placeholder="请输入房东姓名"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="房东电话" prop="owerPhone">
        <el-input
          v-model="queryParams.owerPhone"
          placeholder="请输入房东电话"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="小区id" prop="villageId">
        <el-input
          v-model="queryParams.villageId"
          placeholder="请输入小区id"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="小区名称" prop="villageName">
        <el-input
          v-model="queryParams.villageName"
          placeholder="请输入小区名称"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="具体地址" prop="address">
        <el-input
          v-model="queryParams.address"
          placeholder="请输入具体地址"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="房牌号" prop="houseNo">
        <el-input
          v-model="queryParams.houseNo"
          placeholder="请输入房牌号"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="发布人id" prop="publishId">
        <el-input
          v-model="queryParams.publishId"
          placeholder="请输入发布人id"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="0：待出租, 1：已出租, 2:下架" prop="state">
        <el-input
          v-model="queryParams.state"
          placeholder="请输入0：待出租, 1：已出租, 2:下架"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="" prop="createName">
        <el-input
          v-model="queryParams.createName"
          placeholder="请输入"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="" prop="updateName">
        <el-input
          v-model="queryParams.updateName"
          placeholder="请输入"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="客厅数量" prop="houseHall">
        <el-input
          v-model="queryParams.houseHall"
          placeholder="请输入客厅数量"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="房源编号" prop="code">
        <el-input
          v-model="queryParams.code"
          placeholder="请输入房源编号"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="封面图" prop="faceUrl">
        <el-input
          v-model="queryParams.faceUrl"
          placeholder="请输入封面图"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="装修情况" prop="decoration">
        <el-input
          v-model="queryParams.decoration"
          placeholder="请输入装修情况"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="经纪人姓名" prop="agentName">
        <el-input
          v-model="queryParams.agentName"
          placeholder="请输入经纪人姓名"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="经纪人电话" prop="agentPhone">
        <el-input
          v-model="queryParams.agentPhone"
          placeholder="请输入经纪人电话"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="经纪人id" prop="agentUserId">
        <el-input
          v-model="queryParams.agentUserId"
          placeholder="请输入经纪人id"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="经纪人头像" prop="agentAvatar">
        <el-input
          v-model="queryParams.agentAvatar"
          placeholder="请输入经纪人头像"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="Search"  @click="handleQuery">搜索</el-button>
        <el-button icon="Refresh"  @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="Plus"
          @click="handleAdd"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="Edit"
          :disabled="single"
          @click="handleUpdate"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="Delete"
          :disabled="multiple"
          @click="handleDelete"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="Download"
          @click="handleExport"
        >导出</el-button>
      </el-col>
      <right-toolbar v-model:showSearch="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="roomList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="" align="center" prop="id" v-if="true"/>
      <el-table-column label="0整租/1合租" align="center" prop="type" />
      <el-table-column label="居室" align="center" prop="houseNum" />
      <el-table-column label="卫生间" align="center" prop="toiletNum" />
      <el-table-column label="整套面积" align="center" prop="houseArea" />
      <el-table-column label="1主卧,2次卧" align="center" prop="roomType" />
      <el-table-column label="房间号" align="center" prop="roomCode" />
      <el-table-column label="房屋面积" align="center" prop="roomArea" />
      <el-table-column label="朝向" align="center" prop="direction" />
      <el-table-column label="租金" align="center" prop="price" />
      <el-table-column label="楼层" align="center" prop="floor" />
      <el-table-column label="楼房类型" align="center" prop="stepType" />
      <el-table-column label="起租日期" align="center" prop="startDate" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.createTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="房源描述" align="center" prop="introduce" />
      <el-table-column label="房东姓名" align="center" prop="ownerName" />
      <el-table-column label="房东电话" align="center" prop="owerPhone" />
      <el-table-column label="小区id" align="center" prop="villageId" />
      <el-table-column label="小区名称" align="center" prop="villageName" />
      <el-table-column label="具体地址" align="center" prop="address" />
      <el-table-column label="房牌号" align="center" prop="houseNo" />
      <el-table-column label="付款方式" align="center" prop="payType" />
      <el-table-column label="发布人id" align="center" prop="publishId" />
      <el-table-column label="0：待出租, 1：已出租, 2:下架" align="center" prop="state" />
      <el-table-column label="" align="center" prop="createName" />
      <el-table-column label="" align="center" prop="updateName" />
      <el-table-column label="" align="center" prop="remark" />
      <el-table-column label="客厅数量" align="center" prop="houseHall" />
      <el-table-column label="房源编号" align="center" prop="code" />
      <el-table-column label="封面图" align="center" prop="faceUrl" />
      <el-table-column label="装修情况" align="center" prop="decoration" />
      <el-table-column label="经纪人姓名" align="center" prop="agentName" />
      <el-table-column label="经纪人电话" align="center" prop="agentPhone" />
      <el-table-column label="经纪人id" align="center" prop="agentUserId" />
      <el-table-column label="经纪人头像" align="center" prop="agentAvatar" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template #default="scope">
          <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)" >修改</el-button>
          <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)" >删除</el-button>
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

    <!-- 添加或修改房源管理对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="roomRef" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="居室" prop="houseNum">
          <el-input v-model="form.houseNum" placeholder="请输入居室" />
        </el-form-item>
        <el-form-item label="卫生间" prop="toiletNum">
          <el-input v-model="form.toiletNum" placeholder="请输入卫生间" />
        </el-form-item>
        <el-form-item label="整套面积" prop="houseArea">
          <el-input v-model="form.houseArea" placeholder="请输入整套面积" />
        </el-form-item>
        <el-form-item label="房间号" prop="roomCode">
          <el-input v-model="form.roomCode" placeholder="请输入房间号" />
        </el-form-item>
        <el-form-item label="房屋面积" prop="roomArea">
          <el-input v-model="form.roomArea" placeholder="请输入房屋面积" />
        </el-form-item>
        <el-form-item label="朝向" prop="direction">
          <el-input v-model="form.direction" placeholder="请输入朝向" />
        </el-form-item>
        <el-form-item label="租金" prop="price">
          <el-input v-model="form.price" placeholder="请输入租金" />
        </el-form-item>
        <el-form-item label="楼层" prop="floor">
          <el-input v-model="form.floor" placeholder="请输入楼层" />
        </el-form-item>
        <el-form-item label="起租日期" prop="startDate">
          <el-date-picker clearable
            v-model="form.startDate"
                          type="datetime"
                          format="YYYY-MM-DD HH:mm:ss"
                          value-format="YYYY-MM-DD HH:mm:ss"
            placeholder="请选择起租日期">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="房源描述" prop="introduce">
          <el-input v-model="form.introduce" placeholder="请输入房源描述" />
        </el-form-item>
        <el-form-item label="房东姓名" prop="ownerName">
          <el-input v-model="form.ownerName" placeholder="请输入房东姓名" />
        </el-form-item>
        <el-form-item label="房东电话" prop="owerPhone">
          <el-input v-model="form.owerPhone" placeholder="请输入房东电话" />
        </el-form-item>
        <el-form-item label="小区id" prop="villageId">
          <el-input v-model="form.villageId" placeholder="请输入小区id" />
        </el-form-item>
        <el-form-item label="小区名称" prop="villageName">
          <el-input v-model="form.villageName" placeholder="请输入小区名称" />
        </el-form-item>
        <el-form-item label="具体地址" prop="address">
          <el-input v-model="form.address" placeholder="请输入具体地址" />
        </el-form-item>
        <el-form-item label="房牌号" prop="houseNo">
          <el-input v-model="form.houseNo" placeholder="请输入房牌号" />
        </el-form-item>
        <el-form-item label="发布人id" prop="publishId">
          <el-input v-model="form.publishId" placeholder="请输入发布人id" />
        </el-form-item>
        <el-form-item label="0：待出租, 1：已出租, 2:下架" prop="state">
          <el-input v-model="form.state" placeholder="请输入0：待出租, 1：已出租, 2:下架" />
        </el-form-item>
        <el-form-item label="" prop="createName">
          <el-input v-model="form.createName" placeholder="请输入" />
        </el-form-item>
        <el-form-item label="" prop="updateName">
          <el-input v-model="form.updateName" placeholder="请输入" />
        </el-form-item>
        <el-form-item label="" prop="remark">
          <el-input v-model="form.remark" placeholder="请输入" />
        </el-form-item>
        <el-form-item label="客厅数量" prop="houseHall">
          <el-input v-model="form.houseHall" placeholder="请输入客厅数量" />
        </el-form-item>
        <el-form-item label="房源编号" prop="code">
          <el-input v-model="form.code" placeholder="请输入房源编号" />
        </el-form-item>
        <el-form-item label="封面图" prop="faceUrl">
          <el-input v-model="form.faceUrl" placeholder="请输入封面图" />
        </el-form-item>
        <el-form-item label="装修情况" prop="decoration">
          <el-input v-model="form.decoration" placeholder="请输入装修情况" />
        </el-form-item>
        <el-form-item label="经纪人姓名" prop="agentName">
          <el-input v-model="form.agentName" placeholder="请输入经纪人姓名" />
        </el-form-item>
        <el-form-item label="经纪人电话" prop="agentPhone">
          <el-input v-model="form.agentPhone" placeholder="请输入经纪人电话" />
        </el-form-item>
        <el-form-item label="经纪人id" prop="agentUserId">
          <el-input v-model="form.agentUserId" placeholder="请输入经纪人id" />
        </el-form-item>
        <el-form-item label="经纪人头像" prop="agentAvatar">
          <el-input v-model="form.agentAvatar" placeholder="请输入经纪人头像" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button :loading="buttonLoading" type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script setup name="Room">
import { listRoom, getRoom, delRoom, addRoom, updateRoom } from "@/api/core/room";
const { proxy } = getCurrentInstance();

const roomList = ref([]);
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
    type: undefined,
    houseNum: undefined,
    toiletNum: undefined,
    houseArea: undefined,
    roomType: undefined,
    roomCode: undefined,
    roomArea: undefined,
    direction: undefined,
    price: undefined,
    floor: undefined,
    stepType: undefined,
    startDate: undefined,
    introduce: undefined,
    ownerName: undefined,
    owerPhone: undefined,
    villageId: undefined,
    villageName: undefined,
    address: undefined,
    houseNo: undefined,
    payType: undefined,
    publishId: undefined,
    state: undefined,
    createName: undefined,
    updateName: undefined,
    houseHall: undefined,
    code: undefined,
    faceUrl: undefined,
    decoration: undefined,
    agentName: undefined,
    agentPhone: undefined,
    agentUserId: undefined,
    agentAvatar: undefined
  },
  // 表单参数
  form: {},
  // 表单校验
  rules: {
    id: [
      { required: true, message: "不能为空", trigger: "blur" }
    ],
    type: [
      { required: true, message: "0整租/1合租不能为空", trigger: "change" }
    ],
    houseNum: [
      { required: true, message: "居室不能为空", trigger: "blur" }
    ],
    toiletNum: [
      { required: true, message: "卫生间不能为空", trigger: "blur" }
    ],
    houseArea: [
      { required: true, message: "整套面积不能为空", trigger: "blur" }
    ],
    roomType: [
      { required: true, message: "1主卧,2次卧不能为空", trigger: "change" }
    ],
    roomCode: [
      { required: true, message: "房间号不能为空", trigger: "blur" }
    ],
    roomArea: [
      { required: true, message: "房屋面积不能为空", trigger: "blur" }
    ],
    direction: [
      { required: true, message: "朝向不能为空", trigger: "blur" }
    ],
    price: [
      { required: true, message: "租金不能为空", trigger: "blur" }
    ],
    floor: [
      { required: true, message: "楼层不能为空", trigger: "blur" }
    ],
    // stepType: [
    //   { required: true, message: "楼房类型不能为空", trigger: "change" }
    // ],
    startDate: [
      { required: true, message: "起租日期不能为空", trigger: "blur" }
    ],
    introduce: [
      { required: true, message: "房源描述不能为空", trigger: "blur" }
    ],
    ownerName: [
      { required: true, message: "房东姓名不能为空", trigger: "blur" }
    ],
    owerPhone: [
      { required: true, message: "房东电话不能为空", trigger: "blur" }
    ],
    villageId: [
      { required: true, message: "小区id不能为空", trigger: "blur" }
    ],
    villageName: [
      { required: true, message: "小区名称不能为空", trigger: "blur" }
    ],
    address: [
      { required: true, message: "具体地址不能为空", trigger: "blur" }
    ],
    houseNo: [
      { required: true, message: "房牌号不能为空", trigger: "blur" }
    ],
    payType: [
      { required: true, message: "付款方式不能为空", trigger: "change" }
    ],
    publishId: [
      { required: true, message: "发布人id不能为空", trigger: "blur" }
    ],
    state: [
      { required: true, message: "0：待出租, 1：已出租, 2:下架不能为空", trigger: "blur" }
    ],
    createName: [
      { required: true, message: "不能为空", trigger: "blur" }
    ],
    updateName: [
      { required: true, message: "不能为空", trigger: "blur" }
    ],
    remark: [
      { required: true, message: "不能为空", trigger: "blur" }
    ],
    houseHall: [
      { required: true, message: "客厅数量不能为空", trigger: "blur" }
    ],
    code: [
      { required: true, message: "房源编号不能为空", trigger: "blur" }
    ],
    faceUrl: [
      { required: true, message: "封面图不能为空", trigger: "blur" }
    ],
    decoration: [
      { required: true, message: "装修情况不能为空", trigger: "blur" }
    ],
    agentName: [
      { required: true, message: "经纪人姓名不能为空", trigger: "blur" }
    ],
    agentPhone: [
      { required: true, message: "经纪人电话不能为空", trigger: "blur" }
    ],
    agentUserId: [
      { required: true, message: "经纪人id不能为空", trigger: "blur" }
    ],
    agentAvatar: [
      { required: true, message: "经纪人头像不能为空", trigger: "blur" }
    ]
  }
});

const { queryParams, form, rules } = toRefs(data);

function getList() {
  loading.value = true;
  listRoom(queryParams.value).then(response => {
    roomList.value = response.rows;
    total.value = response.total;
    loading.value = false;
  });
}
function cancel() {
  open.value = false;
  reset();
}
function reset(){
  form.value = {
    id: undefined,
    type: undefined,
    houseNum: undefined,
    toiletNum: undefined,
    houseArea: undefined,
    roomType: undefined,
    roomCode: undefined,
    roomArea: undefined,
    direction: undefined,
    price: undefined,
    floor: undefined,
    stepType: undefined,
    startDate: undefined,
    introduce: undefined,
    ownerName: undefined,
    owerPhone: undefined,
    villageId: undefined,
    villageName: undefined,
    address: undefined,
    houseNo: undefined,
    payType: undefined,
    publishId: undefined,
    state: undefined,
    createTime: undefined,
    createName: undefined,
    updateTime: undefined,
    updateName: undefined,
    remark: undefined,
    houseHall: undefined,
    code: undefined,
    faceUrl: undefined,
    decoration: undefined,
    agentName: undefined,
    agentPhone: undefined,
    agentUserId: undefined,
    agentAvatar: undefined
  };
  proxy.resetForm("roomRef");

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
  ids.value = selection.map(item => item.id)
  single.value = selection.length!==1
  multiple.value = !selection.length
}

function handleAdd() {
  reset();
  open.value = true;
  title.value = "添加房源";
}
function handleUpdate(row) {
  loading.value = true;
  reset();
  const id = row.id || ids.value
  getRoom(id).then(response => {
    loading.value = false;
    form.value = response.data;
    open.value = true;
    title.value = "修改房源信息";
  });
}

function submitForm() {
  proxy.$refs["roomRef"].validate(valid => {
    if (valid) {
      buttonLoading.value = true;
      if (form.value.id != null) {
        updateRoom(form.value).then(response => {
          proxy.$modal.msgSuccess("修改成功");
          open.value = false;
          getList();
        }).finally(() => {
          buttonLoading.value = false;
        });
      } else {
        addRoom(form.value).then(response => {
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
  const roomid = row.id || ids.value;
  proxy.$modal.confirm('是否确认删除房源编号为"' + roomid + '"的数据项？').then(() => {
    loading.value = true;
    return delRoom(roomid);
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
  proxy.download('core/room/export', {
    ...queryParams.value
  }, `room_${new Date().getTime()}.xlsx`)
}

getList()
</script>
