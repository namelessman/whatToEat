<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<meta charset="UTF-8">
	<title>今天吃什么</title>
</head>
<body>
	<button><a href="<%=path%>/foods/Foods_queryWhatoeat.action">今天吃什么</button>

	<div class="user">
	
		<span>username</span>
		<a href="<%=path%>/foods/Foods_queryLikeFoods.action">喜欢</a>
		<a href="<%=path%>/foods/Foods_queryDislikeFoods.action">不喜欢</a>
	</div>
</body>
</html>