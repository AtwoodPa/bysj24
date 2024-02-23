<template>
  <el-container>
    <el-header class="top-content">
      <el-row justify="end">
        <img
          src="../../assets/front-logo.png"
          alt="LOGO"
          style="height: 30px"
        />
      </el-row>
      <el-row>
        <div class="navbar top-nav">
          <router-link to="/"
          ><el-icon><HomeFilled /></el-icon> <span>首页</span></router-link
          >
          <router-link to="/vaccine-knowledge">
            <el-icon><Opportunity /></el-icon> <span>医院信息</span></router-link
          >
          <router-link to="/vaccination-project"
          ><el-icon><Flag /></el-icon><span>疫苗预约</span></router-link
          >
          <router-link to="/back-help"
          ><el-icon><Comment /></el-icon> <span>反馈帮助</span></router-link
          >
          <router-link to="/login"
          ><el-icon><UserFilled /></el-icon> <span>个人中心</span></router-link
          >
        </div>
      </el-row>
    </el-header>
<!--    <el-scrollbar height="100vh">-->
      <el-main>
        <!--  使用el-carousel展示图片  -->
        <div style="margin-top: 10px">
          <el-carousel type="card" :interval="2000" trigger="click" height="550px" >
            <el-carousel-item  v-for="item in carousels" :key="item">
              <img :src="item.image" alt="notice-image" style="width: 100%;height: 100%">
            </el-carousel-item>
          </el-carousel>
        </div>
        <router-view></router-view>
      </el-main>
      <el-footer class="footer">
        <el-row>
          <el-col :span="24">
            <div style="margin-top:15px">
              <span>Copyright &copy;2016 苏州科技大学.All rights reserved.</span>
              <el-divider direction="vertical" />
              <span>地址：江苏省苏州市虎丘区学府路99号</span>
              <el-divider direction="vertical" />
              <span>邮编：215009</span>
              <el-divider direction="vertical" />
              <a href="tel:027-81730682">联系电话：0512-68096117</a>
              <el-divider direction="vertical" />
              <span><a href="https://beian.miit.gov.cn/" target="_blank">苏ICP备11028812号</a></span>
              <el-divider direction="vertical" />
              <span><a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=32050502000334" target="_blank"><img width="16" height="16" src="https://beian.mps.gov.cn/img/logo01.dd7ff50e.png" vsbhref="vurl" vurl="https://beian.mps.gov.cn/img/logo01.dd7ff50e.png" vheight="16" vwidth="16" orisrc="https://beian.mps.gov.cn/img/logo01.dd7ff50e.png" class="img_vsb_content">苏公网安备 32050502000334号</a></span>
            </div>
          </el-col>
        </el-row>
      </el-footer>
<!--    </el-scrollbar>-->
  </el-container>
</template>

<script setup name="Home">

const {proxy} = getCurrentInstance();
const selectedIndex = ref(0);
const navItems = [
  {label: '疫苗首页', route: '/vaccine-home', icon: ''},
  {label: '疫苗知识', route: '/vaccine-knowledge'},
  {label: '接种项目', route: '/vaccination-project'},
  {label: '后台管理', route: '/login'}
];
// 固定轮播图
const carousels = [
  { text: '公告1', image: 'https://file2.renrendoc.com/fileroot_temp3/2021-3/26/8179a26d-d3f9-479c-a5c9-89f38d2de3ec/8179a26d-d3f9-479c-a5c9-89f38d2de3ec5.gif' },
  { text: '公告2', image: 'https://img-qn-2.51miz.com/preview/muban/00/00/44/88/M-448844-BA8ED576.jpg' },
  { text: '公告3', image: 'https://p9.itc.cn/q_70/images03/20210923/27829eb7b0ba47ea86793d265dfb7f7c.jpeg' },
  { text: '公告4', image: 'https://img0.baidu.com/it/u=3642696431,462406593&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500' }
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

.top-content img {
  margin-left: 30px;
}

.logo {
  height: 45px;
}

.top-nav {
  color: #fff;
  margin-right: 50px;
}

.navbar {
  background-color: #0068b7;
  color: #fff;
  padding: 10px 0;
  text-align: center;
}

.navbar a {
  color: #fff;
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
