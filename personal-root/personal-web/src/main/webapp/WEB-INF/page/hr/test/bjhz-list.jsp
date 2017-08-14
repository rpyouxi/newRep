<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="/WEB-INF/page/common/common.jsp"></jsp:include>
<title>Insert title here</title>
<script type="text/javascript">
$(function(){
	$('#tt').datagrid({
		url:'/Housing/testController/list',///Housing/picture/treegrid_data2.json
		columns:[
		      [
			{field:'id',title:'id',width:200},
			{field:'userName',title:'姓名',width:200},
		          
		       ]
		],
		width:500,
		title:'我的数据'
	});
	
	$('#ttr').treegrid({
		title:'树形表格',
		treeField:'fileName',
		url:'/Housing/picture/data1.json',///Housing/testController/list
		columns:[
			      [
				{field:'id',title:'id',width:200},
				{field:'name',title:'姓名',width:200}
			          
			       ]
			],
			width:500,
			idField: 'id',
			treeField: 'id',
			onBeforeExpand:function(row,param){
		        //动态设置展开查询的url  
		        //var url = "systemcontroller?id=10007&treeid="+row.treeid;  
		        var url="/Housing/picture/treegrid_data3.json";
		        $("#ttr").treegrid("options").url = url;
		        return true;   
			}
	});
	
})

</script>
</head>
<body>


<table id="tt"></table>
<table id="ttr"></table>

</body>
</html>