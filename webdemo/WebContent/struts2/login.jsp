<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登录</title>
</head>
<body>
<s:form action="login">
	<s:textfield label="用户" name="username"/>
	<s:textfield label="密码" name="password"/>
	<s:submit value="登录"/>
	<s:submit value="查询图书" action="login!queryBooks"></s:submit>
	
</s:form>
<s:a action="login!queryBooks">查询图书</s:a>
</body>
</html>