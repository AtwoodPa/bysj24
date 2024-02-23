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
              <div style="width: 300px;height: 100%;">
                <router-link :to="'/vaccine-detail/' + vaccine.id">
                  <el-card :body-style="{ padding: '10px' }">
                    <img :src="getServerUrl()+'vaccineImage'+vaccine.imgUrl" alt="vaccine-image" class="vaccine-image"/>
                    <div style="padding: 10px;font-size: 14px">
                      <div>疫苗名称：{{ vaccine.name }} </div>
                      <div>疫苗厂家：{{ vaccine.manufacturer }} </div>
                      <div>价格：<span style="color: red;margin-left: 10px">{{ vaccine.price }}¥</span> </div>
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
  margin: 0 100px 0 100px;
}


.vaccine-list {
  margin-bottom: 20px;
}


.vaccine-image {
  //display: flex;
  //flex: 1;
  justify-content: center;
  align-items: center;
  height: 300px;
  width:250px;

}

</style>
