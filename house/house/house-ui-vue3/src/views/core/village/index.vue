<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="省" prop="province">
        <el-input
          v-model="queryParams.province"
          placeholder="请输入省"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="市" prop="city">
        <el-input
          v-model="queryParams.city"
          placeholder="请输入市"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="区" prop="area">
        <el-input
          v-model="queryParams.area"
          placeholder="请输入区"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="名称" prop="name">
        <el-input
          v-model="queryParams.name"
          placeholder="请输入名称"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="代号" prop="code">
        <el-input
          v-model="queryParams.code"
          placeholder="请输入代号"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="年份" prop="year">
        <el-input
          v-model="queryParams.year"
          placeholder="请输入年份"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="绿化率" prop="green">
        <el-input
          v-model="queryParams.green"
          placeholder="请输入绿化率"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="介绍" prop="introduce">
        <el-input
          v-model="queryParams.introduce"
          placeholder="请输入介绍"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="靠近地铁" prop="wayState">
        <el-input
          v-model="queryParams.wayState"
          placeholder="请输入靠近地铁"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="地铁线路" prop="wayCode">
        <el-input
          v-model="queryParams.wayCode"
          placeholder="请输入地铁线路"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="地铁距离" prop="waySpace">
        <el-input
          v-model="queryParams.waySpace"
          placeholder="请输入地铁距离"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="经度" prop="lon">
        <el-input
          v-model="queryParams.lon"
          placeholder="请输入经度"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="纬度" prop="Lat">
        <el-input
          v-model="queryParams.Lat"
          placeholder="请输入纬度"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="状态" prop="state">
        <el-input
          v-model="queryParams.state"
          placeholder="请输入状态"
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
          v-hasPermi="['core:village:add']"
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
          v-hasPermi="['core:village:edit']"
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
          v-hasPermi="['core:village:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['core:village:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="villageList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="id" align="center" prop="id" v-if="true"/>
      <el-table-column label="省" align="center" prop="province" />
      <el-table-column label="市" align="center" prop="city" />
      <el-table-column label="区" align="center" prop="area" />
      <el-table-column label="名称" align="center" prop="name" />
      <el-table-column label="代号" align="center" prop="code" />
      <el-table-column label="年份" align="center" prop="year" />
      <el-table-column label="建筑类型" align="center" prop="type" />
      <el-table-column label="绿化率" align="center" prop="green" />
      <el-table-column label="介绍" align="center" prop="introduce" />
      <el-table-column label="靠近地铁" align="center" prop="wayState" />
      <el-table-column label="地铁线路" align="center" prop="wayCode" />
      <el-table-column label="地铁距离" align="center" prop="waySpace" />
      <el-table-column label="经度" align="center" prop="lon" />
      <el-table-column label="纬度" align="center" prop="Lat" />
      <el-table-column label="状态" align="center" prop="state" />
      <el-table-column label="" align="center" prop="remark" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['core:village:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['core:village:remove']"
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

    <!-- 添加或修改小区管理对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="省" prop="province">
          <el-input v-model="form.province" placeholder="请输入省" />
        </el-form-item>
        <el-form-item label="市" prop="city">
          <el-input v-model="form.city" placeholder="请输入市" />
        </el-form-item>
        <el-form-item label="区" prop="area">
          <el-input v-model="form.area" placeholder="请输入区" />
        </el-form-item>
        <el-form-item label="名称" prop="name">
          <el-input v-model="form.name" placeholder="请输入名称" />
        </el-form-item>
        <el-form-item label="代号" prop="code">
          <el-input v-model="form.code" placeholder="请输入代号" />
        </el-form-item>
        <el-form-item label="年份" prop="year">
          <el-input v-model="form.year" placeholder="请输入年份" />
        </el-form-item>
        <el-form-item label="绿化率" prop="green">
          <el-input v-model="form.green" placeholder="请输入绿化率" />
        </el-form-item>
        <el-form-item label="介绍" prop="introduce">
          <el-input v-model="form.introduce" placeholder="请输入介绍" />
        </el-form-item>
        <el-form-item label="靠近地铁" prop="wayState">
          <el-input v-model="form.wayState" placeholder="请输入靠近地铁" />
        </el-form-item>
        <el-form-item label="地铁线路" prop="wayCode">
          <el-input v-model="form.wayCode" placeholder="请输入地铁线路" />
        </el-form-item>
        <el-form-item label="地铁距离" prop="waySpace">
          <el-input v-model="form.waySpace" placeholder="请输入地铁距离" />
        </el-form-item>
        <el-form-item label="经度" prop="lon">
          <el-input v-model="form.lon" placeholder="请输入经度" />
        </el-form-item>
        <el-form-item label="纬度" prop="Lat">
          <el-input v-model="form.Lat" placeholder="请输入纬度" />
        </el-form-item>
        <el-form-item label="状态" prop="state">
          <el-input v-model="form.state" placeholder="请输入状态" />
        </el-form-item>
        <el-form-item label="" prop="remark">
          <el-input v-model="form.remark" placeholder="请输入" />
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
import { listVillage, getVillage, delVillage, addVillage, updateVillage } from "@/api/core/village";

export default {
  name: "Village",
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
      // 小区管理表格数据
      villageList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        province: undefined,
        city: undefined,
        area: undefined,
        name: undefined,
        code: undefined,
        year: undefined,
        type: undefined,
        green: undefined,
        introduce: undefined,
        wayState: undefined,
        wayCode: undefined,
        waySpace: undefined,
        lon: undefined,
        Lat: undefined,
        state: undefined,
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        id: [
          { required: true, message: "id不能为空", trigger: "blur" }
        ],
        province: [
          { required: true, message: "省不能为空", trigger: "blur" }
        ],
        city: [
          { required: true, message: "市不能为空", trigger: "blur" }
        ],
        area: [
          { required: true, message: "区不能为空", trigger: "blur" }
        ],
        name: [
          { required: true, message: "名称不能为空", trigger: "blur" }
        ],
        code: [
          { required: true, message: "代号不能为空", trigger: "blur" }
        ],
        year: [
          { required: true, message: "年份不能为空", trigger: "blur" }
        ],
        type: [
          { required: true, message: "建筑类型不能为空", trigger: "change" }
        ],
        green: [
          { required: true, message: "绿化率不能为空", trigger: "blur" }
        ],
        introduce: [
          { required: true, message: "介绍不能为空", trigger: "blur" }
        ],
        wayState: [
          { required: true, message: "靠近地铁不能为空", trigger: "blur" }
        ],
        wayCode: [
          { required: true, message: "地铁线路不能为空", trigger: "blur" }
        ],
        waySpace: [
          { required: true, message: "地铁距离不能为空", trigger: "blur" }
        ],
        lon: [
          { required: true, message: "经度不能为空", trigger: "blur" }
        ],
        Lat: [
          { required: true, message: "纬度不能为空", trigger: "blur" }
        ],
        state: [
          { required: true, message: "状态不能为空", trigger: "blur" }
        ],
        remark: [
          { required: true, message: "不能为空", trigger: "blur" }
        ]
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询小区管理列表 */
    getList() {
      this.loading = true;
      listVillage(this.queryParams).then(response => {
        this.villageList = response.rows;
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
        province: undefined,
        city: undefined,
        area: undefined,
        name: undefined,
        code: undefined,
        year: undefined,
        type: undefined,
        green: undefined,
        introduce: undefined,
        wayState: undefined,
        wayCode: undefined,
        waySpace: undefined,
        lon: undefined,
        Lat: undefined,
        state: undefined,
        createTime: undefined,
        createBy: undefined,
        updateTime: undefined,
        updateBy: undefined,
        remark: undefined
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
      this.title = "添加小区管理";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.loading = true;
      this.reset();
      const id = row.id || this.ids
      getVillage(id).then(response => {
        this.loading = false;
        this.form = response.data;
        this.open = true;
        this.title = "修改小区管理";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          this.buttonLoading = true;
          if (this.form.id != null) {
            updateVillage(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            }).finally(() => {
              this.buttonLoading = false;
            });
          } else {
            addVillage(this.form).then(response => {
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
      this.$modal.confirm('是否确认删除小区管理编号为"' + ids + '"的数据项？').then(() => {
        this.loading = true;
        return delVillage(ids);
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
      this.download('core/village/export', {
        ...this.queryParams
      }, `village_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
