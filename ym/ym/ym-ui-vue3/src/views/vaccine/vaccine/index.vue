<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="疫苗名称" prop="name">
        <el-input
          v-model="queryParams.name"
          placeholder="请输入疫苗名称"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="疫苗价格" prop="price">
        <el-input
          v-model="queryParams.price"
          placeholder="请输入疫苗价格"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="疫苗厂家" prop="manufacturer">
        <el-input
          v-model="queryParams.manufacturer"
          placeholder="请输入疫苗厂家"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="疫苗分类" prop="category">
        <el-input
          v-model="queryParams.category"
          placeholder="请输入疫苗分类"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="疫苗详情" prop="detail">
        <el-input
          v-model="queryParams.detail"
          placeholder="请输入疫苗详情"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="疫苗图片地址" prop="imgUrl">
        <el-input
          v-model="queryParams.imgUrl"
          placeholder="请输入疫苗图片地址"
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
          v-hasPermi="['vaccine:vaccine:add']"
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
          v-hasPermi="['vaccine:vaccine:edit']"
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
          v-hasPermi="['vaccine:vaccine:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['vaccine:vaccine:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="vaccineList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="疫苗id" align="center" prop="id" v-if="true"/>
      <el-table-column label="疫苗名称" align="center" prop="name" />
      <el-table-column label="疫苗价格" align="center" prop="price" />
      <el-table-column label="疫苗厂家" align="center" prop="manufacturer" />
      <el-table-column label="疫苗分类" align="center" prop="category" />
      <el-table-column label="疫苗详情" align="center" prop="detail" />
      <el-table-column label="疫苗图片地址" align="center" prop="imgUrl" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['vaccine:vaccine:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['vaccine:vaccine:remove']"
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

    <!-- 添加或修改疫苗信息对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="vaccineForm" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="疫苗名称" prop="name">
          <el-input v-model="form.name" placeholder="请输入疫苗名称" />
        </el-form-item>
        <el-form-item label="疫苗价格" prop="price">
          <el-input v-model="form.price" placeholder="请输入疫苗价格" />
        </el-form-item>
        <el-form-item label="疫苗厂家" prop="manufacturer">
          <el-input v-model="form.manufacturer" placeholder="请输入疫苗厂家" />
        </el-form-item>
        <el-form-item label="疫苗分类" prop="category">
          <el-input v-model="form.category" placeholder="请输入疫苗分类" />
        </el-form-item>
        <el-form-item label="疫苗详情" prop="detail">
          <el-input v-model="form.detail" placeholder="请输入疫苗详情" />
        </el-form-item>
        <el-form-item label="疫苗图片地址" prop="imgUrl">
          <el-input v-model="form.imgUrl" placeholder="请输入疫苗图片地址" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button :loading="buttonLoading" type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script setup name="Vaccine">
import { listVaccine, getVaccine, delVaccine, addVaccine, updateVaccine } from "@/api/vaccine/vaccine";
const {proxy} = getCurrentInstance();

const vaccineList = ref([]);
const open = ref(false);
const buttonLoading = ref(false);
const loading = ref(true);
const showSearch = ref(true);
const ids = ref([]);
const single = ref(true);
const multiple = ref(true);
const total = ref(0);
const title = ref("");


export default {
  name: "Vaccine",
  data() {
    return {
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        name: undefined,
        price: undefined,
        manufacturer: undefined,
        category: undefined,
        detail: undefined,
        imgUrl: undefined
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        id: [
          { required: true, message: "疫苗id不能为空", trigger: "blur" }
        ],
        name: [
          { required: true, message: "疫苗名称不能为空", trigger: "blur" }
        ],
        price: [
          { required: true, message: "疫苗价格不能为空", trigger: "blur" }
        ],
        manufacturer: [
          { required: true, message: "疫苗厂家不能为空", trigger: "blur" }
        ],
        category: [
          { required: true, message: "疫苗分类不能为空", trigger: "blur" }
        ],
        detail: [
          { required: true, message: "疫苗详情不能为空", trigger: "blur" }
        ],
        imgUrl: [
          { required: true, message: "疫苗图片地址不能为空", trigger: "blur" }
        ]
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询疫苗信息列表 */
    getList() {
      this.loading = true;
      listVaccine(this.queryParams).then(response => {
        this.vaccineList = response.rows;
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
        name: undefined,
        price: undefined,
        manufacturer: undefined,
        category: undefined,
        detail: undefined,
        imgUrl: undefined
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
      this.title = "添加疫苗信息";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.loading = true;
      this.reset();
      const id = row.id || this.ids
      getVaccine(id).then(response => {
        this.loading = false;
        this.form = response.data;
        this.open = true;
        this.title = "修改疫苗信息";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          this.buttonLoading = true;
          if (this.form.id != null) {
            updateVaccine(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            }).finally(() => {
              this.buttonLoading = false;
            });
          } else {
            addVaccine(this.form).then(response => {
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
      this.$modal.confirm('是否确认删除疫苗信息编号为"' + ids + '"的数据项？').then(() => {
        this.loading = true;
        return delVaccine(ids);
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
      this.download('vaccine/vaccine/export', {
        ...this.queryParams
      }, `vaccine_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
