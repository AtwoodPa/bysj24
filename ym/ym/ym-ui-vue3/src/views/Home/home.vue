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
          <router-link to="/home"
          ><el-icon><HomeFilled /></el-icon> <span>首页</span></router-link
          >

          <router-link to="/vaccine-knowledge">
            <el-icon><Opportunity /></el-icon> <span>疫苗知识</span></router-link
          >
          <router-link to="/inoculate-site">
            <el-icon><LocationInformation /></el-icon><span>接种站点</span></router-link
          >
<!--          <router-link to="/vaccination-project">-->
<!--            <el-icon><Flag /></el-icon><span>疫苗预约</span>-->
<!--          </router-link>-->
          <router-link to="/back-help">
            <el-icon><Comment /></el-icon> <span>反馈帮助</span>
          </router-link>

          <!-- 根据 isLoggedIn 状态显示不同的链接 -->
          <router-link v-if="isLoggedIn" to="/personal-center" ><el-icon><UserFilled /></el-icon> <span>个人中心</span></router-link>
          <router-link v-else to="/userlogin"
          ><el-icon><UserFilled /></el-icon> <span>用户登录</span></router-link
          >
          <router-link to="/login"
          ><el-icon><Promotion /></el-icon> <span>后台</span></router-link
          >
        </div>
      </el-row>
    </el-header>
<!--    <el-scrollbar height="100vh">-->
      <el-main>
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

import useUserStore from '@/store/modules/user'
const userStore = useUserStore()
const {proxy} = getCurrentInstance();
const selectedIndex = ref(0);

const personalCenterComponent = () => import('@/views/PersonalCenter.vue') // 动态导入
const router = useRouter();
const version = ref('1.0.0')
const isLoggedIn = userStore.isLoggedIn
// 固定轮播图


function selectNavItem(index) {
  selectedIndex.value = index;
}
function toLoginOrCenter(){

  if (isLoggedIn.value == true){
    // 已登录
    router.push("/userlogin");
  }else {
    router.push("/personal-center");
  }
}

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
