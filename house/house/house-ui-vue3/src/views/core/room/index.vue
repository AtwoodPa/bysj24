<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm"  :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="类型" prop="type" class="el-form-search-item">
        <el-select
          v-model="queryParams.type"
          placeholder="请选择类型"
          clearable
        >
          <el-option
            v-for="(item, index) in typeOptions"
            :key="index"
            :label="item.label"
            :value="item.value"
          ></el-option>
        </el-select>
      </el-form-item>
      <el-form-item label="状态" prop="state" class="el-form-search-item">
        <el-select
          v-model="queryParams.state"
          placeholder="请选择状态"
          clearable
        >
          <el-option label="待审核" value="0"></el-option>
          <el-option label="待出租" value="1"></el-option>
          <el-option label="已出租" value="2"></el-option>
          <el-option label="已下架" value="3"></el-option>
        </el-select>
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
      <el-table-column label="#" type="index" width="50" align="center">
        <template #default="scope">
          <span>{{
              (queryParams.pageNum - 1) * queryParams.pageSize + scope.$index + 1
            }}</span>
        </template>
      </el-table-column>
      <el-table-column label="类型" align="center" prop="type" :formatter="typeFormatter" width="60"></el-table-column>
      <el-table-column label="户型" align="center" prop="houseCode" width="120"/>
      <el-table-column label="整套面积" align="center" prop="houseArea" width="80"/>
      <el-table-column label="出租房间" align="center" prop="roomType" width="80" :formatter="roomTypeFormatter"/>
      <el-table-column label="房屋面积" align="center" prop="roomArea" width="80"/>
      <el-table-column label="朝向" align="center" prop="direction" width="60"/>
      <el-table-column label="装修" align="center" prop="decoration" width="80"/>
      <el-table-column label="租金" align="center" prop="price" width="60"/>

      <el-table-column label="起租日期" align="center" prop="startDate" width="100">
        <template #default="scope">
          <span>{{ parseTime(scope.row.createTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="状态" align="center" prop="state" width="60" :formatter="stateFormatter"/>
      <el-table-column
        label="封面图"
        align="center"
        prop="faceUrl"
        width="80"
      >
        <template #default="scope">
          <image-preview :src="scope.row.faceUrl" :width="30" :height="30" />
        </template>
      </el-table-column>
      <el-table-column
        label="小区名称"
        align="center"
        prop="villageName"
        :show-overflow-tooltip="true"
        width="180"
      />
      <el-table-column
        label="房牌号"
        align="center"
        prop="houseNo"
        :show-overflow-tooltip="true"
        width="90"
      />
      <el-table-column
        label="门牌号"
        align="center"
        prop="roomCode"
        width="80"
      />
      <el-table-column
        label="房源代号"
        align="center"
        prop="code"
        width="90"
      ></el-table-column>
      <el-table-column
        label="房东姓名"
        align="center"
        prop="ownerName"
        width="100"
      />
      <el-table-column
        label="房东电话"
        align="center"
        prop="owerPhone"
        width="100"
      />
      <el-table-column
        label="经纪人"
        align="center"
        prop="agentName"
        width="70"

      />
      <el-table-column
        label="经纪人电话"
        align="center"
        prop="agentPhone"
        width="100"

      />
      <el-table-column
        label="备注"
        align="center"
        prop="remark"
        width="80"
        :show-overflow-tooltip="true"

      />

      <el-table-column label="操作" fixed="right" align="center"  class-name="small-padding fixed-width">
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
    <el-dialog :title="title" v-model="open" width="800px" append-to-body>
      <el-form ref="roomRef" :model="form" :rules="rules" label-width="80px">
        <el-row :gutter="30">
          <el-col :span="12">
            <el-form-item label="类型" prop="type">
              <el-select
                v-model="form.type"
                placeholder="请选择类型"
                clearable
                :style="{ width: '100%' }"
              >
                <el-option
                  v-for="(item, index) in typeOptions"
                  :key="index"
                  :label="item.label"
                  :value="item.value"
                  :disabled="item.disabled"
                ></el-option>
              </el-select>
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="居室" prop="houseNum">
              <el-select
                v-model="form.houseNum"
                placeholder="请选择居室"
                clearable
                :style="{ width: '100%' }"
              >
                <el-option
                  v-for="(item, index) in houseNumOptions"
                  :key="index"
                  :label="item.label"
                  :value="item.value"
                  :disabled="item.disabled"
                ></el-option>
              </el-select>
            </el-form-item>
          </el-col>
        </el-row>
        <el-row :gutter="30">
          <el-col :span="12"
          ><el-form-item label="厅室" prop="houseHall">
            <el-select
              v-model="form.houseHall"
              placeholder="请选择厅室"
              clearable
              :style="{ width: '100%' }"
            >
              <el-option
                v-for="(item, index) in houseHallOptions"
                :key="index"
                :label="item.label"
                :value="item.value"
                :disabled="item.disabled"
              ></el-option>
            </el-select>
          </el-form-item>
          </el-col>
          <el-col :span="12"
          ><el-form-item label="卫生间" prop="toiletNum">
            <el-select
              v-model="form.toiletNum"
              placeholder="请选择卫生间"
              clearable
              :style="{ width: '100%' }"
            >
              <el-option
                v-for="(item, index) in toiletNumOptions"
                :key="index"
                :label="item.label"
                :value="item.value"
                :disabled="item.disabled"
              ></el-option>
            </el-select>
          </el-form-item>
          </el-col>
        </el-row>
        <el-row :gutter="30">
          <el-col :span="12">
            <el-form-item label="整套面积" prop="houseArea">
              <el-input v-model="form.houseArea" placeholder="请输入整套面积" />
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="出租房间" prop="roomType">
              <el-select
                v-model="form.roomType"
                placeholder="请选择出租房间"
                clearable
                :style="{ width: '100%' }"
              >
                <el-option
                  v-for="(item, index) in roomTypeOptions"
                  :key="index"
                  :label="item.label"
                  :value="item.value"
                  :disabled="item.disabled"
                ></el-option>
              </el-select> </el-form-item
            ></el-col>
        </el-row>
        <el-row :gutter="30">
          <el-col :span="12"
          ><el-form-item label="房屋面积" prop="roomArea">
            <el-input v-model="form.roomArea" placeholder="请输入房屋面积" />
          </el-form-item>
          </el-col>
          <el-col :span="12"
          ><el-form-item label="朝向" prop="direction">
            <el-select
              v-model="form.direction"
              placeholder="请选择朝向"
              clearable
              :style="{ width: '100%' }"
            >
              <el-option
                v-for="(item, index) in directionOptions"
                :key="index"
                :label="item.label"
                :value="item.value"
                :disabled="item.disabled"
              ></el-option>
            </el-select>
          </el-form-item>
          </el-col>
        </el-row>
        <el-row :gutter="30">
          <el-col :span="12">
            <el-form-item label="装修" prop="decoration">
              <el-select
                v-model="form.decoration"
                placeholder="请选择装修"
                clearable
                :style="{ width: '100%' }"
              >
                <el-option
                  v-for="(item, index) in decorationOptions"
                  :key="index"
                  :label="item.label"
                  :value="item.value"
                  :disabled="item.disabled"
                ></el-option>
              </el-select>
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="租金" prop="price">
              <el-input v-model="form.price" placeholder="请输入租金" />
            </el-form-item>
          </el-col>
        </el-row>
        <el-row :gutter="30">
          <el-col :span="12">
            <el-form-item label="起租日期" prop="startDate">
              <el-date-picker
                clearable
                size="small"
                v-model="form.startDate"
                type="datetime"
                format="YYYY-MM-DD HH:mm:ss"
                value-format="YYYY-MM-DD HH:mm:ss"
                placeholder="选择起租日期"
                style="width: 100%"
              >
              </el-date-picker> </el-form-item
            ></el-col>
          <el-col :span="12">
            <el-form-item label="房源描述" prop="introduce">
              <el-input
                v-model="form.introduce"
                placeholder="请输入房源描述"

                :style="{ width: '100%' }"
              ></el-input> </el-form-item
            ></el-col>
        </el-row>
        <el-row :gutter="30">
          <el-col :span="12">
            <el-form-item label="房源小区" prop="villageName">
              <el-select
                v-model="form.villageName"
                placeholder="请选择房源小区"
                clearable
                :style="{ width: '100%' }"
                @change="changeVillage"
              >
                <el-option
                  v-for="(item, index) in houseVillageList"
                  :key="index"
                  :label="item.name"
                  :value="{ value: item.id, label: item.name }"
                  :disabled="item.disabled"
                ></el-option>
              </el-select>
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="详细地址" prop="address">
              <el-input
                v-model="form.address"
                placeholder="请输入详细地址"
              /> </el-form-item
            ></el-col>
        </el-row>
        <el-row :gutter="30">
          <el-col :span="12">
            <el-form-item label="房牌号" prop="houseNo">
              <el-input v-model="form.houseNo" placeholder="请输入房牌号" />
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="门牌号" prop="roomCode">
              <el-input v-model="form.roomCode" placeholder="请输入门牌号" />
            </el-form-item>
          </el-col>
        </el-row>
        <el-row :gutter="30">
          <el-col :span="12">
            <el-form-item label="房东姓名" prop="ownerName">
              <el-input
                v-model="form.ownerName"
                placeholder="请输入房东姓名"
              /> </el-form-item
            ></el-col>
          <el-col :span="12">
            <el-form-item label="房东电话" prop="owerPhone">
              <el-input
                v-model="form.owerPhone"
                placeholder="请输入房东电话"
              /> </el-form-item
            ></el-col>
        </el-row>
        <el-row :gutter="30">
          <el-col :span="24">
            <el-form-item label="备注" prop="remark">
              <el-input
                v-model="form.remark"
                placeholder="请输入备注"
              /> </el-form-item
            ></el-col>
        </el-row>
        <el-row :gutter="10">
          <el-col :span="24">
            <el-form-item label="房源亮点" prop="featureList">
              <el-checkbox-group v-model="featureList">
                <el-checkbox label="看房方便"></el-checkbox>
                <el-checkbox label="独卫"></el-checkbox>
                <el-checkbox label="独立阳台"></el-checkbox>
                <el-checkbox label="智能锁"></el-checkbox>
                <el-checkbox label="可短租"></el-checkbox>
                <el-checkbox label="首次出租"></el-checkbox>
                <el-checkbox label="免物业费"></el-checkbox>
                <el-checkbox label="民用水电"></el-checkbox>
              </el-checkbox-group>
            </el-form-item>
          </el-col>
        </el-row>
        <el-row :gutter="10">
          <el-col :span="24">
            <el-form-item label="房源图片" prop="imageList">
              <image-upload v-model="imageList" :limit="9" />
            </el-form-item>
          </el-col>
        </el-row>
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
import { listVillage } from "@/api/core/village";
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
// 房源亮点
let featureList = ref([]);
// 房源图片
const imageList = ref([]);
// 小区列表
const houseVillageList = ref([]);
const houseNumOptions = ref([
  {
    label: "一室",
    value: "一室",
  },
  {
    label: "二室",
    value: "二室",
  },
  {
    label: "三室",
    value: "三室",
  },
  {
    label: "四室",
    value: "四室",
  },
]);
const typeOptions = ref([
  {
    label: "整租",
    value: 0,
  },
  {
    label: "合租",
    value: 1,
  },
]);
const houseHallOptions = ref([
  {
    label: "一厅",
    value: "一厅",
  },
  {
    label: "二厅",
    value: "二厅",
  },
]);
const toiletNumOptions = ref([
  {
    label: "一卫",
    value: "一卫",
  },
  {
    label: "二卫",
    value: "二卫",
  },
]);
const roomTypeOptions = ref([
  {
    label: "主卧",
    value: 1,
  },
  {
    label: "次卧",
    value: 2,
  }
]);
const directionOptions = ref([
  {
    label: "东",
    value: "东",
  },
  {
    label: "南",
    value: "南",
  },
  {
    label: "西",
    value: "西",
  },
  {
    label: "北",
    value: "北",
  }
]);
const decorationOptions = ref([
  {
    label: "简装",
    value: "简装",
  },
  {
    label: "中装",
    value: "中装",
  },
  {
    label: "精装修",
    value: "精装修",
  },
  {
    label: "豪装",
    value: "豪装",
  }
]);
const stepTypeOptions = ref([
  {
    label: "电梯房",
    value: "电梯房",
  },
  {
    label: "楼梯房",
    value: "楼梯房",
  },
]);
const data = reactive({
  queryParams: {
    pageNum: 1,
    pageSize: 20,
    orderByColumn: "create_time",
    isAsc: "desc",
    direction: undefined,
    decoration: undefined,
    price: undefined,
    villageName: undefined,
    agentName: null,
    agentPhone: undefined
  },
  // 表单参数
  form: {},
  // 表单校验
  rules: {
    // type: [
    //   {required: true, message: "请选择类型", trigger: "change",},
    // ],
    // houseNum: [
    //   { required: true, message: "居室不能为空", trigger: "blur" },
    // ],
    // // houseHall: [
    // //   { required: true, message: "厅室不能为空", trigger: "blur" },
    // // ],
    // // toiletNum: [
    // //   { required: true, message: "卫生间不能为空", trigger: "blur" },
    // // ],
    // houseNo: [
    //   { required: true, message: "房牌号不能为空", trigger: "blur" },
    // ],
    // // direction: [
    // //   { required: true, message: "朝向不能为空", trigger: "blur" },
    // // ],
    // decoration: [
    //   { required: true, message: "装修不能为空", trigger: "blur" },
    // ],
    // price: [{ required: true, message: "租金不能为空", trigger: "blur" }],
    // startDate: [
    //   { required: true, message: "起租日期不能为空", trigger: "blur" },
    // ],
    // villageName: [
    //   { required: true, message: "小区名称不能为空", trigger: "blur" },
    // ],
    // ownerName: [
    //   { required: true, message: "房东姓名不能为空", trigger: "blur" },
    // ],
    // owerPhone: [
    //   { required: true, message: "房东电话不能为空", trigger: "blur" },
    // ]
  }
});

const { queryParams, form, rules } = toRefs(data);

function changeVillage(params) {
  const { value, label } = params;
  form.value.villageId = value;
  form.value.villageName = label;
}
function getList() {
  loading.value = true;
  listRoom(queryParams.value).then(response => {
    roomList.value = response.rows;
    total.value = response.total;
    loading.value = false;
  });
}
// 获取小区列表
function getVillageList() {
  listVillage().then(response => {
    houseVillageList.value = response.rows;
  });
}
getVillageList();
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
  featureList.value = [];
  imageList.value = [];
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

      if (featureList.value && featureList.value.length > 0) {
        // 将featureList的内容存到form中

        form.value.featureList = featureList.value.map((val) => {
          return{
            feature: val,
          }
        });
      } else {
        proxy.$modal.msgWarning("请选择房源亮点");
      }

      if (form.imageList) {
        form.imageList = form.imageList.split(",").map((val) => ({
          imageName: val.split("/")[6],
          imagePath: val,
          imgUrl: val,
          imageSize: -1,
        }));
        //this.form.imageList = imageList;
      } else {
        proxy.$modal.msgWarning("请选择房源图片");
      }

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
function typeFormatter(row, column) {
  if (row.type == 0) {
    return "整租";
  } else if (row.type == 1) {
    return "合租";
  }
}
function roomTypeFormatter(row, column) {
  if (row.roomType == 1) {
    return "主卧";
  } else if (row.roomType == 2) {
    return "次卧";
  }
}
function stateFormatter(row, column) {
  if (row.state == 0) {
    return "待审核";
  } else if (row.state == 1) {
    return "待出租";
  } else if (row.state == 2) {
    return "已出租";
  } else if (row.state == 3) {
    return "已下架";
  }
}
getList()
</script>
