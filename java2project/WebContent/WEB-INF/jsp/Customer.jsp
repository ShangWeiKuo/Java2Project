<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/css/mystyle.css" />" rel="stylesheet" type="text/css">
</head>
<body>
		<table class="frame">	
			<form:input type="hidden" name="no" path="no" />
			<tr>
				<td>*報案人</td>
				<td><form:input type="text" path="name"/></td>
			</tr>
			<tr>
				<td>*報案人電話</td>
				<td><form:input type="text" path="phone"/></td>
			</tr>
			<tr>
				<td>*案件地點</td>
				<td>
					<form:input type="text" path="location"/>
				</td>
			</tr>
			<tr>
				<td>*案件情形</td>
				<td><form:input type="text" name="content" class="txt" path="content"/></td>
			</tr>
		</table>
</body>
</html>