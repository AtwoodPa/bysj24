<template>
  <div class="vaccine-detail">
    <!-- 上部分 -->
    <div class="top-section">
      <!-- 左侧商品图片 -->
      <div class="left-section">
        <!-- 返回按钮容器 -->
        <div class="back-button-container">
          <button @click="goBack">
            <el-icon>
              <CaretLeft/>
            </el-icon>
          </button>
        </div>
        <img :src="getServerUrl() + 'vaccineImage' + vaccine.imgUrl" alt="vaccine-image" class="vaccine-image"/>
      </div>
      <!-- 右侧商品信息 -->
      <div class="right-section">
        <h1>{{ vaccine.name }}</h1>
        <p class="vaccine-info-item" >价格: <span class="price vaccine-info-item">{{ vaccine.price }}¥</span></p>

        <div class="vaccine-info-item">疫苗批次：{{ vaccine.batchNumber }}</div>
        <div class="vaccine-info-item">疫苗分类：{{ vaccine.category }}</div>
        <div class="vaccine-info-item">库存剩余：{{ vaccine.amount }} </div>

        <p class="vaccine-info-item" >详情描述: <span class="vaccine-info-item" >{{ vaccine.detail }}</span></p>
        <!-- 添加预约按钮 -->
        <div class="appointment-button-container">
          <el-button class="appointment-button" @click="handleAppointment" type="primary">
            <el-icon>
              <Pointer/>
            </el-icon>
            <span>在线预约</span>
          </el-button>
        </div>
      </div>
    </div>
    <!-- 预约弹窗（点击在线预约按钮，弹出窗口提交表单，使用el-dialog 实现） -->
    <el-dialog
      title="预约疫苗"
      v-model="dialogVisible"
      width="50%"
      style="border-radius: 20px"
      append-to-body
      @close="cancelAppointment"
    >
      <!-- 预约表单 -->
      <el-form :model="form" ref="appointForm" :rules="rules" label-width="300px" >
        <el-form-item  label="预约时间" prop="appointDate">
          <el-col  :span="8">
            <el-date-picker
              v-model="form.appointDate"
              type="datetime"
              format="YYYY-MM-DD HH:mm:ss"
              value-format="YYYY-MM-DD HH:mm:ss"
              placeholder="选择日期"
              style="width: 100%"
            ></el-date-picker>
          </el-col>
          <el-col style="text-align: center" :span="1">-</el-col>
          <el-col :span="5">
            <el-select v-model="form.timeSlot" placeholder="请选择时间段" prop="timeSlot">
              <el-option
                v-for="item in options"
                :key="item.value"
                :label="item.label"
                :value="item.value"
              ></el-option>
            </el-select>
          </el-col>
        </el-form-item>
        <el-form-item label="接种针剂" prop="whichPin">
          <el-select
            v-model="form.whichPin"
            placeholder="请选择第几针"
            size="default"
            style="width: 240px"
          >
            <el-option
              v-for="item in options2"
              :key="item.value"
              :label="item.label"
              :value="item.value"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="接种地点" prop="inoculateSiteId">
          <el-select
            v-model="form.inoculateSiteId"
            placeholder="请选择接种地点"
            size="default"
            style="width: 240px"
          >
            <el-option
              v-for="item in address"
              :key="item.key"
              :label="item.value"
              :value="item.key"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="接种疫苗" prop="vaccineId">
          <el-select
            v-model="form.vaccineId"
            placeholder="请选择接种疫苗"
            size="default"
            style="width: 240px"
          >
            <el-option
              v-for="item in vaccines"
              :key="item.key"
              :label="item.value"
              :value="item.key"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item >
          <el-button @click="dialogVisible = false">取消</el-button>
          <el-button type="primary" @click="submitAppointment">提交</el-button>
        </el-form-item>
      </el-form>
    </el-dialog>
  </div>
</template>

<script setup name="VaccineDetail">
import {getAppointAddress, getVaccines, addAppoint} from '@/api/vaccine/appoint'
import {getServerUrl} from "@/utils/request";
import {getVaccine} from "@/api/vaccine/vaccine";

const {proxy} = getCurrentInstance();
const options = ref([
  {
    value: '上午',
    lable: '上午',
  },
  {
    value: '下午',
    lable: '下午',
  }]);
const options2 = ref([
  {
    value: '第一针',
    lable: '第一针',
  },
  {
    value: '第二针',
    lable: '第二针',
  }]);
const address = ref([]);
const vaccines = ref([]);

// 路由信息
import {useRoute, useRouter} from "vue-router";
import {onMounted} from "vue";

const buttonLoading = ref(false);
// 定义弹窗显示状态
const dialogVisible = ref(false);
const vaccine = ref([]);
// 实例化路由
const router = useRouter();
// 路由信息
const route = useRoute();
const data = reactive({
  form: {
    appointDate: '',
    timeSlot: '',
    whichPin: '',
    inoculateSiteId: '',
    vaccineId: '',
  },
  rules: {
    appointDate: [
      { required: true, message: "预约日期不能为空", trigger: "blur" }
    ],
    timeSlot: [
      { required: true, message: "时间段不能为空", trigger: "blur" }
    ],
    inoculateSiteId: [
      { required: true, message: "接种站点信息不能为空", trigger: "blur" }
    ],
    vaccineId: [
      { required: true, message: "疫苗信息不能为空", trigger: "blur" }
    ],
    whichPin: [
      { required: true, message: "第几针不能为空", trigger: "blur" }
    ],
  }
});

const {form,rules} = toRefs(data);
// 页面加载时的钩子函数
onMounted(() => {
  const id = route.params.id;// url中的id信息
  getVaccineDetail(id);
})

function getInoculateSite() {
  getAppointAddress().then(resp => {
    address.value = resp
  })
}

function getVaccineList() {
  getVaccines().then(response => {
    vaccines.value = response
  })
}

// getVaccine
function getVaccineDetail(id) {
  getVaccine(id).then(resp => {
    vaccine.value = resp.data
    console.log(vaccine)
  })
}

function handleAppointment() {
  dialogVisible.value = true; // 显示弹窗
  // 在这里处理预约逻辑
  // 例如，你可以发送一个请求到后端来预约疫苗
  const id = route.params.id;
  console.log(id)
  console.log('预约按钮被点击');
}

function cancelAppointment() {
  dialogVisible.value = false;

}

function submitAppointment() {
  proxy.$refs["appointForm"].validate(valid => {
    if (valid) {
      addAppoint(form.value).then(response => {
        if (response) {
          proxy.$modal.msgSuccess("预约成功");
          reset();
          dialogVisible.value = false;
        }
      });
    }

  });
  // 提交成功，关闭弹窗

}

function cancel() {
  open.value = false;
  reset();
}

function reset() {
  form.value = {
    appointDate: undefined,
    timeSlot: undefined,
    whichPin: undefined,
    inoculateSiteId: undefined,
    vaccineId: undefined,
  };
  proxy.resetForm["appointForm"];
}

// 定义返回函数
const goBack = () => {
  router.back(); // 使用Vue Router的back方法返回上一页
};
// 获取接种站点数据
getInoculateSite();
// 获取疫苗信息数据
getVaccineList();
</script>
<style scoped>
/* 样式 */
.vaccine-detail {
  /* 整体样式，居中显示数据，灰色背景圆角边框 */
  display: flex;
  flex-direction: column;
  //background-color: #f5f5f5; /* 灰色背景 */
  border-radius: 10px; /* 圆角边框 */
  padding: 20px; /* 内边距 */
  box-sizing: border-box; /* 盒模型设置 */
  height: 100vh;
  margin-left: 300px;
  margin-right: 300px;
}

.top-section {
  /* 上部分样式 */
  display: flex;
  justify-content: space-between; /* 左右两侧元素间距相等 */
  margin-bottom: 20px; /* 下方外边距 */
}

.left-section {
  /* 左侧样式 */
  position: relative; /* 相对定位，用于定位按钮容器 */
  width: 45%; /* 设置图片宽度 */
}

.vaccine-image {
  /* 图片样式 */
  width: 100%; /* 图片宽度100% */
  height: auto; /* 图片高度自适应 */
  border-radius: 10px; /* 图片圆角 */
  object-fit: cover; /* 图片保持宽高比，不变形 */
}

.right-section {
  /* 调整右侧商品信息的样式 */
  flex: 2;
  padding-left: 20px;
}

.right-section h2 {
  /* 标题样式 */
  margin-bottom: 10px; /* 标题下方外边距 */
  font-size: 18px; /* 标题字体大小 */
  font-weight: bold; /* 标题加粗 */
}

.right-section p {
  /* 价格信息样式 */
  margin-bottom: 5px; /* 价格信息下方外边距 */
}

.right-section div {
  width: 40%;
  /* 价格信息样式 */
  margin-bottom: 5px; /* 价格信息下方外边距 */
}

.right-section .price {
  /* 价格字体样式 */
  font-weight: bold; /* 价格加粗 */
  color: #ff0000; /* 价格字体颜色，比如红色 */
}

.bottom-section {
  /* 下部分样式 */
  /* 根据需要添加样式，比如内边距等 */
  padding: 20px;
}

.bottom-section h3 {
  /* 商品详情描述标题样式 */
  font-size: 16px;
  font-weight: bold;
  margin-bottom: 10px;
}

.bottom-section p {
  /* 商品详情描述段落样式 */
  line-height: 1.5; /* 行高设置 */
  margin-bottom: 15px; /* 段落下方外边距 */
}

.back-button-container {
  position: absolute; /* 绝对定位，相对于 .left-section 定位 */
  top: 10px; /* 距离顶部的位置 */
  left: 10px; /* 距离左侧的位置 */
  z-index: 1; /* 确保按钮在图片之上 */
}

.back-button-container button {
  /* 按钮样式 */
  padding: 5px 10px;
  background-color: #fff;
  border: none;
  border-radius: 32px;
  cursor: pointer;
  color: #333;
  font-size: 14px;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}
.vaccine-info-item {
  padding: 5px 0;
  font-size: 14px;
  color: #666666;
  font-weight: bold;
}
.appointment-button-container {
  /* 调整预约按钮容器的样式 */
  margin-top: 20px;
}

.appointment-button {
  font-size: 18px;
  height: 40px;
}


</style>
