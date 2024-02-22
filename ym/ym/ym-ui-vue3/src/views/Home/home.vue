<template>
  <div class="home">
    <!-- 顶部内容 -->
    <div class="top-content">
      <img src="https://www.usts.edu.cn/dfiles/11467/static/images/logo.jpg" alt="Logo" class="logo">
      <router-link to="/login" class="top-text" >预约平台</router-link>
    </div>

    <!-- 导航栏 -->
    <nav class="navbar">
      <router-link v-for="(item, index) in navItems"
                   :key="index" :to="item.route" :class="{ active: selectedIndex === index }"
                   @click="selectNavItem(index)"
                   style="font-size: 18px"
      ><span style="margin-left: 60rpx">{{ item.label }}</span>
      </router-link>
    </nav>

    <!-- 中间部分，根据导航栏选项动态显示对应页面 -->
    <router-view></router-view>

    <!-- 底部，显示网站信息 -->
    <footer class="footer">
      <p>网站信息：苏科大疫苗预约接种平台</p>
    </footer>
  </div>
</template>

<script setup name="Home">

const { proxy } = getCurrentInstance();
const selectedIndex = ref(0);
const navItems = [
  { label: '疫苗首页', route: '/vaccine-home' },
  { label: '疫苗知识', route: '/vaccine-knowledge' },
  { label: '接种项目', route: '/vaccination-project' }
];

function selectNavItem(index) {
  selectedIndex.value = index;
}

const version = ref('1.0.0')

</script>

<style scoped lang="scss">

.home {
  display: flex;
  flex-direction: column;
  height: 100vh;
  font-family: "open sans", "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-size: 13px;
  color: #676a6c;
  overflow-x: hidden;

}

.top-content {
  display: flex;
  justify-content: space-between;
  align-items: center;
  background-color: #0068b7;
  padding: 10px;

}
.top-content img{
  margin-left: 100px;
}
.logo {
  height: 80px;
}

.top-text {
  color: #fff;
  margin-right: 100px;
}

.navbar {
  background-color: #edecec;
  color: #000;
  padding: 10px 0;
  text-align: center;
}

.navbar a {
  color: #000;
  text-decoration: none;
  padding: 0 10px;
}

.navbar a.active {
  font-weight: bold;
}

.footer {
  background-color: #0068b7;
  color: #fff;
  text-align: center;
  padding: 5rpx 0;
}

.navbar ul li:hover {
  background-color: #0068b7; /* 鼠标悬停时的背景色 */
}

</style>
