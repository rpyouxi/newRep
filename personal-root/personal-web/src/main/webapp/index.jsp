<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>欢迎注册</title>

<link rel="stylesheet" href="/common/ztree/css/demo.css" type="text/css">
<link rel="stylesheet"
	href="/common/ztree/css/zTreeStyle/zTreeStyle.css" type="text/css">
<script type="text/javascript"
	src="/common/ztree/js/jquery-1.4.4.min.js"></script>
<script type="text/javascript"
	src="common/ztree/js/jquery.ztree.core-3.5.js"></script>
<!-- <script type="text/javascript" -->
<!-- 	src="/common/ztree/js/jquery.ztree.exedit-3.5.js"></script> -->


<script type="text/javascript">
	function zhuce() {

		var uname = $("#yonghu").val(); //通过ID取到texteara的值
		console.log(uname);
		return false;
	}

	var setting = {
		      data: {
		        simpleData: {
		          enable: true
		        }
		      }
		    };
		 
		    var zNodes =[
		      { id:1, pId:0, name:"父节点1 - 展开", open:true},
		      { id:11, pId:1, name:"父节点11 - 折叠"},
		      { id:111, pId:11, name:"叶子节点111"},
		      { id:112, pId:11, name:"叶子节点112"},
		      { id:113, pId:11, name:"叶子节点113"},
		      { id:114, pId:11, name:"叶子节点114"},
		      { id:12, pId:1, name:"父节点12 - 折叠"},
		      { id:121, pId:12, name:"叶子节点121"},
		      { id:122, pId:12, name:"叶子节点122"},
		      { id:123, pId:12, name:"叶子节点123"},
		      { id:124, pId:12, name:"叶子节点124"},
		      { id:13, pId:1, name:"父节点13 - 没有子节点", isParent:true},
		      { id:2, pId:0, name:"父节点2 - 折叠"},
		      { id:21, pId:2, name:"父节点21 - 展开", open:true},
		      { id:211, pId:21, name:"叶子节点211"},
		      { id:212, pId:21, name:"叶子节点212"},
		      { id:213, pId:21, name:"叶子节点213"},
		      { id:214, pId:21, name:"叶子节点214"},
		      { id:22, pId:2, name:"父节点22 - 折叠"},
		      { id:221, pId:22, name:"叶子节点221"},
		      { id:222, pId:22, name:"叶子节点222"},
		      { id:223, pId:22, name:"叶子节点223"},
		      { id:224, pId:22, name:"叶子节点224"},
		      { id:23, pId:2, name:"父节点23 - 折叠"},
		      { id:231, pId:23, name:"叶子节点231"},
		      { id:232, pId:23, name:"叶子节点232"},
		      { id:233, pId:23, name:"叶子节点233"},
		      { id:234, pId:23, name:"叶子节点234"},
		      { id:3, pId:0, name:"父节点3 - 没有子节点", isParent:true}
		    ];
		 
		    $(document).ready(function(){
		      $.fn.zTree.init($("#treeDemo"), setting, zNodes);
		    });
</script>
</head>
<body>
<body>
	<center>
		<div>
		 <ul id="treeDemo" class="ztree"></ul>
		</div>
		<h1>欢迎注册该网站</h1>
		<form action="doRegister.jsp" method="post">
			<table border="0">
				<tr>
					<td>用户名</td>
					<td><input id="yonghu" type="text" name="user"></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>密码</td>
					<td><input id type="password" name="pwd"></td>
					<td>密码不得少于6位</td>
				</tr>
				<tr>
					<td>确认密码</td>
					<td><input type="password" name="qrpwd"></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>性别</td>
					<td><input type="radio" name="sex" value="男">男 <input
						type="radio" name="sex" value="女">女</td>
					<td></td>
				</tr>

				<tr>
					<td></td>
					<td><input id="zc" type="button" value="注册" onclick="zhuce();">
						<input type="reset" value="取消"> <input type="reset"
						value="重置"></td>
					<td></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</body>
</html>