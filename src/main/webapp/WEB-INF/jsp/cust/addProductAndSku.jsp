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

<title>My JSP 'addProductAndSku.jsp' starting page</title>

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
	<table align="center">

		<tr>

			<td><table>
					<form method="post" action="" id="form1">
						<tr>
							<td>标题<input type="text" name="title" /></td>


						</tr>
						<tr>
							<td>副标题<input type="text" name="subtitle" /></td>
						</tr>
						<tr>
							<td>内容<input type="text" name="content" /></td>
						</tr>
						<tr>
							<td>主图<input type="text" name="masterGraph" /></td>
						</tr>
						<tr>
							<td>省<input type="text" name="province" /></td>
						</tr>
						<tr>
							<td>城市<input type="text" name="city" /></td>
						</tr>
						<tr>
							<td>详细地址<input type="text" name="address" /></td>
						</tr>
						<tr>
							<td>楼盘名<input type="text" name="realEstateName" /></td>
						</tr>
						<tr>
							<td>状态<input type="text" name="struts" /></td>
						</tr>
						<tr>
							<td>联系信息<input type="text" name="contactInformation" /></td>
						</tr>
						<tr>
							<td>周边<textarea rows="2" cols="2" name="periphery"
									style="margin: 0px; width: 202px; height: 56px;"></textarea></td>
						</tr>




					</form>


				</table></td>


		</tr>
		<tr>

			<td><table class="table">
					<tr>
						<td>房子类型<input type="text" name="typeOfHouse"
							id="typeOfHouse" /></td>
						<td>价格<input type="text" name="price" id="price" /></td>
						<td>面积<input type="text" name="flat" id="flat" /></td>
						<td>库存<input type="text" name="Stock" id="Stock" /></td>
					</tr>
					<button class="button" onclick="addRow();">添加sku</button>
				</table></td>

		</tr>

		<button>表单提</button>
		<input type="button" value="123" onclick="sbumit()"/>


	</table>
</body>
<script src="<%=basePath%>static/js/jquery.min.js"></script>
<script>
	var rowCount = 4;
	function addRow() {
		rowCount++;
		var newRow = '<tr id="option' + rowCount + '"><td>房子类型<input type="text" name="typeOfHouse" /></td><td>价格<input type="text" name="price" /></td><td>面积<input type="text"  name="flat" /></td><td>库存<input type="text" name="Stock" /></td><td><a href="javascript:void(0)" onclick=delRow(' + rowCount + ')>删除</a></td></tr>';
		$('.table').append(newRow);
	}
	//删除行  
	function delRow(rowIndex) {
		$("#option" + rowIndex).remove();
		rowCount--;
	}



		$("button").click(function(){
			 var title = $("[name=title]").val();
			
			 $("#form1").serialize()
			$.ajax({
				type : "post",
				url : "<%=basePath%>adddo",
				async : true,
				data :{"title" : title },
				success : function(data) {	

					alert(data);
				}
			});
			
		});
		
		function sbumit(){
			
			
		}
	
</script>
</html>
