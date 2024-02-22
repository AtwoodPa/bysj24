<template>
  <div class="page-content">
    <!--  使用el-carousel展示图片  -->
    <div>
      <el-carousel :interval="2000" trigger="click" height="400px">
        <el-carousel-item  v-for="item in carousels" :key="item">
          <img :src="item.image" alt="notice-image" style="width: 100%;height: 100%">
        </el-carousel-item>
      </el-carousel>
    </div>
    <!-- 公告滚动栏 -->
    <div class="notice-scroll">
      <h2>系统公告</h2>
      <ul>
        <li v-for="(notice, index) in notices" :key="index">
          <img :src="notice.image" alt="notice-image">
          <p>{{ notice.text }}</p>
        </li>
      </ul>
    </div>
    <el-row>
      <el-col
        v-for="(vaccine, index) in vaccines" :key="index"
        :span="8"
        :offset="index > 0 ? 2 : 0"
      >
        <el-card :body-style="{ padding: '0px' }">
          <img :src="vaccine.image" alt="vaccine-image" class="vaccine-image">
          <div style="padding: 14px">
            <span>Yummy hamburger</span>
            <div class="bottom">
              <time class="time">{{ currentDate }}</time>
              <el-button text class="button">Operating</el-button>
            </div>
          </div>
        </el-card>
      </el-col>
    </el-row>

    <!-- 可接种疫苗信息 -->
    <div class="vaccine-info">
      <h2>可接种疫苗信息</h2>
      <div class="vaccine-card" v-for="(vaccine, index) in vaccines" :key="index">
        <img :src="vaccine.image" alt="vaccine-image">
        <p>{{ vaccine.name }}</p>
      </div>
    </div>
  </div>
</template>

<script setup>
const currentDate = ref(new Date())
const carousels = [
  { text: '公告1', image: 'https://file2.renrendoc.com/fileroot_temp3/2021-3/26/8179a26d-d3f9-479c-a5c9-89f38d2de3ec/8179a26d-d3f9-479c-a5c9-89f38d2de3ec5.gif' },
  { text: '公告2', image: 'https://www.usts.edu.cn/dfiles/11467/static/images/logo.jpg' },
  { text: '公告3', image: 'https://www.usts.edu.cn/dfiles/11467/static/images/logo.jpg' }
]; // 模拟系统公告信息

const notices = [
  { text: '公告1', image: 'https://www.usts.edu.cn/dfiles/11467/static/images/logo.jpg' },
  { text: '公告2', image: 'https://www.usts.edu.cn/dfiles/11467/static/images/logo.jpg' },
  { text: '公告3', image: 'https://www.usts.edu.cn/dfiles/11467/static/images/logo.jpg' }
]; // 模拟系统公告信息

const vaccines = [ // 模拟可接种疫苗信息
  { name: '疫苗1', image: 'https://www.usts.edu.cn/dfiles/11467/static/images/logo.jpg' },
  { name: '疫苗2', image: 'https://www.usts.edu.cn/dfiles/11467/static/images/logo.jpg' },
  { name: '疫苗3', image: 'https://www.usts.edu.cn/dfiles/11467/static/images/logo.jpg' }
];
</script>

<style scoped lang="scss">
.page-content {
  height: 100vh;
  padding: 20px;
  margin: 0 100px 0 100px;
}

.notice-scroll {
  margin-bottom: 20px;
}

.notice-scroll ul {
  list-style: none;
  padding: 0;
  margin: 0;
}

.notice-scroll li {
  display: flex;
  align-items: center;
  margin-bottom: 10px;
}
.vaccine-image{
  height: 200px;
  width: 100%;
  display: block;
}
.notice-scroll img {
  width: 50px;
  height: auto;
  margin-right: 10px;
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

</style>
