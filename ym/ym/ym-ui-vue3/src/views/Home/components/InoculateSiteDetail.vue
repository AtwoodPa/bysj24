<template>
  <div class="vaccine-detail">
    <!-- 上部分 -->
    <div class="top-section">
      <!-- 左侧商品图片 -->
      <div class="left-section">
        <!-- 返回按钮容器 -->
        <div class="back-button-container">
          <button @click="goBack"><el-icon><CaretLeft /></el-icon></button>
        </div>
        <img :src="getServerUrl() + 'inoculateSiteImage' + vaccine.imgUrl" alt="vaccine-image" class="vaccine-image"/>
      </div>
      <!-- 右侧商品信息 -->
      <div class="right-section">
        <h1>{{ vaccine.name }}</h1>
        <div>
          <span style="color: #3d4147;">医院地址:</span>
          <span style="margin-left: 10px">{{ vaccine.address }}</span>
        </div>
        <div>
          <span style="color: #3d4147;">联系方式:</span>
          <span style="margin-left: 10px">{{ vaccine.contact }}</span>
        </div>
      </div>
    </div>


  </div>
</template>

<script setup name="VaccineDetail">
import {getServerUrl} from "@/utils/request";
import {getInoculateSite} from "@/api/vaccine/inoculateSite";
const { proxy } = getCurrentInstance();
// 路由信息
import { useRoute,useRouter } from "vue-router";
import {onMounted} from "vue";

const vaccine = ref([]);
// 实例化路由
const router = useRouter();
// 路由信息
const route = useRoute();
// 页面加载时的钩子函数
onMounted(() => {
  const id = route.params.id;// url中的id信息
  getVaccineDetail(id);
})
// getVaccine
function getVaccineDetail(id){
  getInoculateSite(id).then(resp => {
   vaccine.value = resp.data
   console.log(vaccine)
 })
}

// 定义返回函数
const goBack = () => {
  router.back(); // 使用Vue Router的back方法返回上一页
};
</script>
<style scoped>
/* 样式 */
.vaccine-detail {
  /* 整体样式，居中显示数据，灰色背景圆角边框 */
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  background-color: #f5f5f5; /* 灰色背景 */
  border-radius: 10px; /* 圆角边框 */
  padding: 20px; /* 内边距 */
  box-sizing: border-box; /* 盒模型设置 */
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
  /* 右侧样式 */
  width: 50%; /* 设置信息宽度 */
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

.right-section .address {
  /* 价格字体样式 */
  font-weight: bold; /* 价格加粗 */
  color: #ff0000; /* 价格字体颜色，比如红色 */
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
</style>
