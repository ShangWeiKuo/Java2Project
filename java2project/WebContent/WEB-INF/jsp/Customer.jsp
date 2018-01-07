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
				<td>*報案人帳號</td>
				<td><form:input type="text" path="uname"/></td>
			</tr>
			<tr>
				<td>*報案人密碼</td>
				<td>
					<form:input type="text" path="pwd"/>
				</td>
			</tr>
			<tr>
				<td>*電話號碼</td>
				<td><form:input type="text" name="phone" class="txt" path="phone"/></td>
			</tr>
			<tr>
				<td>*是否要當管理員?</td>
				<td>
					<form>
					<input type="hidden" value="on" name="_active">
					<input type="radio" name="isadmin" class="txt" value="1" path="isadmin" />是
					&nbsp;
					&nbsp;
					<input type="radio" name="isadmin" class="txt" value="0" path="isadmin" />否
					</form>
				</td>
			</tr>
		</table>
</body>
</html>