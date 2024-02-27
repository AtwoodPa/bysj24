<template>
<!--  <div class="vaccine-knowledge-list">-->
<!--    <h1>疫苗知识列表</h1>-->
<!--    <ul>-->
<!--      <li v-for="knowledgeItem in knowledgeList" :key="knowledgeItem.id" >-->
<!--        {{ knowledgeItem.title }}-->
<!--      </li>-->
<!--    </ul>-->
<!--  </div>-->

  <div class="blogs">
    <div class="header">
      <div class="searchcard">
        <h2>疫苗知识</h2>
        <div class="searchinput"><el-input v-model="searchtitle" placeholder="输入疫苗知识关键字进行搜索" clearable />
          <el-button color="#545c64" :dark="isDark"  @click="getforuDate" >搜索</el-button></div>
      </div>
    </div>

    <ul class="list">
      <li
        v-for="item in tableData"
        :key="item.id"
        class="item"
      >
        <div class="content" >
          <router-link :to="'/vaccine-knowledge-detail/' + item.id">
            <h5 class="title">{{ item.title }}</h5>
          </router-link>
          <p class="description">{{ item.content }}</p>
          <div class="meta">
            <el-row>
              <el-col :span="8">
                <el-tooltip content="阅读量" placement="top" effect="light">
                  <span
                  ><el-icon><View /></el-icon> {{ 99 }}</span
                  >
                </el-tooltip>
                <el-tooltip content="评论量" placement="top" effect="light">
                  <span
                  ><el-icon><ChatDotSquare /></el-icon>
                    {{ 99 }}</span
                  ></el-tooltip
                >
              </el-col>
              <el-col :span="8"></el-col>
              <el-col :span="8">
                <span>{{ item.publisher }}</span>
                <span>{{  new Date(item.publish_time).toLocaleString()}}</span>
              </el-col>
            </el-row>
          </div>
        </div>
      </li>
    </ul>
  </div>
  <!--分页-->
  <div style="padding: 10px 20px; margin-left: 30px">
    <pagination
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    >

    </pagination>
  </div>

</template>
<script setup name="VaccineKnowledge">
// import { listInoculateSite } from "@/api/vaccine/inoculateSite";
import {getServerUrl} from "@/utils/request";

const router = useRouter();

const buttonLoading = ref(false);
const tableData  = ref([
  { id: 1, title: '疫苗知识1' , content: '文章正文内容',publish_time: '2023-04-01',publisher: '发布者姓名'},
  { id: 2, title: '疫苗知识2' , content: '文章正文内容',publish_time: '2023-04-01',publisher: '发布者姓名'},
  { id: 3, title: '疫苗知识3' , content: '文章正文内容',publish_time: '2023-04-01',publisher: '发布者姓名'},
  { id: 4, title: '疫苗知识4' , content: '文章正文内容',publish_time: '2023-04-01',publisher: '发布者姓名'},
  { id: 5, title: '疫苗知识5' , content: '文章正文内容',publish_time: '2023-04-01',publisher: '发布者姓名'},
  { id: 6, title: '疫苗知识6' , content: '文章正文内容',publish_time: '2023-04-01',publisher: '发布者姓名'},
  { id: 7, title: '疫苗知识7' , content: '文章正文内容',publish_time: '2023-04-01',publisher: '发布者姓名'},

  // 更多疫苗知识...
]);

const open = ref(false);
const isDark = ref(true);
const loading = ref(true);
const ids = ref([]);
const single = ref(true);
const multiple = ref(true);
const total = ref(1);
const title = ref("");
const searchtitle = ref("");
const showSearch = ref(true);

const data = reactive({
  queryParams: {
    pageNum: 1,
    pageSize: 10,
    siteAmount: undefined,
  },
  // 表单参数
  form: {}
});
const { queryParams, form } = toRefs(data);


const navigateToDetail = (id) => {
  // 使用Vue Router进行页面跳转
  // 假设你已经设置了Vue Router
  router.push({ name: 'VaccineKnowledgeDetail', params: { knowledgeId: id } });
};

const benefits = ref([
  '好处1',
  '好处2',
  '好处3',
  // 更多好处...
]);

const instructions = ref([
  '注意事项1',
  '注意事项2',
  '注意事项3',
  // 更多注意事项...
]);

const knowledge = ref('疫苗知识详情内容');
// const inoculateSiteList = ref([]);
// function getInoculateSiteList() {
//
//   listInoculateSite().then(response => {
//     inoculateSiteList.value = response.rows;
//   });
// }
// getInoculateSiteList();
function getList(){

}
// 获取疫苗知识列表
getList();
</script>


<style scoped>
.blogs {
  /*左对齐*/
  padding: 15px;
  box-shadow: 7px 15px 40px #dfe3e3;
}

.header {
  width: 100%;
  height: 200px;
}

li {
  /*去除起前面的点*/
  list-style-type: none;
  /*内部间距*/
  padding: 15px 0 10px;
  /*每篇下面的实线*/
  border-bottom: 2px solid #f0f0f0;
}
/*标题，鼠标，悬浮，变灰色*/
li:hover .title {
  color: #87CEFA;
}
/**/
.searchcard {
  height: 200px;
  width: 100%;
  text-align: center;
  background-image: linear-gradient(to right, #928dab, #00d2ff , #928dab );
  //background-image: linear-gradient(60deg, #928dab 15%,  #2cacd1 25%,#87A7D9 37%, #928dab 60%);
}
.searchcard h2 {
  color: white;
  line-height: 70px;
  margin-bottom: 20px;
}
.el-input {
  width: 65%;
  margin-right: 10px;
  height: 36px;
}
.el-button {
  font-size: 13px;
  width: 80px;
  height: 36px;
}
.description {
  min-height: 30px;
  margin: 4px 0 4px;
  font-size: 14px;
  color: #555;
}
.meta {
  font-size: 13px;
  line-height: 20px;
}
span {
  margin-right: 12px;
  color: #666;
}
.title {
  color: #333;
  margin: 7px 0 7px;
  font-size: 20px;
  line-height: 1.5;
}

</style>
