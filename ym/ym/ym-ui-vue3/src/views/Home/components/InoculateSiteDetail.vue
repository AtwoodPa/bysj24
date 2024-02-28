<template>
  <div >
    <div class="site-detail">
      <!-- 上部分 -->
      <div class="top-section">
        <!-- 左侧商品图片 -->
        <div class="left-section">
          <!-- 返回按钮容器 -->
          <div class="back-button-container">
            <button @click="goBack"><el-icon><CaretLeft /></el-icon></button>
          </div>
          <img :src="getServerUrl() + 'inoculateSiteImage' + site.imgUrl" alt="site-image" class="site-image"/>
        </div>
        <!-- 右侧商品信息 -->
        <div class="right-section">
          <h1>{{ site.name }}</h1>
          <div>
            <span style="color: #3d4147;font-weight: bold;">医院地址:</span>
            <span style="margin-left: 10px">{{ site.address }}</span>
          </div>
          <div>
            <span style="color: #3d4147;font-weight: bold;">联系方式:</span>
            <span style="margin-left: 10px">{{ site.contact }}</span>
          </div>
        </div>
      </div>
    </div>
    <div class="bookable-title">可预约项目</div>

    <div class="vaccine-detail">
      <!-- 下部分（可接种疫苗项目）以卡片列表呈现 -->
      <div class="vaccine-list">
        <!--        水平依次排列-->
        <div
          v-for="(vaccine, index) in vaccines" :key="index">
          <div>
            <router-link :to="'/vaccine-detail/' + vaccine.id">
              <el-card class="vaccine-card">
                <img :src="getServerUrl()+'vaccineImage'+vaccine.imgUrl" alt="vaccine-image" class="vaccine-image"/>
                <div class="vaccine-card-body">
                  <div class="vaccine-info-title">疫苗名称：{{ vaccine.name }} </div>
                  <div class="vaccine-info-item">疫苗厂家：{{ vaccine.manufacturer }} </div>
                  <div class="vaccine-info-item">价格：<span class="vaccine-price">{{ vaccine.price }}¥</span> </div>
                  <div class="vaccine-info-item">疫苗批次：{{ vaccine.batchNumber }} </div>
                  <div class="vaccine-info-item">疫苗分类：{{ vaccine.category }} </div>
                </div>
              </el-card>
            </router-link>
          </div>
        </div>
      </div>
    </div>
  </div>

</template>

<script setup name="VaccineDetail">
import {getServerUrl} from "@/utils/request";
import {getInoculateSite,getVaccineBySiteId} from "@/api/vaccine/inoculateSite";
const { proxy } = getCurrentInstance();
// 路由信息
import { useRoute,useRouter } from "vue-router";
import {onMounted} from "vue";

const vaccines = ref([]);
const site = ref([]);
// 实例化路由
const router = useRouter();
// 路由信息
const route = useRoute();
// 页面加载时的钩子函数
onMounted(() => {
  const id = route.params.id;// url中的id信息
  getInoculateSiteDetail(id);
  // 根据id查询站点有哪些疫苗
  getVaccine(id);
})
// getVaccine
function getInoculateSiteDetail(id){
  getInoculateSite(id).then(resp => {
    site.value = resp.data
   console.log(site)
 })
}
function getVaccine(id){
  getVaccineBySiteId(id).then(resp => {
    // 数组数据
    vaccines.value = resp.data
    console.log(vaccines)
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
  display: flex;
  background-color: #f5f5f5; /* 灰色背景 */
  border-radius: 10px; /* 圆角边框 */
  padding: 20px; /* 内边距 */
  flex-wrap: wrap;
  box-sizing: border-box; /* 盒模型设置 */
  margin-left: 200px;
  margin-top: 10px;
  margin-right: 200px;
  height: 80vh;

}

.site-detail  {
  /* 整体样式，居中显示数据，灰色背景圆角边框 */
  display: flex;
  justify-content: flex-start;
  align-items: center;
  background-color: #f5f5f5; /* 灰色背景 */
  border-radius: 10px; /* 圆角边框 */
  padding: 20px; /* 内边距 */
  box-sizing: border-box; /* 盒模型设置 */
  margin-left: 200px;
  margin-right: 200px;
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
  width: 40%; /* 设置图片宽度 */
  height: 300px;
}
.site-image {
  height: 280px;
  width: 100%;
  border-radius: 8px 8px 8px 8px;
}



.right-section {
  width: 55%;
  font-size: 18px;

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
.el-card {
  border-radius: 8px; /* 圆角 */
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1); /* 阴影效果 */
  background-color: #fff; /* 背景色 */
  transition: box-shadow 0.3s ease; /* 阴影过渡效果 */
  margin-bottom: 5px; /* 卡片间距 */
}
.el-card:hover {
  box-shadow: 0 4px 16px rgba(0, 0, 0, 0.2);
}



.el-card__body {
  padding: 16px;
  font-size: 14px;
  color: #666;
}

.el-card__body div {
  margin-top: 8px;
}


/* 疫苗卡片容器样式 */
.vaccine-detail {
  /* 根据需要添加样式，如宽度、边距等 */
}

/* 疫苗卡片列表样式 */
.vaccine-list {
  display: flex;
  flex-wrap: wrap;
  justify-content: flex-start;
  gap: 10px; /* 卡片之间的间距 */

}

/* 疫苗卡片样式 */
.vaccine-card {
  width: 250px;
  border-radius: 10px;
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
  background-color: #ffffff;
  overflow: hidden;
  position: relative;
}

/* 疫苗卡片内部样式 */
.vaccine-card-body {
  padding: 10px;
  text-align: left;
}

/* 疫苗图片样式 */
.vaccine-image {
  width: 100%;
  height: 180px;
  border-radius: 8px;
}

/* 疫苗信息标题样式 */
.vaccine-info-title {
  margin: 0;
  font-size: 18px;
  color: #333333;
}

/* 疫苗信息列表样式 */
.vaccine-info-list {
  list-style: none;
  padding: 0;
  margin: 0;
}

/* 疫苗信息列表项样式 */
.vaccine-info-item {
  padding: 5px 0;
  font-size: 14px;
  color: #666666;
  font-weight: bold;

}

/* 疫苗价格样式 */
.vaccine-price {
  color: #ff0000;
  margin-left: 10px;
  font-weight: bold;
}

/* 可预约项目标题样式 */
.bookable-title {
  margin: 10px 0 10px 220px;
  color: #0068b7;
  font-weight: bold;
}



</style>
