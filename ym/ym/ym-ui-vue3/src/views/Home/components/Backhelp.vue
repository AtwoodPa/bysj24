<template>

  <div style="margin-top:108px;">
    <el-row>
      <el-col :span="2"></el-col>
        <el-col :span="20">
          <el-tabs class="demo-tabs" :stretch=true>


          <el-tab-pane>
            <template #label>
              <span class="custom-tabs-label">
                <el-icon><CollectionTag /></el-icon>
                <div>常见问题</div>
              </span>
            </template>
            <div class="textitem">
              <h3 style=" text-align: center; margin: 20px auto;">常见宽带故障处理流程</h3>
              <p>1、用户电脑使用不正常</p>
              <p>电脑速度慢或开机后越来越慢，鼠标长时间无反应或极慢，上网后电脑无故重启。这可能是电脑感染病毒或系统有问题，建议用杀毒软件杀毒，杀毒后系统还不正常，需请专业人员维修</p>
              <p>2、移动测速网站测速</p>
              <p>可登录测速平台<el-link type="primary" href="https://chat.forchange.cn/" target="_blank">https://chat.forchange.cn/</el-link>安装好插件点击测试哦</p>
              <p>3、其他影响上网速率的因素</p><p>当访问某个网站出现网速很慢时，可换几个常访问的其他网站试试，如果速度正常，说明该网站变慢是自身的问题
                如访问国外网站会比较慢;无线路由器没有设置密码，被别人盗用;是否是多机上网或链接数过多</p>
            </div>
          </el-tab-pane>

          <el-tab-pane>
            <template #label>
              <span class="custom-tabs-label">
                <el-icon><ChatDotRound /></el-icon>
                <div>接种须知</div>
              </span>
            </template>
            <el-row> <el-col :span="4"></el-col>
              <el-col :span="16">
                <h4>疫苗打完禁忌症和注意事项</h4>
            <el-collapse  accordion>
              <el-collapse-item name="1">
                <template #title>
                        <h5>接种后留观</h5>
                </template>
                <div>1.接种后留观：</div>
                <div>接种疫苗有引起严重不良反应的可能，因此接种疫苗后最好在接种现场观察至少30分钟，如果30分钟内没有异常现象则可正常离开，30分钟内出现任何异常均应联系医生或接种人员。</div>
              </el-collapse-item>
              <el-collapse-item  name="2">
                <template #title>
                        <h5>注意饮食</h5>
                </template>
                <div>2.注意饮食：</div>
                <div>建议清淡饮食、多喝水。资料显示，接种疫苗后一周内应避免进食辛辣刺激食物及海鲜类食物，避免饮用含有乙醇成分的饮品。</div>
              </el-collapse-item>
              <el-collapse-item  name="3">
                <template #title>
                        <h5>注意局部卫生</h5>
                </template>
                <div>3.注意局部卫生：</div>
                <div>接种疫苗者在接种后当日应避免注射部位沾水并注意局部卫生，以防皮肤感染。</div>
              </el-collapse-item>
              <el-collapse-item  name="4">
                <template #title>
                        <h5>注意过敏原</h5>
                </template>
                <div>4.注意过敏原：</div>
                <div>避免接触个人既往已知过敏物及常见过敏原（宠物毛发、尘螨、花粉等）。</div>
              </el-collapse-item>
              <el-collapse-item  name="5">
                <template #title>
                        <h5>不要剧烈运动</h5>
                </template>
                <div>5.不要剧烈运动：</div>
                <div>如跑步、打球、大运动量器械健身等等。若身体不适，建议及时前往医院就诊。</div>
              </el-collapse-item>
            </el-collapse>
          </el-col>
          <el-col :span="4"></el-col>
        </el-row>
          </el-tab-pane>

          <el-tab-pane>
            <template #label>
              <span class="custom-tabs-label">
                <el-icon><Position /></el-icon>
                <div>预约流程</div>
              </span>
            </template>
            <el-steps :active="1" align-center>
              <el-step title="第一步" description="填写个人信息，确认个人信息" />
              <el-step title="第二步" description="选择疫苗，填写预约信息" />
              <el-step title="第三步" description="确认无误后提交" />
              <el-step title="第四步" description="预约信息可以在个人中心和预约信息菜单栏下查看" />
            </el-steps>
          </el-tab-pane>

          <el-tab-pane>
            <template #label>
              <span class="custom-tabs-label">
                <el-icon><Crop /></el-icon>
                <div>安全隐私</div>
              </span>
            </template>
            <div class="textitem">
              <h3 style=" text-align: center; margin: 20px auto;">提示条款：</h3>
              <p>您的信任对我们非常重要，我们深知个人信息对您的重要性，我们将按法律法规要求，采取相应安全保护措施，尽力保护您的个人信息安全可控。鉴此，我们制定本政策并提醒您：</p>
              <p>本政策适用于此网站产品或服务。需要特别说明的是， 本政策不适用于其他第三方向您提供的服务。</p>
              <p>您使用或继续使用我们的服务，即意味着同意我们按照本《隐私政策》收集、使用、储存和分享您的相关信息。</p>
              <p>如对本政策或相关事宜有任何问题，请通过客服与我们联系。</p>
            </div>
          </el-tab-pane>
        </el-tabs>
        </el-col>
        <el-col :span="2"></el-col>
    </el-row>
 <div class="theend">
  <div class="endproblem">没有找到答案？ 或接种疫苗仍有问题？</div>
   <el-button type="primary" class="endbut" @click="addmessage">联系反馈</el-button>
 </div>
</div>
  <!-- 添加反馈的弹窗 -->
  <el-dialog title="反馈帮助" v-model="dialogFormVisible" width="50%">
    <el-form :model="form" :rules="rules" ref="ruleForm" label-width="100px">
      <el-form-item label="身份证号" label-width="100px">
        <el-input v-model="form.userid"></el-input>
      </el-form-item>
      <el-form-item label="反馈信息" label-width="100px" prop="themessage">
        <el-input v-model="form.message"></el-input>
      </el-form-item>
      <el-form-item label="开始时间" label-width="100px" prop="thetime">
        <el-date-picker
          v-model="form.submittime"
          type="datetime"
          format="YYYY-MM-DD HH:mm:ss"
          value-format="YYYY-MM-DD HH:mm:ss"
          placeholder="选择日期和时间"
        />
      </el-form-item>
    </el-form>
    <template #footer>
        <span class="dialog-footer">
          <el-button @click="dialogFormVisible = false"> 取消</el-button>
          <el-button type="primary" @click="saveData('ruleForm')"> 确认</el-button>
        </span>
    </template>
  </el-dialog>
</template>

<script setup name="BackHelp">
import { addFeedback } from "@/api/vaccine/feedback";

const { proxy } = getCurrentInstance();
const dialogFormVisible = ref(false);
const ruleForm = ref({});

const data = reactive({
  form: {},
  rules: {
    userid: [{ required: true, message: "身份证号不能为空", trigger: "blur" }],
    message: [{ required: true, message: "反馈信息不能为空", trigger: "blur" }],
    submittime: [{ required: true, message: "请选择日期和时间", trigger: "blur" }]
  },
});

const {  form, rules } = toRefs(data);
function saveData(){

  proxy.$refs["ruleForm"].validate(valid => {
    addFeedback(form.value).then(resp => {
      proxy.$modal.msgSuccess("新增成功");
      dialogFormVisible.value = false;
    })
  });

}
function addmessage(row){
  dialogFormVisible.value = true;

}

</script>

<style>
.custom-tabs-label {
  text-align: center;
}
.el-tabs__item {
  line-height: 35px;
}
.el-tabs {
  --el-tabs-header-height: 100px;
}
.demo-tabs .custom-tabs-label .el-icon {
  vertical-align: middle;
  font-size: 48px;
}
.theend {
  text-align: center;
}
.endproblem {
  font-size: 25px;
  margin-top: 100px;
}
.endbut {
  margin-top: 50px;

}
.textitem p {
    text-indent: 2em;
    font-size: 16px;
    line-height: 28px;
    display: -webkit-box;
}
</style>
