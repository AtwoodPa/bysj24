<template>
  <div>
    <p>PersonalCenter</p>
    <router-view/>
    <button @click="logout" >退出登录</button>
  </div>
</template>

<script setup name="PersonalCenter">
import {ElMessageBox} from "element-plus";
const router = useRouter();
import useUserStore from '@/store/modules/user'
const userStore = useUserStore()
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

  }).catch(() => { });
}
</script>


<style scoped lang="scss">

</style>
