<template>
  <div class="page-content vaccine-list">
        <div class="vaccine-list">
          <el-divider  content-position="left" >
            <span> 疫苗信息 </span>
          </el-divider>
          <el-row>
            <el-col
              v-for="(vaccine, index) in vaccineList" :key="index"
              :span="4"
            >
              <div style="height: 100%;">
                <router-link :to="'/vaccine-detail/' + vaccine.id">
                  <el-card :body-style="{ padding: '10px' }">
                    <img :src="getServerUrl()+'vaccineImage'+vaccine.imgUrl" alt="vaccine-image" class="vaccine-image"/>
                    <div style="padding: 10px;font-size: 14px">
                      <div>疫苗名称：{{ vaccine.name }} </div>
                      <div>疫苗厂家：{{ vaccine.manufacturer }} </div>
                      <div>价格：<span style="color: red;margin-left: 10px">{{ vaccine.price }}¥</span> </div>
                      <div>疫苗批次：{{ vaccine.batchNumber }} </div>
                      <div>疫苗分类：{{ vaccine.category }} </div>
                    </div>
                  </el-card>
                </router-link>
              </div>
            </el-col>
          </el-row>
        </div>

  </div>
</template>
<script setup name="VaccinationProject">

const { proxy } = getCurrentInstance();
const vaccineList = ref([]);
import {getServerUrl} from "@/utils/request";
import {listVaccine} from "@/api/vaccine/vaccine";

function getVaccineList() {
  listVaccine().then(response => {
    vaccineList.value = response.rows;

  });
}
// 获取疫苗信息
getVaccineList();
</script>


<style scoped lang="scss">
.page-content {
  height: 100vh;
  padding: 20px;
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
