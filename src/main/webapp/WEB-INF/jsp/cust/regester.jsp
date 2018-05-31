<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'regester.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="<%=basePath%>static/jquery/jquery-1.5.2.min.js"></script>
</head>

<body>
	<form id="form1" action="cstcustormer/register" method="post">
		<tr>
			<td>用户名<input name="mobilePhone" type="text" /></td>
		</tr>
		<tr>
			<td>密码<input name="loginPassword" type="text" /></td>
		</tr>
		<input type="submit" value="注册" id="tijiao" />
	</form>

</body>
<!-- <script type="text/javascript">
	$("#tijiao").click(function(){
		$.ajax({
			//几个参数需要注意一下
			type : "POST", //方法类型
			dataType : "json", //预期服务器返回的数据类型
			url : "cstcustormer/register", //url
			data : $('#form1').serialize(),
			success : function(result) {
				alert(result);
			},
			error : function() {
				alert("异常！");
			}
		});
	});
		
			

</script> -->

</html>
