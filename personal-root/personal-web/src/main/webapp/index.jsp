<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>欢迎注册</title>
<jsp:include page="/WEB-INF/page/common/common.jsp"></jsp:include>
<script type="text/javascript">
	function zhuce() {
		
		var uname = $("#yonghu").val(); //通过ID取到texteara的值
		alert(uname);
		return false;
	}
</script>
</head>
<body>
<body>
	<center>
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
					<td><input id="zc" type="button" value="注册" onclick="zhuce();"> <input
						type="reset" value="取消"> <input type="reset" value="重置">
					</td>
					<td></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</body>
</html>