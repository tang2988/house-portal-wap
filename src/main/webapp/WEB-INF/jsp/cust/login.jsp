<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'login.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<form action="cstcustormer/login" method="post">
		<tr>

			<td>用户名:<input name="mobliephone" type="text" /></td>
		</tr>
		<tr>
			<td>密码<input name="password" type="text" /></td>
		</tr>
		<tr>
			<td><input type="submit" value="登陆" /></td>
		</tr>
		<a href="<%=basePath%>cstcustormer/regester.html">注册</a>
	</form>
</body>
</html>
