<template>
  <div class="page-content vaccine-list">
    <el-divider   >
      <span> 医院信息 </span>
    </el-divider>
    <el-row>
      <el-col
        v-for="(vaccine, index) in inoculateSiteList" :key="index"
        :span="4"
      >
        <div style="height: 100%;">
          <router-link :to="'/inoculate-site-detail/' + vaccine.id">
            <el-card :body-style="{ padding: '10px' }">
              <img :src="getServerUrl()+'inoculateSiteImage'+vaccine.imgUrl" alt="vaccine-image" class="vaccine-image"/>
              <div style="padding: 10px;font-size: 14px">
                <div style="margin-top: 2px">医院名称：{{ vaccine.name }} </div>
                <div style="margin-top: 2px">医院地址：{{ vaccine.address }} </div>
                <div style="margin-top: 2px">联系方式：{{ vaccine.contact }} </div>
              </div>
            </el-card>
          </router-link>

        </div>

      </el-col>

    </el-row>
  </div>
</template>
<script setup name="InoculateSite">
import { listInoculateSite } from "@/api/vaccine/inoculateSite";
import {getServerUrl} from "@/utils/request";

const { proxy } = getCurrentInstance();
const inoculateSiteList = ref([]);
function getInoculateSiteList() {

  listInoculateSite().then(response => {
    inoculateSiteList.value = response.rows;
  });
}
getInoculateSiteList();
</script>


<style scoped lang="scss">
.page-content {
  height: 100vh;
  padding: 10px;
  margin: 0 50px 0 50px;
}


.vaccine-list {
  margin-bottom: 20px;
}


.vaccine-image {
  height: 200px;
  width: 100%;
  border-radius: 8px 8px 8px 8px;
}


.vaccine-info {
  display: flex;
  flex-wrap: wrap;
}

.vaccine-card {
  flex: 0 0 calc(33.33% - 200px);
  margin-top: 100px;
  margin-right: 20px;
  margin-bottom: 20px;
}

.vaccine-card img {
  width: 100%;
  height: auto;
}

.vaccine-card p {
  text-align: center;
}

.title {
  text-align: center;
  padding: 10px 0 10px 0;
  box-shadow : 0 0 0px rgba(255, 0, 0, .8);
  margin: 10px 0 20px 0;
  border-color: #82c4f8;
  color: #fff;
  border-radius: 32px;
  align-items: center;
  border-width: 0 10px;
  font-size: 16px;
  border-style: solid;
  background-color: #82c4f8;
}
.lr-container {
  display: flex;
}

.c-left {
  flex: 1; /* 左侧内容占据可用空间的比例，这里设为1表示占据剩余空间 */
}

.c-right {
  margin-left: 30px;
  flex: 1; /* 右侧内容占据可用空间的比例，这里设为1表示占据剩余空间 */
}
.cardlist {
  width: 100%;
  margin: auto;
  padding: 20px;
}
.cardlist h6 {
  font-weight: 500;
}
.cardlist h5 {
  font-size: 13px;
  line-height: 14px;
}
.el-card {
  border-radius: 8px; /* 圆角 */
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1); /* 阴影效果 */
  background-color: #fff; /* 背景色 */
  transition: box-shadow 0.3s ease; /* 阴影过渡效果 */
  margin-bottom: 5px; /* 卡片间距 */
  margin-right: 5px;
}

.el-card:hover {
  box-shadow: 0 4px 16px rgba(0, 0, 0, 0.2); /* 鼠标悬停时的阴影效果 */
}

</style>
