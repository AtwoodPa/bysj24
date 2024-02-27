<template>
  <div >
    <!--  左边返回按钮  -->
    <div class="return-button">
      <button @click="goBack">
        <el-icon>
          <CaretLeft/>
        </el-icon>
        <span>上一页</span>
      </button>
    </div>
    <div class="article-page">
<!--      右边文章详情-->
      <h1>{{ article.title }}</h1>
      <div class="article-meta">
        <span class="left">发布人: {{ article.publisher }}</span>
        <span class="right">{{ article.publish_time }}</span>
      </div>
      <div class="article-content">
        <div>
          <h3>接种疫苗的好处</h3>
          <ul>
            <li v-for="(benefit, index) in benefits" :key="index">
              {{ benefit }}
            </li>
          </ul>
        </div>

        <div>
          <h3>接种注意事项</h3>
          <ul>
            <li v-for="(instruction, index) in instructions" :key="index">
              {{ instruction }}
            </li>
          </ul>
        </div>

      </div>
      <div style="border: 1px solid #ccc;height: 70%;margin-top: 10px">
        <h3>疫苗知识详情</h3>
        <p v-if="article.content">{{ article.content }}</p>
        <div v-if="knowledge" class="vaccine-knowledge">
          <p>{{ knowledge }}</p>
        </div>
      </div>
    </div>
  </div>

</template>

<script setup name="VaccineKnowledgeDetail">
import { ref, onMounted, watch } from 'vue';
import { useRoute } from 'vue-router';
const route = useRoute();
// 实例化路由
const router = useRouter();
// 路由信息
const knowledgeId = route.params.knowledgeId;
const knowledgeItem = ref(null);
const article = ref({
  title: '文章标题',
  content: '文章正文内容',
  publish_time: '2023-04-01',
  publisher: '发布者姓名',
});

const benefits = ref([
  '好处1',
  '好处2',
  '好处3',
  // 更多好处...
]);

const instructions = ref([
  '接种前请告知医生您的健康状况和过敏史',
  '接种前请咨询医生，确保无过敏史',
  '接种前请确保身体健康，遵循医生建议'
  // 更多注意事项...
]);

const knowledge = ref('疫苗知识详情内容');
// 模拟从API获取数据
const fetchData = async () => {
  // const response = await fetch(`/api/vaccine-knowledge/${knowledgeId}`);
  // const data = await response.json();
  // knowledgeItem.value = data;
};

const goBack = () => {
  router.back(); // 使用Vue Router的back方法返回上一页
};
onMounted(() => {
  fetchData();
});

// watch(knowledgeId, (newId) => {
//   if (newId) {
//     fetchData();
//   }
// });
</script>

<style scoped>
.article-page {
  align-items: center;
  text-align: center; /* 文本对齐方式，如果需要的话 */
  height: 100vh;
  background-color: #f5f5f5;
  padding: 20px;
  border-radius: 20px;
  margin-right: 300px;
  margin-left: 300px;
}
.article-content{
  display: flex;
  margin: 10px 0 10px 0;
  align-items: flex-start; /* 或者使用 flex-end, center 等，根据需要调整垂直对齐方式 */
}
.article-content h2,
.article-content ul {
  margin-bottom: 0.8em; /* 为标题和列表添加一些底部边距，以增加可读性 */
}
.article-content ul {
  padding-left: 1.5em; /* 为列表添加左内边距，以区分列表项 */
  justify-content: space-between; /* 列表项水平居中 */
}

.article-content li {
  margin: 0 10px; /* 如果有需要的话，为列表项添加一些间距 */
}
/* 如果想要为左右两边的内容添加背景色或边框，可以添加如下样式 */
.article-content > div {
  width: 50%; /* 调整为你想要的宽度，注意两边加起来不要超过100% */
  box-sizing: border-box; /* 确保padding和border不会增加元素的总宽度 */
  border: 1px solid #ccc; /* 添加边框 */
  padding: 1em; /* 添加内边距 */
  background-color: #f9f9f9; /* 添加背景色 */
}

/* 为第一个子元素（接种疫苗的好处）添加左边距 */
.article-content > div:first-child {
  margin-right: 8px; /* 添加右边距，以分隔两边内容 */
}
.article-meta {
  font-size: 0.8em;
  display: flex;
  color: #666;
  justify-content: space-between;
  align-items: center; /* 如果你也想垂直居中 */
  border: 1px solid #ccc; /* 添加边框，这里使用了1像素宽的黑色实线边框 */
}

.left {
  float: left;
}

.right {
  float: right;
}
.vaccine-knowledge {
  margin-bottom: 20px;
}

.article-image img {
  width: 40vw;
  height: auto;
  border-radius: 8px 8px 8px 8px;

}

.return-button {
  position: absolute;
  top: 80px;
  left: 320px; /* 调整为左侧 */
  padding: 10px;
}
.return-button button {
  /* 按钮样式 */
  padding: 5px 10px;
  background-color: #95a1ab;
  border: none;
  border-radius: 32px;
  cursor: pointer;
  color: #333;
  font-size: 14px;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

</style>

