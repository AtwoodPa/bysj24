<template>
  <div class="wrap">
    <el-card class="box-card">
      <div slot="header" class="clearfix">
        <span>疫苗在线预约</span>
      </div>
      <el-form :model="form" label-width="80px">
        <el-form-item label="预约时间">
          <el-col :span="5">
            <el-date-picker
              v-model="form.appointDate"
              type="date"
              placeholder="选择日期"
              style="width: 100%"
            ></el-date-picker>
          </el-col>
          <el-col style="text-align: center" :span="1">-</el-col>
          <el-col :span="5">
            <el-select v-model="form.time" placeholder="请选择时间段">
              <el-option
                v-for="item in options"
                :key="item.value"
                :label="item.label"
                :value="item.value"
              ></el-option>
            </el-select>
          </el-col>
        </el-form-item>
        <el-form-item label="接种针剂">
          <el-select
            v-model="form.whichPin"
            placeholder="请选择"
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
        <el-form-item label="接种地点">
          <el-select
            v-model="form.appointSite"
            placeholder="请选择"
            size="default"
            style="width: 340px"
          >
            <el-option
              v-for="item in address"
              :key="item.inoculateSiteId"
              :label="item.inoculateSiteAddress"
              :value="item.inoculateSiteId"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="接种疫苗">
          <el-select
            v-model="form.vaccine"
            placeholder="请选择"
            size="default"
            style="width: 340px"
          >
            <el-option
              v-for="item in vaccines"
              :key="item.vaccineId"
              :label="item.vaccineName"
              :value="item.vaccineId"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item>
          <el-button type="primary" @click="onSubmit">立即预约</el-button>
        </el-form-item>
      </el-form>
    </el-card>
  </div>
</template>

<script setup name="AppointOnline">
import {getAppointAddress, getVaccines, addAppoint} from '@/api/vaccine/appoint'

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

const data = reactive({
  form: {
    appointDate: '',
    time: '',
    whichPin: '',
    appointSite: '',
    vaccine: '',
  }
});
const {  form  } = toRefs(data);

function onSubmit(){

}

function getInoculateSite(){

}

function getVaccine(){

}
// 获取接种站点数据
getInoculateSite();
// 获取疫苗信息数据
getVaccine();
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<!--使用了scoped属性之后，父组件的style样式将不会渗透到子组件中，-->
<!--然而子组件的根节点元素会同时被设置了scoped的父css样式和设置了scoped的子css样式影响，-->
<!--这么设计的目的是父组件可以对子组件根元素进行布局。-->
<style scoped>
.wrap {
  /* text-align: center; */
}

.box-card {
  min-width: 340px;
  /* display: flex; */
}

.clearfix {
  margin-left: 10px;
  margin-bottom: 20px;
}

.clearfix:before,
.clearfix:after {
  display: table;
  content: '';
}

.clearfix:after {
  clear: both;
}
</style>
