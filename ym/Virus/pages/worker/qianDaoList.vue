<template>
	<view class="page" >
		<u-cell-group >
			
			<u-cell-item 
			 v-for="item in list"
			:key="item.index"  
			:title="'签到对象:'+item.userRealName"  

			:value=item.createTime
			hover-class="none" 
			:arrow="false" 
			
			>
			
			</u-cell-item>

		</u-cell-group>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				// data:{
				// 	jiezhongbuwei:'',
				// 	jiezhongren:'',
				// 	yimiaoZhonglei:''

				// },
				
				list:[]
			}
		},
		onLoad(){
			this.init();
		},
		methods: {
			init(){
				this.$u.get("/vaccine/worker/findSignHistories").then(res=>{
						this.list=res.data;
				})
			}
			
			
			
		}
	}
</script>


<style>
	
.page{
		padding: 50rpx;
		
	}
</style>
