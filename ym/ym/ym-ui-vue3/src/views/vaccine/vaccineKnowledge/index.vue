<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="疫苗知识的标题" prop="Title">
        <el-input
          v-model="queryParams.Title"
          placeholder="请输入疫苗知识的标题"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="接种该疫苗的好处" prop="Benefits">
        <el-input
          v-model="queryParams.Benefits"
          placeholder="请输入接种该疫苗的好处"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="接种该疫苗前需要注意的事项" prop="Instructions">
        <el-input
          v-model="queryParams.Instructions"
          placeholder="请输入接种该疫苗前需要注意的事项"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="疫苗知识的发布时间" prop="PublishTime">
        <el-date-picker clearable
          v-model="queryParams.PublishTime"
          type="date"
          value-format="yyyy-MM-dd"
          placeholder="请选择疫苗知识的发布时间">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="发布疫苗知识的用户或管理员的姓名或标识符" prop="Publisher">
        <el-input
          v-model="queryParams.Publisher"
          placeholder="请输入发布疫苗知识的用户或管理员的姓名或标识符"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="详细描述疫苗知识的文本" prop="Knowledge">
        <el-input
          v-model="queryParams.Knowledge"
          placeholder="请输入详细描述疫苗知识的文本"
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
          v-hasPermi="['vaccine:vaccineKnowledge:add']"
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
          v-hasPermi="['vaccine:vaccineKnowledge:edit']"
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
          v-hasPermi="['vaccine:vaccineKnowledge:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['vaccine:vaccineKnowledge:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="vaccineKnowledgeList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="唯一标识每一条疫苗知识记录的自增ID" align="center" prop="ID" v-if="true"/>
      <el-table-column label="疫苗知识的标题" align="center" prop="Title" />
      <el-table-column label="接种该疫苗的好处" align="center" prop="Benefits" />
      <el-table-column label="接种该疫苗前需要注意的事项" align="center" prop="Instructions" />
      <el-table-column label="疫苗知识的发布时间" align="center" prop="PublishTime" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.PublishTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="发布疫苗知识的用户或管理员的姓名或标识符" align="center" prop="Publisher" />
      <el-table-column label="详细描述疫苗知识的文本" align="center" prop="Knowledge" />
      <el-table-column label="封面图片的URL或路径" align="center" prop="CoverImage" width="100">
        <template slot-scope="scope">
          <image-preview :src="scope.row.CoverImage" :width="50" :height="50"/>
        </template>
      </el-table-column>
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['vaccine:vaccineKnowledge:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['vaccine:vaccineKnowledge:remove']"
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

    <!-- 添加或修改存储疫苗知识信息的对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="疫苗知识的标题" prop="Title">
          <el-input v-model="form.Title" placeholder="请输入疫苗知识的标题" />
        </el-form-item>
        <el-form-item label="接种该疫苗的好处" prop="Benefits">
          <el-input v-model="form.Benefits" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        <el-form-item label="接种该疫苗前需要注意的事项" prop="Instructions">
          <el-input v-model="form.Instructions" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        <el-form-item label="疫苗知识的发布时间" prop="PublishTime">
          <el-date-picker clearable
            v-model="form.PublishTime"
            type="datetime"
            value-format="yyyy-MM-dd HH:mm:ss"
            placeholder="请选择疫苗知识的发布时间">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="发布疫苗知识的用户或管理员的姓名或标识符" prop="Publisher">
          <el-input v-model="form.Publisher" placeholder="请输入发布疫苗知识的用户或管理员的姓名或标识符" />
        </el-form-item>
        <el-form-item label="详细描述疫苗知识的文本" prop="Knowledge">
          <el-input v-model="form.Knowledge" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        <el-form-item label="封面图片的URL或路径" prop="CoverImage">
          <image-upload v-model="form.CoverImage"/>
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
import { listVaccineKnowledge, getVaccineKnowledge, delVaccineKnowledge, addVaccineKnowledge, updateVaccineKnowledge } from "@/api/vaccine/vaccineKnowledge";

export default {
  name: "VaccineKnowledge",
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
      // 存储疫苗知识信息的表格数据
      vaccineKnowledgeList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        Title: undefined,
        Benefits: undefined,
        Instructions: undefined,
        PublishTime: undefined,
        Publisher: undefined,
        Knowledge: undefined,
        CoverImage: undefined
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        ID: [
          { required: true, message: "唯一标识每一条疫苗知识记录的自增ID不能为空", trigger: "blur" }
        ],
        Title: [
          { required: true, message: "疫苗知识的标题不能为空", trigger: "blur" }
        ],
        Benefits: [
          { required: true, message: "接种该疫苗的好处不能为空", trigger: "blur" }
        ],
        Instructions: [
          { required: true, message: "接种该疫苗前需要注意的事项不能为空", trigger: "blur" }
        ],
        PublishTime: [
          { required: true, message: "疫苗知识的发布时间不能为空", trigger: "blur" }
        ],
        Publisher: [
          { required: true, message: "发布疫苗知识的用户或管理员的姓名或标识符不能为空", trigger: "blur" }
        ],
        Knowledge: [
          { required: true, message: "详细描述疫苗知识的文本不能为空", trigger: "blur" }
        ],
        CoverImage: [
          { required: true, message: "封面图片的URL或路径不能为空", trigger: "blur" }
        ]
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询存储疫苗知识信息的列表 */
    getList() {
      this.loading = true;
      listVaccineKnowledge(this.queryParams).then(response => {
        this.vaccineKnowledgeList = response.rows;
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
        ID: undefined,
        Title: undefined,
        Benefits: undefined,
        Instructions: undefined,
        PublishTime: undefined,
        Publisher: undefined,
        Knowledge: undefined,
        CoverImage: undefined
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
      this.ids = selection.map(item => item.ID)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加存储疫苗知识信息的";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.loading = true;
      this.reset();
      const ID = row.ID || this.ids
      getVaccineKnowledge(ID).then(response => {
        this.loading = false;
        this.form = response.data;
        this.open = true;
        this.title = "修改存储疫苗知识信息的";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          this.buttonLoading = true;
          if (this.form.ID != null) {
            updateVaccineKnowledge(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            }).finally(() => {
              this.buttonLoading = false;
            });
          } else {
            addVaccineKnowledge(this.form).then(response => {
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
      const IDs = row.ID || this.ids;
      this.$modal.confirm('是否确认删除存储疫苗知识信息的编号为"' + IDs + '"的数据项？').then(() => {
        this.loading = true;
        return delVaccineKnowledge(IDs);
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
      this.download('vaccine/vaccineKnowledge/export', {
        ...this.queryParams
      }, `vaccineKnowledge_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
