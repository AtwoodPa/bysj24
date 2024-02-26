<template>
  <div>
    <el-form :model="form" :rules="rules" ref="UserDate" label-width="80px" class="mineself">
      <div class="updateinfo">
        <el-form-item label="头像" prop="avatar">
          <img :src="localinfo" alt="">
          <el-button style="margin-left: 10px;" type="primary" plain size="small">
            <el-icon>
              <Edit/>
            </el-icon>
          </el-button>
        </el-form-item>
        <el-form-item label="姓名" prop="name">
          <el-input v-model="UserData.username"></el-input>
        </el-form-item>
        <el-form-item label="身份证号" prop="idcard">
          <el-input v-model="UserData.idcard"></el-input>
        </el-form-item>

        <el-form-item label="手机号码" prop="telephone">
          <el-input v-model="UserData.phonenumber"></el-input>
        </el-form-item>
        <el-form-item label="性别" prop="sex">
          <el-switch
            v-model="UserData.sex"
            active-color="#13ce66"
            inactive-color="#ff4949"
            active-text="男"
            inactive-text="女"
            :active-value="1"
            :inactive-value="0"
          >
          </el-switch>
        </el-form-item>
        <el-form-item label="住址" prop="address">
          <el-input v-model="UserData.address"></el-input>
        </el-form-item>
        <div style="text-align: center;">
          <el-button type="primary">修改</el-button>
        </div>

      </div>
    </el-form>
  </div>
</template>
<script setup>
const {proxy} = getCurrentInstance();
import useUserStore from '@/store/modules/user'
const userStore = useUserStore()
const localinfo = "https://img1.baidu.com/it/u=1056497728,1432074733&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500";

const UserData = ref({
  username: '',
  idCard: '',
  phonenumber: '',
  sex: '',
  address: ''
})
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
