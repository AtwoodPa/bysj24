<template>
  <div class="main-box">
    <div :class="['container', 'container-register', { 'is-txl': isLogin }]">
      <el-form
        ref="registerRef"
        :model="registerForm"
        :rules="registerRules">
        <h2 class="title">创建账户</h2>
        <span class="text">你需要输入你的个人信息进行注册账户</span>
        <el-row>
          <el-col :span="12">
            <el-form-item prop="username">
              <el-input v-model="registerForm.username" type="text" placeholder="用户姓名">
                <template #prefix>
                  <svg-icon icon-class="user" class="el-input__icon input-icon"/>
                </template>

              </el-input>
            </el-form-item>

            <el-form-item prop="phonenumber">
              <el-input v-model="registerForm.phonenumber" type="text" placeholder="手机号码">
                <template #prefix>
                  <svg-icon icon-class="phone" class="el-input__icon input-icon"/>
                </template>

              </el-input>
            </el-form-item>
            <el-form-item prop="idCard">
              <el-input v-model="registerForm.idCard" type="text" placeholder="身份证号">
                <template #prefix>
                  <svg-icon icon-class="validCode" class="el-input__icon input-icon"/>
                </template>

              </el-input>
            </el-form-item>
            <el-form-item prop="address">
              <el-input v-model="registerForm.address" type="text" placeholder="用户住址">
                <template #prefix>
                  <svg-icon icon-class="guide" class="el-input__icon input-icon"/>
                </template>
              </el-input>
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item prop="sex">
              <el-radio-group v-model="registerForm.sex" style="margin-left: 20px;">
                <el-radio label="1">男</el-radio>
                <el-radio label="0">女</el-radio>
              </el-radio-group>
            </el-form-item>
            <el-form-item prop="password">
              <el-input
                v-model="registerForm.password"
                autocomplete="off"
                type="password"
                show-password
                size="large"
                placeholder="密码">
                <template #prefix>
                  <svg-icon icon-class="password" class="el-input__icon input-icon"/>
                </template>
              </el-input>
            </el-form-item>
            <el-form-item prop="confirmPassword">
              <el-input
                v-model="registerForm.confirmPassword"
                size="large"
                type="password"
                autocomplete="off"
                show-password
                placeholder="再次确认密码">
                <template #prefix>
                  <svg-icon icon-class="password" class="el-input__icon input-icon"/>
                </template>
              </el-input>
            </el-form-item>
          </el-col>
        </el-row>

        <div class="primary-btn"
             @click="handleRegister">立即注册
        </div>
      </el-form>
    </div>
    <div
      :class="['container', 'container-login', { 'is-txl is-z200': isLogin }]"
    >
      <el-form :model="loginForm" status-icon :rules="loginRules" ref="loginRef" class="login-form">
        <h2 class="title">登录网站</h2>
        <span class="text">请使用用户名进行登录</span>

        <el-form-item prop="username">
          <el-input placeholder="用户名" v-model="loginForm.username">
            <template #prefix>
              <svg-icon icon-class="user" class="el-input__icon input-icon"/>
            </template>
          </el-input>
        </el-form-item>
        <el-form-item prop="password">
          <el-input type="password" show-password placeholder="密码" v-model="loginForm.password"
                    @keyup.enter="handleLogin">
            <template #prefix>
              <svg-icon icon-class="password" class="el-input__icon input-icon"/>
            </template>
          </el-input>
        </el-form-item>
        <el-form-item prop="code" v-if="captchaEnabled">
          <el-input
            v-model="loginForm.code"
            size="large"
            auto-complete="off"
            placeholder="验证码"
            style="width: 53%;margin-left: 35px"
            @keyup.enter="handleLogin"
          >
            <template #prefix><svg-icon icon-class="validCode" class="el-input__icon input-icon" /></template>
          </el-input>
          <div class="login-code">
            <img :src="codeUrl" @click="getCode" class="login-code-img"/>
          </div>
        </el-form-item>
        <el-checkbox v-model="loginForm.rememberMe" style="margin:0px 0px 25px 0px;">记住密码</el-checkbox>

       <div class="primary-btn"  @click="handleLogin">立即登录</div>
      </el-form>
    </div>
    <div :class="['switch', { login: isLogin }]">
      <div class="switch__circle"></div>
      <div class="switch__circle switch__circle_top"></div>
      <div class="switch__container">
        <h2>{{ isLogin ? "Login " : "Register " }}</h2>
        <p>
          {{
            isLogin
              ? "输入你的个人信息，注册一个系统用户账号"
              : "请使用你的个人信息进行登录"
          }}
        </p>
        <div class="primary-btn" @click="isLogin = !isLogin">
          {{ isLogin ? "立即注册" : "立即登录" }}
        </div>
      </div>
    </div>
  </div>
</template>

<script setup name="Userlogin">
import {ElMessage, ElMessageBox} from "element-plus";
import {getCodeImg, register_ym} from "@/api/login";
import Cookies from "js-cookie";
import {decrypt, encrypt} from "@/utils/jsencrypt";
const {proxy} = getCurrentInstance();
import useUserStore from '@/store/modules/user'
const userStore = useUserStore()

// 切换登陆/注册界面 标识位
const isLogin = ref(true)
const loading = ref(false);
// const isLoggedIn = userStore.isLoggedIn
// const personalCenterComponent = () => import('./views/PersonalCenter.vue') // 动态导入
const router = useRouter();

// 注册表单
const registerForm = ref({
  username: "",
  password: "",
  phoneNumber: "",
  idCard: "",
  address: "",
  sex: "",
  confirmPassword: "",
  userType: "ym_user",
  avatar: "http://43.142.255.148:9000/ym2024/2024/01/25/376fdcb664db4dccb054e538a418db8f.png"
});
// 验证二次密码正确性
const equalToPassword = (rule, value, callback) => {
  if (registerForm.value.password !== value) {
    callback(new Error("两次输入的密码不一致"));
  } else {
    callback();
  }
};
// 注册校验器
const registerRules = {
  username: [
    {required: true, trigger: "blur", message: "请输入您的账号"},
    {min: 2, max: 20, message: "用户账号长度必须介于 2 和 20 之间", trigger: "blur"}
  ],
  password: [
    {required: true, trigger: "blur", message: "请输入您的密码"},
    {min: 5, max: 20, message: "用户密码长度必须介于 5 和 20 之间", trigger: "blur"}
  ],
  phoneNumber: [
    {required: true, trigger: "blur", message: "请输入您的手机号码"}
  ],
  idCard: [
    {required: true, trigger: "blur", message: "请输入您的身份证号"}
  ],
  sex: [
    {required: true, trigger: "blur", message: "请选择您的性别"}
  ],
  address: [
    {required: true, trigger: "blur", message: "请输入您的家庭住址"}
  ],
  confirmPassword: [
    {required: true, trigger: "blur", message: "请再次输入您的密码"},
    {required: true, validator: equalToPassword, trigger: "blur"}
  ]
};

function handleRegister() {
  proxy.$refs.registerRef.validate(valid => {
    if (valid) {
      loading.value = true;
      register_ym(registerForm.value).then(res => {
        const username = registerForm.value.username;
        ElMessageBox.alert("<font color='red'>恭喜你，您的账号 " + username + "注册成功！请使用用户名&密码进行登录</font>", "系统提示", {
          dangerouslyUseHTMLString: true,
          type: "success",
        }).then(() => {
          // 注册成功切换到登陆界面
          isLogin.value = true;
          // 重置注册表单
          resetReg()
          router.push("/userlogin");
        }).catch(() => {
        });
      }).catch(() => {
        loading.value = false;

      });
    }
  });
}

// 重置注册表单
function resetReg() {
  registerForm.value = {
    username: "",
    password: "",
    phoneNumber: "",
    idCard: "",
    address: "",
    sex: "",
    confirmPassword: "",
    userType: "ym_user"
  }
  proxy.resetForm("registerRef");
}

// const radio = ref(3)
// 登陆表单
const loginForm = ref({
  // 用户名
  username: "",
  // 密码
  password: "",
  code: "",
  uuid: ""
});
// 登录校验器
const loginRules = {
  username: [{ required: true, trigger: "blur", message: "请输入您的账号" }],
  password: [{ required: true, trigger: "blur", message: "请输入您的密码" }],
  code: [{ required: true, trigger: "change", message: "请输入验证码" }]
};
function resetLogin() {
  loginForm.value = {
    // 用户名
    username: "",
    // 密码
    password: "",
    code: "",
    uuid: ""
  }
  proxy.resetForm("loginRef");
}

function handleLogin() {
  proxy.$refs.loginRef.validate(valid => {
    if (valid) {
      loading.value = true;
      // 勾选了需要记住密码设置在 cookie 中设置记住用户名和密码
      if (loginForm.value.rememberMe) {
        Cookies.set("username", loginForm.value.username, { expires: 30 });
        Cookies.set("password", encrypt(loginForm.value.password), { expires: 30 });
        Cookies.set("rememberMe", loginForm.value.rememberMe, { expires: 30 });
      } else {
        // 否则移除
        Cookies.remove("username");
        Cookies.remove("password");
        Cookies.remove("rememberMe");
      }
      // 调用action的登录方法
      userStore.login(loginForm.value).then(() => {
        // router.push({ path: redirect.value || "/" });
        // 登陆成功跳转个人中心页面
        router.push("/personal-center");
      }).catch(() => {
        loading.value = false;
        // 重新获取验证码
        if (captchaEnabled.value) {
          getCode();
        }
      });
    }
  });
}
// 验证码地址
const codeUrl = ref("");
const captchaEnabled = ref(true);

function getCode() {
  getCodeImg().then(res => {
    captchaEnabled.value = res.data.captchaEnabled === undefined ? true : res.data.captchaEnabled;
    if (captchaEnabled.value) {
      codeUrl.value = "data:image/gif;base64," + res.data.img;
      loginForm.value.uuid = res.data.uuid;
    }
  });
}

function getCookie() {
  const username = Cookies.get("username");
  const password = Cookies.get("password");
  loginForm.value = {
    username: username === undefined ? loginForm.value.username : username,
    password: password === undefined ? loginForm.value.password : decrypt(password)
  };
}

getCode();
getCookie();
</script>

<style scoped>
.main-box {
  position: relative;
  margin: auto;
  margin-top: 80px;
  width: 80%;
  height: 600px;
  padding: 25px;
  background-color: #ecf0f3;
  box-shadow: 10px 10px 10px #d1d9e6, -10px -10px 10px #f9f9f9;
  border-radius: 12px;
  overflow: hidden;
}

.input-icon {
  height: 39px;
  width: 14px;
  margin-left: 0px;
}

.container {
  display: flex;
  justify-content: center;
  align-items: center;
  position: absolute;
  top: 0;
  width: 60%;
  height: 100%;
  padding: 25px;
  background-color: #ecf0f3;
  transition: all 1.25s;
}

.el-form {
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  width: 100%;
  height: 100%;
  color: #a0a5a8;
}

.title {
  font-size: 34px;
  font-weight: 700;
  line-height: 3;
  color: #181818;
}

.text {
  margin-top: 30px;
  margin-bottom: 12px;
}

.el-input {
  width: 300px;
  margin-left: 10px;
}

.el-input >>> .el-input__inner {
  height: 40px;
  margin: 4px 0;
  padding-left: 25px;
  font-size: 13px;
  letter-spacing: 0.15px;
  border: none;
  outline: none;
  /* font-family: 'Montserrat', sans-serif; */
  background-color: #ecf0f3;
  transition: 0.25s ease;
  border-radius: 8px;
  box-shadow: inset 2px 2px 4px #d1d9e6, inset -2px -2px 4px #f9f9f9;
}

.el-input >>> .el-input__wrapper {
  background-color: #ecf0f3;
  box-shadow: none;
}

/* .el-form-item {
    margin-bottom: 0;
} */
.el-input::placeholder {
  color: #a0a5a8;
}

.container-register {
  z-index: 10;
  left: calc(90% - 50%);
}

.container-login {
  left: calc(100% - 50%);
  z-index: 0;
}

.is-txl {
  left: 0;
  transition: 1.25s;
  transform-origin: right;
}

.is-z200 {
  z-index: 20;
  transition: 1.25s;
}

.switch {
  display: flex;
  justify-content: center;
  align-items: center;
  position: absolute;
  top: 0;
  left: 0;
  height: 100%;
  width: 35%;
  padding: 50px;
  z-index: 20;
  transition: 1.25s;
  background-color: #ecf0f3;
  overflow: hidden;
  box-shadow: 4px 4px 10px #d1d9e6, -4px -4px 10px #f9f9f9;
  color: #a0a5a8;
}

.switch__circle {
  position: absolute;
  width: 50%;
  height: 500px;
  border-radius: 50%;
  background-color: #ecf0f3;
  box-shadow: inset 8px 8px 12px #d1d9e6, inset -8px -8px 12px #f9f9f9;
  bottom: -60%;
  left: -60%;
  transition: 1.25s;
}

.switch__circle_top {
  top: -30%;
  left: 60%;
  width: 30%;
  height: 300px;
}

.switch__container {
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  position: absolute;
  width: 60%;
  padding: 50px 55px;
  transition: 1.25s;
}

h2 {
  font-size: 34px;
  font-weight: 700;
  line-height: 3;
  color: #181818;
}

p {
  font-size: 14px;
  letter-spacing: 0.25px;
  text-align: center;
  line-height: 1.6;
}

.login {
  left: calc(100% - 40%);
}

.switch__circle {
  left: 0;
}

.primary-btn {
  width: 180px;
  height: 50px;
  border-radius: 25px;
  margin-top: 10px;
  text-align: center;
  line-height: 50px;
  font-size: 14px;
  letter-spacing: 2px;
  background-color: #00BFFF;
  color: #f9f9f9;
  cursor: pointer;
  box-shadow: 8px 8px 16px #d1d9e6, -8px -8px 16px #f9f9f9;
}
.login-code {
  width: 33%;
  height: 40px;
  float: right;
  img {
    cursor: pointer;
    vertical-align: middle;
  }
}
.login-code-img {
  height: 40px;
  padding-left: 12px;
}
.primary-btn:hover {
  box-shadow: 4px 4px 6px 0 rgb(255 255 255 / 50%),
  -4px -4px 6px 0 rgb(116 125 136 / 50%),
  inset -4px -4px 6px 0 rgb(255 255 255 / 20%),
  inset 4px 4px 6px 0 rgb(0 0 0 / 40%);
}
.login-form {
  border-radius: 6px;

  width: 500px;
  padding: 25px 25px 5px 25px;
  .input-icon {
    height: 39px;
    width: 14px;
    margin-left: 0px;
  }
}
</style>
