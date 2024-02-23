<template>
  <div class="app-container home">
    <el-row :gutter="20">
      <el-col :sm="24" :lg="12" style="padding-left: 20px">
        <h2>疫苗预约管理系统</h2>

        <p>
          <b>当前版本:</b> <span>v{{ version }}</span>
        </p>
        <!--为echarts准备一个具备大小的容器dom-->

      </el-col>
    </el-row>
    <el-divider/>
    <el-row>
      <el-col :span="12" class="card-box">
        <el-card>
          <template #header><PieChart style="width: 1em; height: 1em; vertical-align: middle;" /> <span style="vertical-align: middle;">疫苗库存占比</span></template>
          <div class="el-table el-table--enable-row-hover el-table--medium">
            <div ref="chartContainerLeft" style="height: 420px" />
          </div>
        </el-card>
      </el-col>
      <el-col :span="12" class="card-box">
        <el-card>
          <template #header><Odometer style="width: 1em; height: 1em; vertical-align: middle;" /> <span style="vertical-align: middle;">数据库柱状图</span></template>
          <div class="el-table el-table--enable-row-hover el-table--medium">
            <div ref="chartContainerRight" style="height: 420px" />
          </div>
        </el-card>
      </el-col>
    </el-row>
    <el-card shadow="always" class="thecard">
      <template #header><Edit style="width: 1em; height: 1em; vertical-align: middle;" /> <span style="vertical-align: middle;">数据统计</span></template>
      <div class="el-table el-table--enable-row-hover el-table--medium">
        <div ref="tablesContainer" style="height: 420px" />
      </div>
    </el-card>


<!--    <el-card shadow="always" class="thecard" id="chart"></el-card>-->

  </div>
</template>

<script setup name="Index">
import * as echarts from "echarts";
import {onMounted, ref} from "vue";

const version = ref('1.0.0')
const dataTest = ref([
  {value: 1048, name: "减毒疫苗"},
  {value: 735, name: "灭活疫苗"},
  {value: 580, name: "核酸疫苗"},
  {value: 484, name: "亚单位疫苗"},
  {value: 484, name: "病毒样颗粒疫苗"},
  {value: 300, name: "病毒载体疫苗"},
])
const chartContainerLeft = ref(null);
const chartContainerRight = ref(null);
const tablesContainer = ref(null);
let chartInstance = null;
const {proxy} = getCurrentInstance();
function initChart(){
  chartInstance = echarts.init(chartContainerLeft.value);

  // 配置项
  const option = {
    //设置标题,副标题,以及标题位置居中
    title: {
      text: "疫苗种类库存占比",
      subtext: "(饼状图)",
      top: 20,
      x: "center",
    },
    //具体点击某一项触发的样式内容
    tooltip: {
      trigger: "item",
      //formatter: "{a} <br/>{b} : {c} ({d}%)"
      formatter: "{b} : {c} ({d}%)",
    },
    //左上侧分类条形符
    // legend: {
    //   orient: "vertical",
    //   x: "left",
    //   data: this.opinion,
    // },
    //饼状图类型以及数据源
    series: [
      {
        name: "统计数量",
        type: "pie",
        radius: "50%",
        center: ["50%", "50%"],
        data: [
          {value: 1048, name: "减毒疫苗"},
          {value: 735, name: "灭活疫苗"},
          {value: 580, name: "核酸疫苗"},
          {value: 484, name: "亚单位疫苗"},
          {value: 484, name: "病毒样颗粒疫苗"},
          {value: 300, name: "病毒载体疫苗"},
        ],
      },
    ],
  };

  // 使用配置项设置图表
  chartInstance.setOption(option);
}
function initTables(){
  chartInstance = echarts.init(tablesContainer.value);

  // 配置项
  const option = {
    tooltip: {
      trigger: 'axis',
      axisPointer: {
        type: 'cross',
        crossStyle: {
          color: '#999'
        }
      }
    },
    toolbox: {
      feature: {
        dataView: {show: true, readOnly: false},
        magicType: {show: true, type: ['line', 'bar']},
        restore: {show: true},
        saveAsImage: {show: true}
      }
    },
    legend: {
      data: ['Evaporation', 'Precipitation', 'Temperature']
    },
    xAxis: [
      {
        type: 'category',
        data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
        axisPointer: {
          type: 'shadow'
        }
      }
    ],
    yAxis: [
      {
        type: 'value',
        name: 'Precipitation',
        min: 0,
        max: 250,
        interval: 50,
        axisLabel: {
          formatter: '{value} ml'
        }
      },
      {
        type: 'value',
        name: 'Temperature',
        min: 0,
        max: 25,
        interval: 5,
        axisLabel: {
          formatter: '{value} °C'
        }
      }
    ],
    series: [
      {
        name: 'Evaporation',
        type: 'bar',
        tooltip: {
          valueFormatter: function (value) {
            return value + ' ml';
          }
        },
        data: [
          2.0, 4.9, 7.0, 23.2, 25.6, 76.7, 135.6, 162.2, 32.6, 20.0, 6.4, 3.3
        ]
      },
      {
        name: 'Precipitation',
        type: 'bar',
        tooltip: {
          valueFormatter: function (value) {
            return value + ' ml';
          }
        },
        data: [
          2.6, 5.9, 9.0, 26.4, 28.7, 70.7, 175.6, 182.2, 48.7, 18.8, 6.0, 2.3
        ]
      },
      {
        name: 'Temperature',
        type: 'line',
        yAxisIndex: 1,
        tooltip: {
          valueFormatter: function (value) {
            return value + ' °C';
          }
        },
        data: [2.0, 2.2, 3.3, 4.5, 6.3, 10.2, 20.3, 23.4, 23.0, 16.5, 12.0, 6.2]
      }
    ]
  };

  // 使用配置项设置图表
  chartInstance.setOption(option);
}
function initChartRight(){
  chartInstance = echarts.init(chartContainerRight.value);

  // 配置项
  const option = {
    title: {
      text: "数据库柱状图",
      x: "center",
    },
    //具体点击某一项触发的样式内容
    tooltip: {
      trigger: "item",
    },
    xAxis: {
      type: "category",
      data: ["用户数量", "接种数量", "预约数量", "公告数量", "论坛数量", "评论数量"],
    },
    yAxis: {
      type: "value",
    },
    series: [
      {
        data: [120, 200, 150, 80, 70, 110],
        type: "bar",
      },
    ],
  };

  // 使用配置项设置图表
  chartInstance.setOption(option);
}
onMounted(() => {
  initChart();
  initChartRight();
  initTables()
})


function goTarget(url) {
  window.open(url, '__blank')
}
// data1();
</script>

<style scoped lang="scss">
.card {
  height: 400px;
  width: 90%;
  margin: auto;
  margin-top: 10px;
}

.thecard {
  height: 500px;
  width: 95%;
  margin: auto;
  margin-top: 10px;
}

.home {
  blockquote {
    padding: 10px 20px;
    margin: 0 0 20px;
    font-size: 17.5px;
    border-left: 5px solid #eee;
  }

  hr {
    margin-top: 20px;
    margin-bottom: 20px;
    border: 0;
    border-top: 1px solid #eee;
  }

  .col-item {
    margin-bottom: 20px;
  }

  ul {
    padding: 0;
    margin: 0;
  }

  font-family: "open sans", "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-size: 13px;
  color: #676a6c;
  overflow-x: hidden;

  ul {
    list-style-type: none;
  }

  h4 {
    margin-top: 0px;
  }

  h2 {
    margin-top: 10px;
    font-size: 26px;
    font-weight: 100;
  }

  p {
    margin-top: 10px;

    b {
      font-weight: 700;
    }
  }

  .update-log {
    ol {
      display: block;
      list-style-type: decimal;
      margin-block-start: 1em;
      margin-block-end: 1em;
      margin-inline-start: 0;
      margin-inline-end: 0;
      padding-inline-start: 40px;
    }
  }
}
</style>

