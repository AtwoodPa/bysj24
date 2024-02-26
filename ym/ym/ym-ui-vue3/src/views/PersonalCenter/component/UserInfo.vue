<template>
  <div>
    <el-form :model="state.user"  ref="userRef" label-width="80px" class="mineself">
      <div class="updateinfo">
        <el-form-item label="用户头像" prop="avatar">
          <el-upload
            class="avatar-uploader"
            action="http://localhost:8080/vaccine/vaccine/vaccineImage/upload"
            :show-file-list="false"
            :on-success="handleAvatarSuccess"
            :before-upload="beforeAvatarUpload"
          >
            <img v-if="state.user.avatar" :src="getServerUrl()+'vaccineImage'+state.user.avatar" class="avatar" />
            <el-icon v-else class="avatar-uploader-icon"><Plus /></el-icon>
          </el-upload>
        </el-form-item>
        <el-form-item label="用户名称" prop="name">
          <el-input v-model="state.user.userName"></el-input>
        </el-form-item>
        <el-form-item label="身份证号" prop="idcard">
          <el-input v-model="state.user.idCard"></el-input>
        </el-form-item>

        <el-form-item label="手机号码" prop="phonenumber">
          <el-input v-model="state.user.phonenumber"></el-input>
        </el-form-item>
        <el-form-item label="性别">
          <el-radio-group v-model="state.user.sex">
            <el-radio label="0">男</el-radio>
            <el-radio label="1">女</el-radio>
          </el-radio-group>
        </el-form-item>
        <el-form-item label="住址" prop="address">
          <el-input v-model="state.user.address"></el-input>
        </el-form-item>
        <div style="text-align: center;">
          <el-button type="primary" @click="submit">修改</el-button>
        </div>

      </div>
    </el-form>
  </div>
</template>
<script setup>
import {getUserProfile, updateUserProfile} from "@/api/system/user";

import useUserStore from '@/store/modules/user'
import {getServerUrl} from "@/utils/request";
import {Plus} from "@element-plus/icons-vue";
const userStore = useUserStore()
const props = defineProps({
  user: {
    type: Object
  }
});
const {proxy} = getCurrentInstance();

const state = reactive({
  user: {},
  roleGroup: {},
  postGroup: {}
});
function getUser() {
  getUserProfile().then(response => {
    state.user = response.data.user;
    state.roleGroup = response.data.roleGroup;
    state.postGroup = response.data.postGroup;
  });
};
// 保存修改信息
function submit() {
  proxy.$refs.userRef.validate(valid => {
    if (valid) {
      updateUserProfile(state.user).then(response => {
        proxy.$modal.msgSuccess("修改成功");
        // getUser();
      });
    }
  });
};

const handleAvatarSuccess = (response, uploadFile) => {
  state.user.avatar = "/" + response.data;
};

const beforeAvatarUpload = (rawFile) => {

  return true;
};
getUser();

</script>

<style scoped lang="scss">
.mineself {
  width: 400px;
}

.updateinfo {
  margin: 20px;
}

.updateinfo img {
  height: 80px;
  width: 80px;
}
</style>
