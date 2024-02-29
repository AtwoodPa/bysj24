<template>
  <div class="page-content vaccine-list">
    <!--  使用el-carousel展示图片  -->
    <div style="margin-top: 10px">
      <el-carousel type="card" :interval="2000" trigger="click" height="350px" >
        <el-carousel-item  v-for="item in carousels" :key="item">
          <img :src="item.image" alt="notice-image" style="width: 100%;height: 100%">
        </el-carousel-item>
      </el-carousel>
    </div>
    <div class="lr-container">

      <div class="c-left">
        <el-divider   >
          <span> 医院信息 </span>
        </el-divider>

        <el-row>
          <el-col
            v-for="(vaccine, index) in inoculateSiteList" :key="index"
            :span="8"
          >
            <div style="height: 100%;">
              <router-link :to="'/inoculate-site-detail/' + vaccine.id">
                <el-card  :body-style="{ padding: '10px' }">
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

      <div class="c-right">
        <el-divider  >
          <span> 公告中心 </span>
          <!-- <el-button class="thebutton" text>接种须知</el-button> -->
        </el-divider>
        <div class="cardlist">
          <el-timeline>
            <el-timeline-item
              v-for="notice in noticesLists"
              :key="notice.id"
              :timestamp="notice.createTime"
              type = primary
              hollow
            >
              <el-card >
                <h6>系统公告</h6>
                <el-collapse >
                  <el-collapse-item  :name="notice.id">
                    <template #title>
                      <h5>{{notice.noticeTitle}}</h5>
                    </template>
                    <div class="content">
                      <p>{{ notice.noticeContent }}</p>
                    </div>
                  </el-collapse-item></el-collapse>
              </el-card>
            </el-timeline-item>
          </el-timeline>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { listNotice } from "@/api/system/notice.js";
import { listInoculateSite } from "@/api/vaccine/inoculateSite";
import {getServerUrl} from "@/utils/request";
import {listVaccine} from "@/api/vaccine/vaccine";

const { proxy } = getCurrentInstance();
const inoculateSiteList = ref([]);
const vaccineList = ref([]);
const carousels = [
  { text: '公告1', image: 'https://file2.renrendoc.com/fileroot_temp3/2021-3/26/8179a26d-d3f9-479c-a5c9-89f38d2de3ec/8179a26d-d3f9-479c-a5c9-89f38d2de3ec5.gif' },
  { text: '公告2', image: 'https://img-qn-2.51miz.com/preview/muban/00/00/44/88/M-448844-BA8ED576.jpg' },
  { text: '公告3', image: 'https://p9.itc.cn/q_70/images03/20210923/27829eb7b0ba47ea86793d265dfb7f7c.jpeg' },
  { text: '公告4', image: 'https://img0.baidu.com/it/u=3642696431,462406593&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500' }
];
// 系统公告信息
const noticesLists = ref([]);

function noticesList(){
  listNotice().then(resp => {
    noticesLists.value = resp.rows
  })
}
function getInoculateSiteList() {

  listInoculateSite().then(response => {
    inoculateSiteList.value = response.rows;
  });
}
function getVaccineList() {

  listVaccine().then(response => {
    vaccineList.value = response.rows;

  });
}

// 获取系统公告
noticesList();
// 获取站点信息
getInoculateSiteList();
// 获取疫苗信息
getVaccineList();
</script>

<style scoped lang="scss">
.page-content {
  //height: 100vh;
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


.el-card__body {
  padding: 16px;
  font-size: 14px;
  color: #666;
}

.el-card__body div {
  margin-top: 8px;
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
.el-card {
  border-radius: 8px; /* 圆角 */
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1); /* 阴影效果 */
  background-color: #fff; /* 背景色 */
  transition: box-shadow 0.3s ease; /* 阴影过渡效果 */
  margin-bottom: 5px; /* 卡片间距 */
  margin-right: 5px;
}

.el-card:hover {
  box-shadow: 0 4px 16px rgba(0, 0, 0, 0.2);
}


.cardlist {
  width: 100%;
  //margin: auto;
  padding: 20px;
}
.cardlist h6 {
  font-weight: 500;
}
.cardlist h5 {
  font-size: 13px;
  line-height: 14px;
}
</style>
