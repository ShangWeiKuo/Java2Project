<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/css/mystyle.css" />" rel="stylesheet" type="text/css">
<title>客戶資料瀏覽</title>
  <script type="application/javascript">

        function ready() {            
			document.getElementById("name").value = getQueryString("name");
			document.getElementById("uname").value = getQueryString("uname");
			document.getElementById("pwd").value = getQueryString("pwd");
        }
        
        function getQueryString(name){

           return decodeURIComponent((new RegExp('[?|&]' + name + '=' + '([^&;]+?)(&|#|;|$)').exec(location.search)||[,""])[1].replace(/\+/g, '%20'))||null;
           // [?|&]: ? or & 
           // ([^&;]+?): +? 表示 [^&;] 出現一次以上，而[^&;]表示除了 "&", ";" 以外的字元
           // (&|#|;|$): 表示出現"&" or "#" or ";" or "$"
           // /\+/g: /../ 中間是 Reqular expression \+ 表示 "+", g 表示所有符合 RE 的字串，此例是 "+""
           
        }
	</script>	
</head>
<body onload="ready()">
	<form:form id="form"  modelAttribute="customers">
		<table class="frame">
			<tr>
				<td>報案人</td>
				<td><input type="text" id="name" name="name" class="txt"
					 /></td>
			</tr>
			<tr>
				<td>報案人帳號</td>
				<td><input type="text" id="uname" name="uname" class="txt"  /></td>
			</tr>
			<tr>
				<td>報案人密碼</td>
				<td><input type="text" id="pwd" name="pwd" class="txt"
					 /></td>
			</tr>
		</table>
		<button type="submit" formaction="${pageContext.request.contextPath}/insert" formmethod="get">新增</button>
		<button type="submit" formaction="${pageContext.request.contextPath}/query"  formmethod="get">查詢</button>
		<button type="reset">清除</button>

		
		<table class="frame">
			<tr>
				<th></th>
				<th></th>
				<th>編號</th>
				<th>報案人</th>
				<th>報案人帳號</th>
				<th>報案人密碼</th>
				<th>電話號碼</th>
				<th>是否為管理員</th>
			</tr>
			<c:forEach var="perinfo" items="${perinfo}">
				<tr>
					<c:url var="updateURL" value="update">
						<c:param name="no" value="${perinfo.no}" />
						<c:param name="name" value="${name}" />
						<c:param name="uname" value="${uname}" />
						<c:param name="pwd" value="${pwd}" />
					</c:url>
					<td><a href="${updateURL}"/>修改</a></td>
					<c:url var="deletionURL" value="delete">
						<c:param name="no" value="${perinfo.no}" />
						<c:param name="name" value="${name}" />
						<c:param name="uname" value="${uname}" />
						<c:param name="pwd" value="${pwd}" />
					</c:url>
					<td><a href="${deletionURL}"  onclick="return doDeletion()"/>刪除</a></td>
					<td>${perinfo.no}</td>
					<td>${perinfo.name}</td>
					<td>${perinfo.uname}</td>
					<td>${perinfo.pwd}</td>
					<td>${perinfo.phone}</td>
					<td>
					<c:choose>
    						<c:when test="${perinfo.isadmin=='1'}">
        						是 
       	 						<br />
    						</c:when>    
    						<c:otherwise>
        						否 
        						<br />
    						</c:otherwise>
						</c:choose>
					</td>
				</tr>
			</c:forEach>
		</table>

		<button type="submit" formaction="${pageContext.request.contextPath}/insert" formmethod="get">新增</button>
		<button type="submit" formaction="${pageContext.request.contextPath}/query"  formmethod="get">查詢</button>
		<button type="reset">清除</button>
	</form:form>
	<script>

		function doDeletion() {
			return confirm("確定刪除嗎 ?");
		}
	</script>
</body>
</html>