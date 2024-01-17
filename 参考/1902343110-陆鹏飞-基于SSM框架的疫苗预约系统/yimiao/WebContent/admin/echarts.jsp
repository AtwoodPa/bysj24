<%--
  Created by IntelliJ IDEA.
  User: dddd
  Date: 2021/3/23
  Time: 14:59
  To change this template use File | Settings | File Templates.
--%>
<%@page import="cn.util.Const"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="<%=Const.QIAN %>js/echarts.js"></script>
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
<input type="date" id="start">
<input type="date" id="end">
<button type="button" onclick="tongji()">统计</button>
 <!-- 为 ECharts 准备一个具备大小（宽高）的 DOM -->
<div id="total"></div>
<div id="main" style="width: 600px;height:400px;"></div>
</body>
<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));

    // 指定图表的配置项和数据
    var  option = {
            title: {
                text: 'ECharts 入门示例'
            },
            tooltip: {},
            legend: {
                data:['销量']
            },
            xAxis: {
                data: []
            },
            yAxis: {},
            series: [{
                name: '销量',
                type: 'bar',
                data: []
            }]
        };
    function tongji(){
    $.getJSON("<%=Const.QIAN %>orders/tongji",{"start":$("#start").val(),"end":$("#end").val()},function(data){
        $("#total").html("总订单"+data.total);
    	for(i=0;i<data.cname.length;i++){
    		 option.xAxis.data.push(data.cname[i].name);
           
            option.series[0].data.push(data.cname[i].num);
        }
        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    });
    }

</script>
</html>
