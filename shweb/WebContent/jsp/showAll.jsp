<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>产品列表</title>
</head>
<body>
<center>
	<h2>产品列表</h2>
	<table border="1">
		<tr>
			<th>产品ID</th>
			<th>产品名称</th>
			<th>产品价格</th>
			<th>是否删除</th>
			<th>是否更新</th>
		</tr>
		<s:iterator value="#request.all" var="product">
		<tr>
			<td><s:property value="#product.id"/></td>
			<td><s:property value="#product.name"/></td>
			<td><s:property value="#product.price"/></td>
			<td><a href="delete.action?id=<s:property value='#product.id'/> ">删除</a></td>
			<td><a href="jsp/update.jsp?id=<s:property value='#product.id'/>&name=<s:property value='#product.name'/>&price=<s:property value='#product.price'/> ">更新</a></td>
		</tr>
		</s:iterator>
	</table>
	<a href="jsp/add.jsp">添加产品</a>
</center>
</body>
</html>