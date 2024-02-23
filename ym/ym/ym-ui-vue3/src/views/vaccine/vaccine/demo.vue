<template>
  <div ref="chartContainer" style="width: 100%; height: 400px;"></div>
</template>

<script>
import { ref, onMounted, onBeforeUnmount } from 'vue';
import * as echarts from 'echarts';

export default {
  name: 'Chart',
  setup() {
    const chartContainer = ref(null);
    let chartInstance = null;

    const initChart = () => {
      if (chartContainer.value) {
        chartInstance = echarts.init(chartContainer.value);

        // 配置项
        const option = {
          // 在这里配置你的图表
          title: {
            text: 'ECharts Vue 3 示例',
          },
          tooltip: {},
          xAxis: {
            data: ['A', 'B', 'C', 'D', 'E', 'F'],
          },
          yAxis: {},
          series: [
            {
              name: '数量',
              type: 'bar',
              data: [5, 20, 36, 10, 10, 20],
            },
          ],
        };

        // 使用配置项设置图表
        chartInstance.setOption(option);
      }
    };

    onMounted(initChart);
    onBeforeUnmount(() => {
      if (chartInstance) {
        chartInstance.dispose();
      }
    });

    return {
      chartContainer,
    };
  },
};
</script>

<style scoped>
/* 在这里添加你的样式 */
</style>
