<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm"  :inline="true" v-show="showSearch" label-width="100px">
      <el-form-item label="接种人姓名" prop="note">
        <el-input
          v-model="queryParams.note"
          placeholder="请输入接种人姓名"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="Search"  @click="handleQuery">搜索</el-button>
        <el-button icon="Refresh"  @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>



    <el-table v-loading="loading" :data="inoculateList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="ID" width="55" align="center" prop="id" v-if="true"/>
      <el-table-column label="接种人姓名" align="center" prop="part" />
      <el-table-column label="接种部位" align="center" prop="part" />
      <el-table-column label="疫苗名称" align="center" prop="vaccineName" />
      <el-table-column label="医护人员姓名" align="center" prop="vaccineName" />
      <el-table-column label="接种时间" align="center" prop="vaccineName" />
      <el-table-column label="接种点名称" align="center" prop="vaccineName" />
      <el-table-column label="疫苗批号" align="center" prop="vaccineBatchCode" />
      <el-table-column label="备注" align="center" prop="note" />
    </el-table>

    <pagination
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改疫苗接种记录对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="" prop="part">
          <el-input v-model="form.part" placeholder="请输入" />
        </el-form-item>
        <el-form-item label="" prop="vaccineBatchCode">
          <el-input v-model="form.vaccineBatchCode" placeholder="请输入" />
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
import { listInoculate, getInoculate, delInoculate, addInoculate, updateInoculate } from "@/api/vaccine/inoculate";

export default {
  name: "Inoculate",
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
      // 疫苗接种记录表格数据
      inoculateList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        part: undefined,
        vaccineBatchCode: undefined,
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
        part: [
          { required: true, message: "不能为空", trigger: "blur" }
        ],
        vaccineBatchCode: [
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
    /** 查询疫苗接种记录列表 */
    getList() {
      this.loading = true;
      listInoculate(this.queryParams).then(response => {
        this.inoculateList = response.rows;
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
        part: undefined,
        vaccineBatchCode: undefined,
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
      this.title = "添加疫苗接种记录";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.loading = true;
      this.reset();
      const id = row.id || this.ids
      getInoculate(id).then(response => {
        this.loading = false;
        this.form = response.data;
        this.open = true;
        this.title = "修改疫苗接种记录";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          this.buttonLoading = true;
          if (this.form.id != null) {
            updateInoculate(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            }).finally(() => {
              this.buttonLoading = false;
            });
          } else {
            addInoculate(this.form).then(response => {
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
      this.$modal.confirm('是否确认删除疫苗接种记录编号为"' + ids + '"的数据项？').then(() => {
        this.loading = true;
        return delInoculate(ids);
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
      this.download('vaccine/inoculate/export', {
        ...this.queryParams
      }, `inoculate_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
