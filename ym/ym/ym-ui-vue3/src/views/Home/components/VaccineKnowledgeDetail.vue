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
        <span class="right">{{ article.publishTime }}</span>
      </div>
      <div class="article-content">
        <div>
          <h4>接种疫苗的好处</h4>
          <span>{{article.benefits}}</span>
        </div>

        <div>
          <h4>接种注意事项</h4>
          <span>{{article.instructions}}</span>
        </div>
      </div>
      <div style="border: 1px solid #ccc;height: 70%;margin-top: 10px">
        <h4>疫苗知识</h4>
        <p v-if="article.content">{{ article.content }}</p>
        <div v-if="article.knowledge" class="vaccine-knowledge">
          <p>{{ article.knowledge }}</p>
        </div>
      </div>
    </div>
  </div>

</template>

<script setup name="VaccineKnowledgeDetail">
import { ref, onMounted } from 'vue';
import { getVaccineKnowledge } from "@/api/vaccine/vaccineKnowledge";

import { useRoute } from 'vue-router';
const route = useRoute();
// 实例化路由
const router = useRouter();

const article = ref({
  title: '文章标题',
  content: '文章正文内容',
  publish_time: '2023-04-01',
  publisher: '发布者姓名',
});

const goBack = () => {
  router.back(); // 使用Vue Router的back方法返回上一页
};
onMounted(() => {
  const id = route.params.id;// url中的id信息
  getKnowledgeById(id);
});

function getKnowledgeById(id){
  getVaccineKnowledge(id).then(resp => {
    article.value = resp.data;
    console.log(resp)
  })
}
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

