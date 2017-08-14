<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
<jsp:include page="/WEB-INF/page/common/common.jsp"></jsp:include>
<script type="text/javascript">
$(function(){
	/*
	$("#p").panel({
		width:500,
		height:150,
		title: 'My Panel'
				 		
	});
	*/
	$("#p").dialog({
		width:350,
		height:200,
		title: '登录',
		draggable:false,
		closable:false,
		modal:true
		
	});
	$("#p").tabs({
		border:false,
		onSelect:function(title){   
		
		}
	});

	$("#sub").linkbutton({
		iconCls:'icon-ok'
	});
	$("#register").linkbutton({
		iconCls:'icon-edit'
	});
	
	
		
});

function submitForm(){
	$.messager.alert('','sb,逗你玩呢!','error',function(){
		$.messager.alert('大SB','还jb点确定,真是大sb','warning');
	});
	$('#ff').form('submit');
}
</script>
<style type="text/css">
.panel-title {
    color: red;
    font-size: 18px;
}
.tabs-title {
    font-size: 18px;
}
td{
	font-size: 18px;
}
input{
	font-size: 18px;
}
a{
font-size: 18px;
}
</style>
</head>
<body>
	<div id="p" >
		 <div title="普通登录" >
		 	<div align="center">
			 	<form id="ff" action="/Housing/testController/test" method="post">
			 		<table>
			 			<tr>
			 			<td>用户名:</td>
			 				<td>
			 					<input style="height: 30px;" class="easyui-textbox"  type="text" name="name" data-options="prompt:'请输入用户名',required:true,iconCls:'icon-man',iconWidth:38"></input>
			 				</td>
			 			</tr>
			 			<tr>
			 			<td align="right">密码:</td>
			 				<td>
			 					<input style="height: 30px;" type="password" size="20" class="easyui-textbox" data-options="required:true,iconCls:'icon-lock',iconWidth:38"/>
			 				</td>
			 			</tr>
			 			<tr>
			 				<td>
			 					<a href="javascript:void(0)" id="sub" class="easyui-linkbutton" onclick="submitForm()">登录</a>
			 				</td>
			 				<td>
			 					<a href="javascript:void(0)" id="register" class="easyui-linkbutton" onclick="registerForm()">注册</a>
			 				</td>
			 			</tr>
			 		</table>
			 	</form>
		 	</div>
		 </div>
		 <div title="key方式登录">
		 key方式登录
		 </div>
	</div>
</body>
</html>