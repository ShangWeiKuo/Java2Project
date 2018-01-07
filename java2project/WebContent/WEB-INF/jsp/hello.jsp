<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Customer Data Maintenance</title>
<link href="<c:url value="/resources/css/mystyle.css" />" rel="stylesheet" type="text/css">
</head>
<body>
<h1>病蟲害報案</h1>
<br/>
	<form:form id="main">
		<table class="frame">
			<tr>
				<td>報案人</td>
				<td><input type="text" name="name" class="txt" /></td>
			</tr>
			<tr>
				<td>報案人帳號</td>
				<td><input type="text" name="uname" class="txt" /></td>
			</tr>
			<tr>
				<td>報案人密碼</td>
				<td><input type="text" name="pwd" class="txt"/></td>
			</tr>
		</table>
		<button type="submit" formaction="${pageContext.request.contextPath}/insert" formmethod="get">新增</button>
		<button type="submit" formaction="${pageContext.request.contextPath}/query" formmethod="get">查詢</button>
		<button type="reset">清除</button>
	</form:form>
</body>
</html>