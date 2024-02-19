<template>
  <div class="app-container">
    <el-table v-loading="loading" :data="appointList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="ID" align="center" prop="id" v-if="true"/>
      <el-table-column label="预约用户信息" align="center" prop="userId" />
      <el-table-column label="预约日期" align="center" prop="appointDate" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.appointDate, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="时间段" align="center" prop="timeSlot" />
      <el-table-column label="预约状态" align="center" prop="status" />
      <el-table-column label="接种站点信息" align="center" prop="inoculateSiteId" />
      <el-table-column label="疫苗信息" align="center" prop="vaccineId" />
      <el-table-column label="第几针" align="center" prop="whichPin" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['vaccine:appoint:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['vaccine:appoint:remove']"
          >删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <pagination
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改疫苗预约对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="预约用户信息" prop="userId">
          <el-input v-model="form.userId" placeholder="请输入预约用户信息" />
        </el-form-item>
        <el-form-item label="预约日期" prop="appointDate">
          <el-date-picker clearable
            v-model="form.appointDate"
            type="datetime"
            value-format="yyyy-MM-dd HH:mm:ss"
            placeholder="请选择预约日期">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="上午 or 下午" prop="timeSlot">
          <el-input v-model="form.timeSlot" placeholder="请输入上午 or 下午" />
        </el-form-item>
        <el-form-item label="预约状态" prop="status">
          <el-input v-model="form.status" placeholder="请输入预约状态" />
        </el-form-item>
        <el-form-item label="接种站点信息" prop="inoculateSiteId">
          <el-input v-model="form.inoculateSiteId" placeholder="请输入接种站点信息" />
        </el-form-item>
        <el-form-item label="疫苗信息" prop="vaccineId">
          <el-input v-model="form.vaccineId" placeholder="请输入疫苗信息" />
        </el-form-item>
        <el-form-item label="第几针" prop="whichPin">
          <el-input v-model="form.whichPin" placeholder="请输入第几针" />
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
import { listAppoint, getAppoint, delAppoint, addAppoint, updateAppoint } from "@/api/vaccine/appoint";

export default {
  name: "Appoint",
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
      // 疫苗预约表格数据
      appointList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        userId: undefined,
        appointDate: undefined,
        timeSlot: undefined,
        status: undefined,
        inoculateSiteId: undefined,
        vaccineId: undefined,
        whichPin: undefined,
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        id: [
          { required: true, message: "不能为空", trigger: "blur" }
        ],
        userId: [
          { required: true, message: "预约用户信息不能为空", trigger: "blur" }
        ],
        appointDate: [
          { required: true, message: "预约日期不能为空", trigger: "blur" }
        ],
        timeSlot: [
          { required: true, message: "上午 or 下午不能为空", trigger: "blur" }
        ],
        status: [
          { required: true, message: "预约状态不能为空", trigger: "blur" }
        ],
        inoculateSiteId: [
          { required: true, message: "接种站点信息不能为空", trigger: "blur" }
        ],
        vaccineId: [
          { required: true, message: "疫苗信息不能为空", trigger: "blur" }
        ],
        whichPin: [
          { required: true, message: "第几针不能为空", trigger: "blur" }
        ],
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询疫苗预约列表 */
    getList() {
      this.loading = true;
      listAppoint(this.queryParams).then(response => {
        this.appointList = response.rows;
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
        userId: undefined,
        appointDate: undefined,
        timeSlot: undefined,
        status: undefined,
        inoculateSiteId: undefined,
        vaccineId: undefined,
        whichPin: undefined,
        createTime: undefined
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
      this.title = "添加疫苗预约";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.loading = true;
      this.reset();
      const id = row.id || this.ids
      getAppoint(id).then(response => {
        this.loading = false;
        this.form = response.data;
        this.open = true;
        this.title = "修改疫苗预约";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          this.buttonLoading = true;
          if (this.form.id != null) {
            updateAppoint(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            }).finally(() => {
              this.buttonLoading = false;
            });
          } else {
            addAppoint(this.form).then(response => {
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
      this.$modal.confirm('是否确认删除疫苗预约编号为"' + ids + '"的数据项？').then(() => {
        this.loading = true;
        return delAppoint(ids);
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
      this.download('vaccine/appoint/export', {
        ...this.queryParams
      }, `appoint_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
