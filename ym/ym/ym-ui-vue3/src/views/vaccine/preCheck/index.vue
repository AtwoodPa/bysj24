<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="default" :inline="true" v-show="showSearch" label-width="100px">
      <el-form-item label="接种人姓名" prop="note">
        <el-input
          v-model="queryParams.note"
          placeholder="请输入"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="Search"  @click="handleQuery">搜索</el-button>
        <el-button icon="Refresh"  @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-table v-loading="loading" :data="preCheckList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="ID" align="center" prop="id" v-if="true"/>
      <el-table-column label="接种人姓名" align="center" prop="appointId" />
      <el-table-column label="是否服药" align="center" prop="isMedicine" />
      <el-table-column label="药物名称" align="center" prop="medicine" />
      <el-table-column label="是否禁忌症" align="center" prop="isContraindication" />
      <el-table-column label="禁忌症名称" align="center" prop="contraindication" />
      <el-table-column label="高压值" align="center" prop="bloodPressureHigh" />
      <el-table-column label="低压值" align="center" prop="bloodPressureLow" />
      <el-table-column label="体温" align="center" prop="temperature" />
      <el-table-column label="医护人员名称" align="center" prop="workerId" />
      <el-table-column label="预检时间" align="center" prop="workerId" />
      <el-table-column label="接种点名称" align="center" prop="workerId" />
      <el-table-column label="备注" align="center" prop="note" />

    </el-table>

    <pagination
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改预检信息查询对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="" prop="isMedicine">
          <el-input v-model="form.isMedicine" placeholder="请输入" />
        </el-form-item>
        <el-form-item label="" prop="medicine">
          <el-input v-model="form.medicine" placeholder="请输入" />
        </el-form-item>
        <el-form-item label="" prop="isContraindication">
          <el-input v-model="form.isContraindication" placeholder="请输入" />
        </el-form-item>
        <el-form-item label="" prop="contraindication">
          <el-input v-model="form.contraindication" placeholder="请输入" />
        </el-form-item>
        <el-form-item label="" prop="bloodPressureHigh">
          <el-input v-model="form.bloodPressureHigh" placeholder="请输入" />
        </el-form-item>
        <el-form-item label="" prop="bloodPressureLow">
          <el-input v-model="form.bloodPressureLow" placeholder="请输入" />
        </el-form-item>
        <el-form-item label="" prop="temperature">
          <el-input v-model="form.temperature" placeholder="请输入" />
        </el-form-item>
        <el-form-item label="" prop="workerId">
          <el-input v-model="form.workerId" placeholder="请输入" />
        </el-form-item>
        <el-form-item label="" prop="appointId">
          <el-input v-model="form.appointId" placeholder="请输入" />
        </el-form-item>
        <el-form-item label="" prop="note">
          <el-input v-model="form.note" placeholder="请输入" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button :loading="buttonLoading" type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import { listPreCheck, getPreCheck, delPreCheck, addPreCheck, updatePreCheck } from "@/api/vaccine/preCheck";

export default {
  name: "PreCheck",
  data() {
    return {
      // 按钮loading
      buttonLoading: false,
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 预检信息查询表格数据
      preCheckList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        isMedicine: undefined,
        medicine: undefined,
        isContraindication: undefined,
        contraindication: undefined,
        bloodPressureHigh: undefined,
        bloodPressureLow: undefined,
        temperature: undefined,
        workerId: undefined,
        appointId: undefined,
        note: undefined
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        id: [
          { required: true, message: "不能为空", trigger: "blur" }
        ],
        isMedicine: [
          { required: true, message: "不能为空", trigger: "blur" }
        ],
        medicine: [
          { required: true, message: "不能为空", trigger: "blur" }
        ],
        isContraindication: [
          { required: true, message: "不能为空", trigger: "blur" }
        ],
        contraindication: [
          { required: true, message: "不能为空", trigger: "blur" }
        ],
        bloodPressureHigh: [
          { required: true, message: "不能为空", trigger: "blur" }
        ],
        bloodPressureLow: [
          { required: true, message: "不能为空", trigger: "blur" }
        ],
        temperature: [
          { required: true, message: "不能为空", trigger: "blur" }
        ],
        workerId: [
          { required: true, message: "不能为空", trigger: "blur" }
        ],
        appointId: [
          { required: true, message: "不能为空", trigger: "blur" }
        ],
        note: [
          { required: true, message: "不能为空", trigger: "blur" }
        ]
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询预检信息查询列表 */
    getList() {
      this.loading = true;
      listPreCheck(this.queryParams).then(response => {
        this.preCheckList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 表单重置
    reset() {
      this.form = {
        id: undefined,
        isMedicine: undefined,
        medicine: undefined,
        isContraindication: undefined,
        contraindication: undefined,
        bloodPressureHigh: undefined,
        bloodPressureLow: undefined,
        temperature: undefined,
        workerId: undefined,
        createTime: undefined,
        appointId: undefined,
        note: undefined
      };
      this.resetForm("form");
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNum = 1;
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.resetForm("queryForm");
      this.handleQuery();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.id)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加预检信息查询";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.loading = true;
      this.reset();
      const id = row.id || this.ids
      getPreCheck(id).then(response => {
        this.loading = false;
        this.form = response.data;
        this.open = true;
        this.title = "修改预检信息查询";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          this.buttonLoading = true;
          if (this.form.id != null) {
            updatePreCheck(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            }).finally(() => {
              this.buttonLoading = false;
            });
          } else {
            addPreCheck(this.form).then(response => {
              this.$modal.msgSuccess("新增成功");
              this.open = false;
              this.getList();
            }).finally(() => {
              this.buttonLoading = false;
            });
          }
        }
      });
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      const ids = row.id || this.ids;
      this.$modal.confirm('是否确认删除预检信息查询编号为"' + ids + '"的数据项？').then(() => {
        this.loading = true;
        return delPreCheck(ids);
      }).then(() => {
        this.loading = false;
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {
      }).finally(() => {
        this.loading = false;
      });
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('vaccine/preCheck/export', {
        ...this.queryParams
      }, `preCheck_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
