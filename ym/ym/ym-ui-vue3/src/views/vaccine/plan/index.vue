<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="" prop="startDate">
        <el-date-picker clearable
                        v-model="queryParams.startDate"
                        type="date"
                        value-format="yyyy-MM-dd"
                        placeholder="请选择">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="" prop="endDate">
        <el-date-picker clearable
                        v-model="queryParams.endDate"
                        type="date"
                        value-format="yyyy-MM-dd"
                        placeholder="请选择">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="" prop="startTimeMorning">
        <el-input
          v-model="queryParams.startTimeMorning"
          placeholder="请输入"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="" prop="endTimeMorning">
        <el-input
          v-model="queryParams.endTimeMorning"
          placeholder="请输入"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="" prop="startTimeAfternoon">
        <el-input
          v-model="queryParams.startTimeAfternoon"
          placeholder="请输入"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="" prop="endTimeAfternoon">
        <el-input
          v-model="queryParams.endTimeAfternoon"
          placeholder="请输入"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="" prop="vaccineId">
        <el-input
          v-model="queryParams.vaccineId"
          placeholder="请输入"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="" prop="inoculateSiteId">
        <el-input
          v-model="queryParams.inoculateSiteId"
          placeholder="请输入"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="" prop="amount">
        <el-input
          v-model="queryParams.amount"
          placeholder="请输入"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="" prop="startTimeEvening">
        <el-input
          v-model="queryParams.startTimeEvening"
          placeholder="请输入"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="" prop="endTimeEvening">
        <el-input
          v-model="queryParams.endTimeEvening"
          placeholder="请输入"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="" prop="morningLimit">
        <el-input
          v-model="queryParams.morningLimit"
          placeholder="请输入"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="" prop="afternoonLimit">
        <el-input
          v-model="queryParams.afternoonLimit"
          placeholder="请输入"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="" prop="eveningLimit">
        <el-input
          v-model="queryParams.eveningLimit"
          placeholder="请输入"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['vaccine:plan:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['vaccine:plan:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['vaccine:plan:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['vaccine:plan:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="planList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="" align="center" prop="id" v-if="true"/>
      <el-table-column label="" align="center" prop="startDate" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.startDate, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="" align="center" prop="endDate" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.endDate, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="" align="center" prop="startTimeMorning" />
      <el-table-column label="" align="center" prop="endTimeMorning" />
      <el-table-column label="" align="center" prop="startTimeAfternoon" />
      <el-table-column label="" align="center" prop="endTimeAfternoon" />
      <el-table-column label="" align="center" prop="vaccineId" />
      <el-table-column label="" align="center" prop="inoculateSiteId" />
      <el-table-column label="" align="center" prop="amount" />
      <el-table-column label="" align="center" prop="startTimeEvening" />
      <el-table-column label="" align="center" prop="endTimeEvening" />
      <el-table-column label="" align="center" prop="morningLimit" />
      <el-table-column label="" align="center" prop="afternoonLimit" />
      <el-table-column label="" align="center" prop="eveningLimit" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['vaccine:plan:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['vaccine:plan:remove']"
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

    <!-- 添加或修改预约计划管理对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="" prop="startDate">
          <el-date-picker clearable
                          v-model="form.startDate"
                          type="datetime"
                          value-format="yyyy-MM-dd HH:mm:ss"
                          placeholder="请选择">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="" prop="endDate">
          <el-date-picker clearable
                          v-model="form.endDate"
                          type="datetime"
                          value-format="yyyy-MM-dd HH:mm:ss"
                          placeholder="请选择">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="" prop="startTimeMorning">
          <el-input v-model="form.startTimeMorning" placeholder="请输入" />
        </el-form-item>
        <el-form-item label="" prop="endTimeMorning">
          <el-input v-model="form.endTimeMorning" placeholder="请输入" />
        </el-form-item>
        <el-form-item label="" prop="startTimeAfternoon">
          <el-input v-model="form.startTimeAfternoon" placeholder="请输入" />
        </el-form-item>
        <el-form-item label="" prop="endTimeAfternoon">
          <el-input v-model="form.endTimeAfternoon" placeholder="请输入" />
        </el-form-item>
        <el-form-item label="" prop="vaccineId">
          <el-input v-model="form.vaccineId" placeholder="请输入" />
        </el-form-item>
        <el-form-item label="" prop="inoculateSiteId">
          <el-input v-model="form.inoculateSiteId" placeholder="请输入" />
        </el-form-item>
        <el-form-item label="" prop="amount">
          <el-input v-model="form.amount" placeholder="请输入" />
        </el-form-item>
        <el-form-item label="" prop="startTimeEvening">
          <el-input v-model="form.startTimeEvening" placeholder="请输入" />
        </el-form-item>
        <el-form-item label="" prop="endTimeEvening">
          <el-input v-model="form.endTimeEvening" placeholder="请输入" />
        </el-form-item>
        <el-form-item label="" prop="morningLimit">
          <el-input v-model="form.morningLimit" placeholder="请输入" />
        </el-form-item>
        <el-form-item label="" prop="afternoonLimit">
          <el-input v-model="form.afternoonLimit" placeholder="请输入" />
        </el-form-item>
        <el-form-item label="" prop="eveningLimit">
          <el-input v-model="form.eveningLimit" placeholder="请输入" />
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
import { listPlan, getPlan, delPlan, addPlan, updatePlan } from "@/api/vaccine/plan";

export default {
  name: "Plan",
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
      // 预约计划管理表格数据
      planList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        startDate: undefined,
        endDate: undefined,
        startTimeMorning: undefined,
        endTimeMorning: undefined,
        startTimeAfternoon: undefined,
        endTimeAfternoon: undefined,
        vaccineId: undefined,
        inoculateSiteId: undefined,
        amount: undefined,
        startTimeEvening: undefined,
        endTimeEvening: undefined,
        morningLimit: undefined,
        afternoonLimit: undefined,
        eveningLimit: undefined
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        id: [
          { required: true, message: "不能为空", trigger: "blur" }
        ],
        startDate: [
          { required: true, message: "不能为空", trigger: "blur" }
        ],
        endDate: [
          { required: true, message: "不能为空", trigger: "blur" }
        ],
        startTimeMorning: [
          { required: true, message: "不能为空", trigger: "blur" }
        ],
        endTimeMorning: [
          { required: true, message: "不能为空", trigger: "blur" }
        ],
        startTimeAfternoon: [
          { required: true, message: "不能为空", trigger: "blur" }
        ],
        endTimeAfternoon: [
          { required: true, message: "不能为空", trigger: "blur" }
        ],
        vaccineId: [
          { required: true, message: "不能为空", trigger: "blur" }
        ],
        inoculateSiteId: [
          { required: true, message: "不能为空", trigger: "blur" }
        ],
        amount: [
          { required: true, message: "不能为空", trigger: "blur" }
        ],
        startTimeEvening: [
          { required: true, message: "不能为空", trigger: "blur" }
        ],
        endTimeEvening: [
          { required: true, message: "不能为空", trigger: "blur" }
        ],
        morningLimit: [
          { required: true, message: "不能为空", trigger: "blur" }
        ],
        afternoonLimit: [
          { required: true, message: "不能为空", trigger: "blur" }
        ],
        eveningLimit: [
          { required: true, message: "不能为空", trigger: "blur" }
        ]
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询预约计划管理列表 */
    getList() {
      this.loading = true;
      listPlan(this.queryParams).then(response => {
        this.planList = response.rows;
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
        startDate: undefined,
        endDate: undefined,
        startTimeMorning: undefined,
        endTimeMorning: undefined,
        startTimeAfternoon: undefined,
        endTimeAfternoon: undefined,
        vaccineId: undefined,
        inoculateSiteId: undefined,
        amount: undefined,
        startTimeEvening: undefined,
        endTimeEvening: undefined,
        morningLimit: undefined,
        afternoonLimit: undefined,
        eveningLimit: undefined
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
      this.title = "添加预约计划管理";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.loading = true;
      this.reset();
      const id = row.id || this.ids
      getPlan(id).then(response => {
        this.loading = false;
        this.form = response.data;
        this.open = true;
        this.title = "修改预约计划管理";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          this.buttonLoading = true;
          if (this.form.id != null) {
            updatePlan(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            }).finally(() => {
              this.buttonLoading = false;
            });
          } else {
            addPlan(this.form).then(response => {
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
      this.$modal.confirm('是否确认删除预约计划管理编号为"' + ids + '"的数据项？').then(() => {
        this.loading = true;
        return delPlan(ids);
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
      this.download('vaccine/plan/export', {
        ...this.queryParams
      }, `plan_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
