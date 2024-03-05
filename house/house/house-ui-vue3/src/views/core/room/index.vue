<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="居室" prop="houseNum">
        <el-input
          v-model="queryParams.houseNum"
          placeholder="请输入居室"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="卫生间" prop="toiletNum">
        <el-input
          v-model="queryParams.toiletNum"
          placeholder="请输入卫生间"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="整套面积" prop="houseArea">
        <el-input
          v-model="queryParams.houseArea"
          placeholder="请输入整套面积"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="房间号" prop="roomCode">
        <el-input
          v-model="queryParams.roomCode"
          placeholder="请输入房间号"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="房屋面积" prop="roomArea">
        <el-input
          v-model="queryParams.roomArea"
          placeholder="请输入房屋面积"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="朝向" prop="direction">
        <el-input
          v-model="queryParams.direction"
          placeholder="请输入朝向"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="租金" prop="price">
        <el-input
          v-model="queryParams.price"
          placeholder="请输入租金"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="楼层" prop="floor">
        <el-input
          v-model="queryParams.floor"
          placeholder="请输入楼层"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="起租日期" prop="startDate">
        <el-date-picker clearable
          v-model="queryParams.startDate"
          type="date"
          value-format="yyyy-MM-dd"
          placeholder="请选择起租日期">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="房源描述" prop="introduce">
        <el-input
          v-model="queryParams.introduce"
          placeholder="请输入房源描述"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="房东姓名" prop="ownerName">
        <el-input
          v-model="queryParams.ownerName"
          placeholder="请输入房东姓名"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="房东电话" prop="owerPhone">
        <el-input
          v-model="queryParams.owerPhone"
          placeholder="请输入房东电话"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="小区id" prop="villageId">
        <el-input
          v-model="queryParams.villageId"
          placeholder="请输入小区id"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="小区名称" prop="villageName">
        <el-input
          v-model="queryParams.villageName"
          placeholder="请输入小区名称"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="具体地址" prop="address">
        <el-input
          v-model="queryParams.address"
          placeholder="请输入具体地址"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="房牌号" prop="houseNo">
        <el-input
          v-model="queryParams.houseNo"
          placeholder="请输入房牌号"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="发布人id" prop="publishId">
        <el-input
          v-model="queryParams.publishId"
          placeholder="请输入发布人id"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="0：待出租, 1：已出租, 2:下架" prop="state">
        <el-input
          v-model="queryParams.state"
          placeholder="请输入0：待出租, 1：已出租, 2:下架"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="" prop="createName">
        <el-input
          v-model="queryParams.createName"
          placeholder="请输入"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="" prop="updateName">
        <el-input
          v-model="queryParams.updateName"
          placeholder="请输入"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="客厅数量" prop="houseHall">
        <el-input
          v-model="queryParams.houseHall"
          placeholder="请输入客厅数量"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="房源编号" prop="code">
        <el-input
          v-model="queryParams.code"
          placeholder="请输入房源编号"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="封面图" prop="faceUrl">
        <el-input
          v-model="queryParams.faceUrl"
          placeholder="请输入封面图"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="装修情况" prop="decoration">
        <el-input
          v-model="queryParams.decoration"
          placeholder="请输入装修情况"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="经纪人姓名" prop="agentName">
        <el-input
          v-model="queryParams.agentName"
          placeholder="请输入经纪人姓名"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="经纪人电话" prop="agentPhone">
        <el-input
          v-model="queryParams.agentPhone"
          placeholder="请输入经纪人电话"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="经纪人id" prop="agentUserId">
        <el-input
          v-model="queryParams.agentUserId"
          placeholder="请输入经纪人id"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="经纪人头像" prop="agentAvatar">
        <el-input
          v-model="queryParams.agentAvatar"
          placeholder="请输入经纪人头像"
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
          v-hasPermi="['core:room:add']"
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
          v-hasPermi="['core:room:edit']"
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
          v-hasPermi="['core:room:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['core:room:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="roomList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="" align="center" prop="id" v-if="true"/>
      <el-table-column label="0整租/1合租" align="center" prop="type" />
      <el-table-column label="居室" align="center" prop="houseNum" />
      <el-table-column label="卫生间" align="center" prop="toiletNum" />
      <el-table-column label="整套面积" align="center" prop="houseArea" />
      <el-table-column label="1主卧,2次卧" align="center" prop="roomType" />
      <el-table-column label="房间号" align="center" prop="roomCode" />
      <el-table-column label="房屋面积" align="center" prop="roomArea" />
      <el-table-column label="朝向" align="center" prop="direction" />
      <el-table-column label="租金" align="center" prop="price" />
      <el-table-column label="楼层" align="center" prop="floor" />
      <el-table-column label="楼房类型" align="center" prop="stepType" />
      <el-table-column label="起租日期" align="center" prop="startDate" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.startDate, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="房源描述" align="center" prop="introduce" />
      <el-table-column label="房东姓名" align="center" prop="ownerName" />
      <el-table-column label="房东电话" align="center" prop="owerPhone" />
      <el-table-column label="小区id" align="center" prop="villageId" />
      <el-table-column label="小区名称" align="center" prop="villageName" />
      <el-table-column label="具体地址" align="center" prop="address" />
      <el-table-column label="房牌号" align="center" prop="houseNo" />
      <el-table-column label="付款方式" align="center" prop="payType" />
      <el-table-column label="发布人id" align="center" prop="publishId" />
      <el-table-column label="0：待出租, 1：已出租, 2:下架" align="center" prop="state" />
      <el-table-column label="" align="center" prop="createName" />
      <el-table-column label="" align="center" prop="updateName" />
      <el-table-column label="" align="center" prop="remark" />
      <el-table-column label="客厅数量" align="center" prop="houseHall" />
      <el-table-column label="房源编号" align="center" prop="code" />
      <el-table-column label="封面图" align="center" prop="faceUrl" />
      <el-table-column label="装修情况" align="center" prop="decoration" />
      <el-table-column label="经纪人姓名" align="center" prop="agentName" />
      <el-table-column label="经纪人电话" align="center" prop="agentPhone" />
      <el-table-column label="经纪人id" align="center" prop="agentUserId" />
      <el-table-column label="经纪人头像" align="center" prop="agentAvatar" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['core:room:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['core:room:remove']"
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

    <!-- 添加或修改房源管理对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="居室" prop="houseNum">
          <el-input v-model="form.houseNum" placeholder="请输入居室" />
        </el-form-item>
        <el-form-item label="卫生间" prop="toiletNum">
          <el-input v-model="form.toiletNum" placeholder="请输入卫生间" />
        </el-form-item>
        <el-form-item label="整套面积" prop="houseArea">
          <el-input v-model="form.houseArea" placeholder="请输入整套面积" />
        </el-form-item>
        <el-form-item label="房间号" prop="roomCode">
          <el-input v-model="form.roomCode" placeholder="请输入房间号" />
        </el-form-item>
        <el-form-item label="房屋面积" prop="roomArea">
          <el-input v-model="form.roomArea" placeholder="请输入房屋面积" />
        </el-form-item>
        <el-form-item label="朝向" prop="direction">
          <el-input v-model="form.direction" placeholder="请输入朝向" />
        </el-form-item>
        <el-form-item label="租金" prop="price">
          <el-input v-model="form.price" placeholder="请输入租金" />
        </el-form-item>
        <el-form-item label="楼层" prop="floor">
          <el-input v-model="form.floor" placeholder="请输入楼层" />
        </el-form-item>
        <el-form-item label="起租日期" prop="startDate">
          <el-date-picker clearable
            v-model="form.startDate"
            type="datetime"
            value-format="yyyy-MM-dd HH:mm:ss"
            placeholder="请选择起租日期">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="房源描述" prop="introduce">
          <el-input v-model="form.introduce" placeholder="请输入房源描述" />
        </el-form-item>
        <el-form-item label="房东姓名" prop="ownerName">
          <el-input v-model="form.ownerName" placeholder="请输入房东姓名" />
        </el-form-item>
        <el-form-item label="房东电话" prop="owerPhone">
          <el-input v-model="form.owerPhone" placeholder="请输入房东电话" />
        </el-form-item>
        <el-form-item label="小区id" prop="villageId">
          <el-input v-model="form.villageId" placeholder="请输入小区id" />
        </el-form-item>
        <el-form-item label="小区名称" prop="villageName">
          <el-input v-model="form.villageName" placeholder="请输入小区名称" />
        </el-form-item>
        <el-form-item label="具体地址" prop="address">
          <el-input v-model="form.address" placeholder="请输入具体地址" />
        </el-form-item>
        <el-form-item label="房牌号" prop="houseNo">
          <el-input v-model="form.houseNo" placeholder="请输入房牌号" />
        </el-form-item>
        <el-form-item label="发布人id" prop="publishId">
          <el-input v-model="form.publishId" placeholder="请输入发布人id" />
        </el-form-item>
        <el-form-item label="0：待出租, 1：已出租, 2:下架" prop="state">
          <el-input v-model="form.state" placeholder="请输入0：待出租, 1：已出租, 2:下架" />
        </el-form-item>
        <el-form-item label="" prop="createName">
          <el-input v-model="form.createName" placeholder="请输入" />
        </el-form-item>
        <el-form-item label="" prop="updateName">
          <el-input v-model="form.updateName" placeholder="请输入" />
        </el-form-item>
        <el-form-item label="" prop="remark">
          <el-input v-model="form.remark" placeholder="请输入" />
        </el-form-item>
        <el-form-item label="客厅数量" prop="houseHall">
          <el-input v-model="form.houseHall" placeholder="请输入客厅数量" />
        </el-form-item>
        <el-form-item label="房源编号" prop="code">
          <el-input v-model="form.code" placeholder="请输入房源编号" />
        </el-form-item>
        <el-form-item label="封面图" prop="faceUrl">
          <el-input v-model="form.faceUrl" placeholder="请输入封面图" />
        </el-form-item>
        <el-form-item label="装修情况" prop="decoration">
          <el-input v-model="form.decoration" placeholder="请输入装修情况" />
        </el-form-item>
        <el-form-item label="经纪人姓名" prop="agentName">
          <el-input v-model="form.agentName" placeholder="请输入经纪人姓名" />
        </el-form-item>
        <el-form-item label="经纪人电话" prop="agentPhone">
          <el-input v-model="form.agentPhone" placeholder="请输入经纪人电话" />
        </el-form-item>
        <el-form-item label="经纪人id" prop="agentUserId">
          <el-input v-model="form.agentUserId" placeholder="请输入经纪人id" />
        </el-form-item>
        <el-form-item label="经纪人头像" prop="agentAvatar">
          <el-input v-model="form.agentAvatar" placeholder="请输入经纪人头像" />
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
import { listRoom, getRoom, delRoom, addRoom, updateRoom } from "@/api/core/room";

export default {
  name: "Room",
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
      // 房源管理表格数据
      roomList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        type: undefined,
        houseNum: undefined,
        toiletNum: undefined,
        houseArea: undefined,
        roomType: undefined,
        roomCode: undefined,
        roomArea: undefined,
        direction: undefined,
        price: undefined,
        floor: undefined,
        stepType: undefined,
        startDate: undefined,
        introduce: undefined,
        ownerName: undefined,
        owerPhone: undefined,
        villageId: undefined,
        villageName: undefined,
        address: undefined,
        houseNo: undefined,
        payType: undefined,
        publishId: undefined,
        state: undefined,
        createName: undefined,
        updateName: undefined,
        houseHall: undefined,
        code: undefined,
        faceUrl: undefined,
        decoration: undefined,
        agentName: undefined,
        agentPhone: undefined,
        agentUserId: undefined,
        agentAvatar: undefined
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        id: [
          { required: true, message: "不能为空", trigger: "blur" }
        ],
        type: [
          { required: true, message: "0整租/1合租不能为空", trigger: "change" }
        ],
        houseNum: [
          { required: true, message: "居室不能为空", trigger: "blur" }
        ],
        toiletNum: [
          { required: true, message: "卫生间不能为空", trigger: "blur" }
        ],
        houseArea: [
          { required: true, message: "整套面积不能为空", trigger: "blur" }
        ],
        roomType: [
          { required: true, message: "1主卧,2次卧不能为空", trigger: "change" }
        ],
        roomCode: [
          { required: true, message: "房间号不能为空", trigger: "blur" }
        ],
        roomArea: [
          { required: true, message: "房屋面积不能为空", trigger: "blur" }
        ],
        direction: [
          { required: true, message: "朝向不能为空", trigger: "blur" }
        ],
        price: [
          { required: true, message: "租金不能为空", trigger: "blur" }
        ],
        floor: [
          { required: true, message: "楼层不能为空", trigger: "blur" }
        ],
        stepType: [
          { required: true, message: "楼房类型不能为空", trigger: "change" }
        ],
        startDate: [
          { required: true, message: "起租日期不能为空", trigger: "blur" }
        ],
        introduce: [
          { required: true, message: "房源描述不能为空", trigger: "blur" }
        ],
        ownerName: [
          { required: true, message: "房东姓名不能为空", trigger: "blur" }
        ],
        owerPhone: [
          { required: true, message: "房东电话不能为空", trigger: "blur" }
        ],
        villageId: [
          { required: true, message: "小区id不能为空", trigger: "blur" }
        ],
        villageName: [
          { required: true, message: "小区名称不能为空", trigger: "blur" }
        ],
        address: [
          { required: true, message: "具体地址不能为空", trigger: "blur" }
        ],
        houseNo: [
          { required: true, message: "房牌号不能为空", trigger: "blur" }
        ],
        payType: [
          { required: true, message: "付款方式不能为空", trigger: "change" }
        ],
        publishId: [
          { required: true, message: "发布人id不能为空", trigger: "blur" }
        ],
        state: [
          { required: true, message: "0：待出租, 1：已出租, 2:下架不能为空", trigger: "blur" }
        ],
        createName: [
          { required: true, message: "不能为空", trigger: "blur" }
        ],
        updateName: [
          { required: true, message: "不能为空", trigger: "blur" }
        ],
        remark: [
          { required: true, message: "不能为空", trigger: "blur" }
        ],
        houseHall: [
          { required: true, message: "客厅数量不能为空", trigger: "blur" }
        ],
        code: [
          { required: true, message: "房源编号不能为空", trigger: "blur" }
        ],
        faceUrl: [
          { required: true, message: "封面图不能为空", trigger: "blur" }
        ],
        decoration: [
          { required: true, message: "装修情况不能为空", trigger: "blur" }
        ],
        agentName: [
          { required: true, message: "经纪人姓名不能为空", trigger: "blur" }
        ],
        agentPhone: [
          { required: true, message: "经纪人电话不能为空", trigger: "blur" }
        ],
        agentUserId: [
          { required: true, message: "经纪人id不能为空", trigger: "blur" }
        ],
        agentAvatar: [
          { required: true, message: "经纪人头像不能为空", trigger: "blur" }
        ]
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询房源管理列表 */
    getList() {
      this.loading = true;
      listRoom(this.queryParams).then(response => {
        this.roomList = response.rows;
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
        type: undefined,
        houseNum: undefined,
        toiletNum: undefined,
        houseArea: undefined,
        roomType: undefined,
        roomCode: undefined,
        roomArea: undefined,
        direction: undefined,
        price: undefined,
        floor: undefined,
        stepType: undefined,
        startDate: undefined,
        introduce: undefined,
        ownerName: undefined,
        owerPhone: undefined,
        villageId: undefined,
        villageName: undefined,
        address: undefined,
        houseNo: undefined,
        payType: undefined,
        publishId: undefined,
        state: undefined,
        createTime: undefined,
        createName: undefined,
        updateTime: undefined,
        updateName: undefined,
        remark: undefined,
        houseHall: undefined,
        code: undefined,
        faceUrl: undefined,
        decoration: undefined,
        agentName: undefined,
        agentPhone: undefined,
        agentUserId: undefined,
        agentAvatar: undefined
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
      this.title = "添加房源管理";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.loading = true;
      this.reset();
      const id = row.id || this.ids
      getRoom(id).then(response => {
        this.loading = false;
        this.form = response.data;
        this.open = true;
        this.title = "修改房源管理";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          this.buttonLoading = true;
          if (this.form.id != null) {
            updateRoom(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            }).finally(() => {
              this.buttonLoading = false;
            });
          } else {
            addRoom(this.form).then(response => {
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
      this.$modal.confirm('是否确认删除房源管理编号为"' + ids + '"的数据项？').then(() => {
        this.loading = true;
        return delRoom(ids);
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
      this.download('core/room/export', {
        ...this.queryParams
      }, `room_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
