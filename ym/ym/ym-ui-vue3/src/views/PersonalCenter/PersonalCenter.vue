<template>
  <div>
    <div style="height: 100vh;">
      <el-container>
        <el-header>
          <div class="thecenterbody">
            <div><img :src="getServerUrl()+'vaccineImage'+state.user.avatar" alt="头像"/></div>
            <div>
              <h3>{{ state.user.userName }}</h3>
              <span class="spanicon"><el-icon><CircleCheckFilled/></el-icon>实名认证用户</span>
              <p>家庭住址: {{ state.user.address }}</p>
            </div>
          </div>
        </el-header>
        <el-container>
          <el-aside width="235px">
            <h2 class="person_body_list" style="border-bottom: none">个人中心</h2>
            <el-menu
              router
              default-active="/user-info"
              active-text-color="#00c3ff"
              background-color="E6E9EEFF"
              class="el-menu-vertical-demo"
            >
              <el-menu-item index="/user-info">
                <el-icon><User/></el-icon>
                <span>个人信息</span>
              </el-menu-item>
              <el-menu-item index="/user-appoint-history">
                <el-icon><Calendar/></el-icon>
                <span>预约信息</span>
              </el-menu-item>

              <el-menu-item index="/user-inoculate-history">
                <el-icon><List/></el-icon>
                <span>接种信息</span>
              </el-menu-item>
              <!--              <el-menu-item index="/myarticle">-->
              <!--                <el-icon><document /></el-icon>-->
              <!--                <span>论坛信息</span>-->
              <!--              </el-menu-item>-->
              <el-menu-item>
                <el-icon><Back/></el-icon>
                <span @click="logout">退出登录</span>
              </el-menu-item>
            </el-menu>
          </el-aside>
          <el-main style="overflow-y: hidden">
            <router-view></router-view>
          </el-main>
        </el-container>
      </el-container>
    </div>
  </div>
</template>

<script setup name="PersonalCenter">
import {ElMessageBox} from "element-plus";
import { getUserProfile } from "@/api/system/user";
import {getServerUrl} from "@/utils/request";

const router = useRouter();
import useUserStore from '@/store/modules/user'

const userStore = useUserStore()


const state = reactive({
  user: {},
  roleGroup: {},
  postGroup: {}
});

function logout() {
  ElMessageBox.confirm('确定注销并退出系统吗？', '提示', {
    confirmButtonText: '确定',
    cancelButtonText: '取消',
    type: 'warning'
  }).then(() => {
    userStore.logOut().then(() => {
      location.href = import.meta.env.VITE_APP_CONTEXT_PATH + 'index';
    })
    router.push("/home");

  }).catch(() => {
  });
}
function getUser() {
  getUserProfile().then(response => {
    state.user = response.data.user;
    state.roleGroup = response.data.roleGroup;
    state.postGroup = response.data.postGroup;
  });
};
getUser();
</script>


<style scoped>
.thecenterbody {
  height: 160px;
  width: 78%;
  margin: 0 auto;
  margin-top: 100px;
  box-shadow: 7px 15px 40px #e6e9ee;
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
}

.thecenterbody img {
  height: 100px;
  width: 100px;
  border-radius: 10%;
  margin-left: 30px;
  margin-top: 30px;
  margin-right: 30px;
}

.thecenterbody h3 {
  font-size: 16px;
  margin-top: 30px;
}

.thecenterbody span {
  font-size: 16px;
  font-weight: 500;
  color: #87CEFA;

}

/* 取消menu的右侧边框 */
.el-menu {
  border: none;
}

.spanicon .el-icon {
  font-size: 24px;
  color: #FFD700;
  margin-top: 5px;
  vertical-align: bottom;
}

.thecenterbody p {
  font-size: 14px;
  color: grey;
}

.el-aside {
  margin-left: 12%;
  margin-top: 230px;
  height: 450px;
  /* background-color: aqua; */
  box-shadow: 7px 15px 40px #c0d4d4;
  overflow-x: hidden;
}

.person_body_list {
  width: 100%;
  height: 40px;
  margin-top: 25px;
  margin-left: 45px;
  font-size: 22px;
  font-weight: 400;
  background-image: -webkit-linear-gradient(
    left,
    rgb(42, 134, 141),
    #e9e625dc 20%,
    #3498db 40%,
    #e74c3c 60%,
    #09ff009a 80%,
    rgba(82, 196, 204, 0.281) 100%
  );
  -webkit-text-fill-color: transparent;
  background-clip: text;
}

.el-menu-item {
  margin-left: 20px;
}

.el-main {
  margin-top: 230px;
  margin-right: 12%;
  margin-left: 30px;
  height: 450px;
  /* background-color: #dfe3e3; */
  box-shadow: 7px 15px 40px #bfd4d4;
}
</style>
