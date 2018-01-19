<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
		.checsize
		{
			width: 50px;
			height: 70px;
		}
		.talksize
		{
			width: 125px;
			height: 50px;
		}
		.bodysize
		{
			width: 1800px;
		}
		.pos1
		{
			position:absolute;
			
			/*margin-left: 50px;*/
			/*width: 500px;
			height: 200px;*/
			z-index:1;
			float: left;
		}
		.pos2
		{
			position:absolute;
			width: 50px;
			height: 50px;
			z-index:2;
		}
		.pos3
		{
			position:absolute;
			margin-top: 160px;
			margin-left: 650px;
			width: 100px;
			height: 100px;
			z-index:3;
		}
		.icontop
		{
			/*width: 1700px;*/
			/*text-align: center;*/
			/*height:112.6px;*/
			padding-left: 50px;
		}
		.listsize
		{
			width: 400px;
			/*padding-top: 85px;*/
			float: left;
			/*margin-top:1px;*/
		}
		.content
		{
			width: 2000px;
			height: 1500px;
			float: left;
		}
		.titlename
		{
			margin-left: 1170px;
		}
		.admintitlename
		{
			margin-left: 1070px;
		}
		.usertitlename
		{
			margin-left: 1070px;
		}
		.titlefunc
		{
			margin-left: 30px;
		}
		.titlelogin
		{
			margin-left: 30px;
		}
		.titlereg
		{
			margin-left: 30px;
		}

		a 
		{
      		text-decoration: none;
    	}

    	.accordion, .menu 
    	{
			background-color: #f2f2f2;
			color: #666;
			margin: 0;
			padding: 0;
			/*overflow: auto;*/
		}

		.accordion li 
		{
			padding: 0;
  			list-style-type: none;
  		}

		.accordion-control
		{
			background-color: #32b3bf;
			color: #fff;
			display: block;
			width: 100%;
			padding: 1.01em 0.38em 0.5em 0.7em;
			margin: 0;
			border-top: 1px solid #666
		}

		.accordion-panel 
		{
  			display: none;
  		}

		.accordion-panel p 
		{
			margin: 20px;
		}
		
		.accordion-panel img 
		{
			display: block;
			clear: left;
		}
    
    a:hover {
      text-decoration: underline;
    }
        
    ul#navWrapper li {
      
      list-style: none;
    }/*取消每列選項前的標記*/
    
    ul#navWrapper li li {
      float: none;
    }

    ul#navWrapper ul {
      display: none;
    }
    
    ul#navWrapper li:hover ul {
      display: block;
    }
    	.slide-viewer
		{
			position: relative;
			overflow: hidden;
			height: 600px;
		}
		.slide-group
		{
			width: 100%;
			height: 100%;
			position: relative;
		}
		.slide
		{
			width: 100%;
			height: 100%;
			display: none;
			position: absolute;
		}
		.slide:first-child
		{
			display: block;
		}
		.slide-buttons 
		{
  			text-align: center;
  		}
		.slide-btn 
		{
  			border: none;
  			background: none;
  			color: #000;
			font-size: 200%;
  			line-height: 0.5em;
  		}
		.slide-btn.active, .slide-btn:hover 
		{
  			color: #ed8e6c;
  			cursor: pointer;
  		}
  		.top-bar
  		{
  			position:fixed;
			/*-webkit-box-shadow: 0px 8px 15px #333;
			-moz-box-shadow: 0px 8px 15px #333;
			box-shadow: 0px 8px 15px #333;*/
			background:#32b3bf;
			z-index: 3;
			width: 1503px;
  		}
  		.top-title
  		{
  			index: 3;
  			font-size: 50px;
  			font-weight: bold;
  			font-family: Microsoft JhengHei;
			padding-left: 50px;
			vertical-align: 25px;
  		}
  		.top-button
  		{
  			
			/*padding-left: 50px;*/
			
  		}
  		.top-button-bgcolor
  		{
  			color: #000000;
  		}
  		.for-fieldset
  		{
  			position:absolute;
			z-index:1;
  		}
  		
	</style>
	<script>
		function mouse() 
		{
			var element = document.getElementById('pic');
	
			if (element.style.visibility == 'hidden') 
			{
				element.style.visibility = 'visible';
			}
			else
			{
				element.style.visibility = 'hidden';
			}
		}
		
		function mouse2() 
		{
			var element = document.getElementById('pic2');
	
			if (element.style.visibility == 'hidden') 
			{
				element.style.visibility = 'visible';
			}
			else
			{
				element.style.visibility = 'hidden';
			}
		}
		
		function mouse3() 
		{
			var element = document.getElementById('pic3');
	
			if (element.style.visibility == 'hidden') 
			{
				element.style.visibility = 'visible';
			}
			else
			{
				element.style.visibility = 'hidden';
			}
		}
		
		function mouse4() 
		{
			var element = document.getElementById('pic4');
	
			if (element.style.visibility == 'hidden') 
			{
				element.style.visibility = 'visible';
			}
			else
			{
				element.style.visibility = 'hidden';
			}
		}
		
		function mouse5() 
		{
			var element = document.getElementById('pic5');
	
			if (element.style.visibility == 'hidden') 
			{
				element.style.visibility = 'visible';
			}
			else
			{
				element.style.visibility = 'hidden';
			}
		}
		
		function mouse6() 
		{
			var element = document.getElementById('pic6');
	
			if (element.style.visibility == 'hidden') 
			{
				element.style.visibility = 'visible';
			}
			else
			{
				element.style.visibility = 'hidden';
			}
		}
		
		function mouse7() 
		{
			var element = document.getElementById('pic7');
	
			if (element.style.visibility == 'hidden') 
			{
				element.style.visibility = 'visible';
			}
			else
			{
				element.style.visibility = 'hidden';
			}
		}
		
		function mouse8() 
		{
			var element = document.getElementById('pic8');
	
			if (element.style.visibility == 'hidden') 
			{
				element.style.visibility = 'visible';
			}
			else
			{
				element.style.visibility = 'hidden';
			}
		}
		
		function mouse9() 
		{
			var element = document.getElementById('pic9');
	
			if (element.style.visibility == 'hidden') 
			{
				element.style.visibility = 'visible';
			}
			else
			{
				element.style.visibility = 'hidden';
			}
		}
		
		function mouse10() 
		{
			var element = document.getElementById('pic10');
	
			if (element.style.visibility == 'hidden') 
			{
				element.style.visibility = 'visible';
			}
			else
			{
				element.style.visibility = 'hidden';
			}
		}
		
		function mouse11() 
		{
			var element = document.getElementById('pic11');
	
			if (element.style.visibility == 'hidden') 
			{
				element.style.visibility = 'visible';
			}
			else
			{
				element.style.visibility = 'hidden';
			}
		}
		
		function mouse12() 
		{
			var element = document.getElementById('pic12');
	
			if (element.style.visibility == 'hidden') 
			{
				element.style.visibility = 'visible';
			}
			else
			{
				element.style.visibility = 'hidden';
			}
		}
		
		function mouse13() 
		{
			var element = document.getElementById('pic13');
	
			if (element.style.visibility == 'hidden') 
			{
				element.style.visibility = 'visible';
			}
			else
			{
				element.style.visibility = 'hidden';
			}
		}
	</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/css/mystyle.css" />" rel="stylesheet" type="text/css">
<title>案件資料瀏覽</title>
  <script type="application/javascript">

        function ready() {            
			document.getElementById("name").value = getQueryString("name");
			document.getElementById("phone").value = getQueryString("phone");
			document.getElementById("location").value = getQueryString("location");
			document.getElementById("content").value = getQueryString("content");
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
<body onload="ready()" bgcolor="#DDDDDD">
	<header>
		
		<div class="top-bar">
			<span class="top-button">
				<div class="listsize">
					<ul class="accordion" id="navWrapper">
						<li>
							<a class="accordion-control">
								<img src="resources/image/button2.png" height="36px">
							</a>
							<div class="accordion-panel" >
								<div class="top-button-bgcolor">
									<a href="#case2" style="font-family: Microsoft JhengHei; font-size:20px;">報案資料表</a>
									
									<a href="#picture" style="font-family: Microsoft JhengHei; font-size:20px;">校園疫情案件現況</a>
									
									<a href="#analysis" style="font-family: Microsoft JhengHei; font-size:20px;">校園疫情統計</a>
									
									<a href="http://www.nuk.edu.tw/bin/home.php" target="new" style="font-family: Microsoft JhengHei; font-size:20px;">回高大</a> 
								</div>	
							</div>
						</li>
					</ul>
				</div>
			</span>
			
			<span class="icontop">
				<a href="/java2project/" style="text-decoration: none; ">
					<img src="resources/image/safe.png" width="100px" height="100px">
				</a>
			</span>
			
			<span class="top-title">
				校園安全報案管理系統
			</span>
      	</div>
	</header>
	
	<br>
	<br>
	<br>
	
	<center>
	<h1 style="font-family: Microsoft JhengHei;">
		<hr style="width:41%; display:inline-block;" size="3" color="gray">
			<a name="case2">
				報案資料表
			</a>
		<hr style="width:41%; display:inline-block;" size="3" color="gray">
	</h1>
	<br>
	<br>
	
	<form:form id="form"  modelAttribute="customers">
		<table class="frame">
			<tr>
				<td>報案人</td>
				<td><input type="text" name="name" class="txt" /></td>
			</tr>
			<tr>
				<td>報案人電話</td>
				<td><input type="text" name="phone" class="txt" /></td>
			</tr>
			<tr>
				<td>案件地點</td>
				<td><input type="text" name="location" class="txt"/></td>
			</tr>
			<tr>
				<td>案件情形</td>
				<td><input type="text" name="content" class="txt"/></td>
			</tr>
		</table>
		<button type="submit" formaction="${pageContext.request.contextPath}/insert" formmethod="get">新增</button>
		<button type="submit" formaction="${pageContext.request.contextPath}/query"  formmethod="get">查詢</button>
		<button type="reset">清除</button>
		<button type="submit" formaction="${pageContext.request.contextPath}/"  formmethod="get">首頁</button>
		
		<br>
		<br>
		<table class="frame">
			<tr>
				<th></th>
				<th></th>
				<th>編號</th>
				<th>報案人</th>
				<th>報案人電話</th>
				<th>案件地點</th>
				<th>案件情形</th>
			</tr>
			<c:forEach var="newinfo" items="${newinfo}">
				<tr>
					<c:url var="updateURL" value="update">
						<c:param name="no" value="${newinfo.no}" />
						<c:param name="name" value="${name}" />
						<c:param name="phone" value="${phone}" />
						<c:param name="location" value="${location}" />
						<c:param name="content" value="${content}" />
					</c:url>
					<td><a href="${updateURL}"/>修改</a></td>
					<c:url var="deletionURL" value="delete">
						<c:param name="no" value="${newinfo.no}" />
						<c:param name="name" value="${name}" />
						<c:param name="phone" value="${phone}" />
						<c:param name="location" value="${location}" />
						<c:param name="content" value="${content}" />
					</c:url>
					<td><a href="${deletionURL}"  onclick="return doDeletion()"/>刪除</a></td>
					<td>${newinfo.no}</td>
					<td>${newinfo.name}</td>
					<td>${newinfo.phone}</td>
					<td>${newinfo.location}</td>
					<td>${newinfo.content}</td> 
				</tr>
			</c:forEach> 
		</table>
		</form:form>
		</center>
		
		<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	
		<center>
		<h1  style="font-family: Microsoft JhengHei;">
		<hr style="width:35.9%; display:inline-block;" size="4" color="gray">
			<a name="picture">
				校園疫情案件現況
			</a>
		<hr style="width:35.9%; display:inline-block;" size="4" color="gray">
		</h1>
		</center>
		
		<div class="pos1">
			<img src="resources/image/school.gif" width="1400px" height="1000px">
		</div>
		
		<div class="pos2" style="margin-top: 310px; margin-left: 840px;">
			<c:set var="lnum" value="0"/>
				<c:forEach var="newinfo" items="${newinfo}">
					<c:set var="building" value="${newinfo.location}"/>
						<c:if test="${building == '圖資館'}">
							<c:set var="lnum" value="${lnum+1}"/>
						</c:if>
				</c:forEach>
				<c:if test="${empty lnum}">
					<img src="resources/image/check-in-g2.png" class="checsize" onmouseover="mouse()" onmouseout="mouse()">
				</c:if>
				<c:if test="${lnum <= 5}">
					<img src="resources/image/check-in-g2.png" class="checsize" onmouseover="mouse()" onmouseout="mouse()">
				</c:if>
				<c:if test="${lnum > 5}">
					<c:if test="${lnum <= 10}">
						<img src="resources/image/check-in-y.png" class="checsize" onmouseover="mouse()" onmouseout="mouse()">
					</c:if>
				</c:if>
				<c:if test="${lnum > 10}">
					<img src="resources/image/check-in-r2.png" class="checsize" onmouseover="mouse()" onmouseout="mouse()">
				</c:if>
				
			<div>
				<div class="talksize" style="visibility: hidden;" id="pic">
					<div style="background-color:white;">
						<c:if test="${empty lnum}">
							共發生0件
						</c:if>
						<c:if test="${not empty lnum}">
							共發生${lnum}件
						</c:if>
					</div>
				</div>
			</div>
		</div>
	
		<div class="pos2" style="margin-top: 310px; margin-left: 720px;">
			<c:set var="lnum" value="0"/>
				<c:forEach var="newinfo" items="${newinfo}">
					<c:set var="building2" value="${newinfo.location}"/>
						<c:if test="${building2 == '行政大樓'}">
							<c:set var="anum" value="${anum+1}"/>
						</c:if>
				</c:forEach>
				<c:if test="${empty anum}">
					<img src="resources/image/check-in-g2.png" class="checsize" onmouseover="mouse2()" onmouseout="mouse2()">
				</c:if>
				<c:if test="${anum <= 5}">
					<img src="resources/image/check-in-g2.png" class="checsize" onmouseover="mouse2()" onmouseout="mouse2()">
				</c:if>
				<c:if test="${anum > 5}">
					<c:if test="${anum <= 10}">
						<img src="resources/image/check-in-y.png" class="checsize" onmouseover="mouse2()" onmouseout="mouse2()">
					</c:if>
				</c:if>
				<c:if test="${anum > 10}">
					<img src="resources/image/check-in-r2.png" class="checsize" onmouseover="mouse2()" onmouseout="mouse2()">
				</c:if>
				
			<div>
				<div class="talksize" style="visibility: hidden;" id="pic2">
					<div style="background-color:white;">
						<c:if test="${empty anum}">
							共發生0件
						</c:if>
						<c:if test="${not empty anum}">
							共發生${anum}件
						</c:if>
					</div>
				</div>
			</div>
		</div>
		
		<div class="pos2" style="margin-top: 430px; margin-left: 1042px;">
			<c:set var="mnum" value="0"/>
				<c:forEach var="newinfo" items="${newinfo}">
					<c:set var="building3" value="${newinfo.location}"/>
						<c:if test="${building3 == '管理學院'}">
							<c:set var="mnum" value="${mnum+1}"/>
						</c:if>
				</c:forEach>
				<c:if test="${empty mnum}">
					<img src="resources/image/check-in-g2.png" class="checsize" onmouseover="mouse3()" onmouseout="mouse3()">
				</c:if>
				<c:if test="${mnum <= 5}">
					<img src="resources/image/check-in-g2.png" class="checsize" onmouseover="mouse3()" onmouseout="mouse3()">
				</c:if>
				<c:if test="${mnum > 5}">
					<c:if test="${mnum <= 10}">
						<img src="resources/image/check-in-y.png" class="checsize" onmouseover="mouse3()" onmouseout="mouse3()">
					</c:if>
				</c:if>
				<c:if test="${mnum > 10}">
					<img src="resources/image/check-in-r2.png" class="checsize" onmouseover="mouse3()" onmouseout="mouse3()">
				</c:if>
				
			<div>
				<div class="talksize" style="visibility: hidden;" id="pic3">
					<div style="background-color:white;">
						<c:if test="${empty mnum}">
							共發生0件
						</c:if>
						<c:if test="${not empty mnum}">
							共發生${mnum}件
						</c:if>
					</div>
				</div>
			</div>
		</div>
		
		<div class="pos2" style="margin-top: 430px; margin-left: 945px;">
			<c:set var="lawnum" value="0"/>
				<c:forEach var="newinfo" items="${newinfo}">
					<c:set var="building4" value="${newinfo.location}"/>
						<c:if test="${building4 == '法學院'}">
							<c:set var="lawnum" value="${lawnum+1}"/>
						</c:if>
				</c:forEach>
				<c:if test="${empty lawnum}">
					<img src="resources/image/check-in-g2.png" class="checsize" onmouseover="mouse4()" onmouseout="mouse4()">
				</c:if>
				<c:if test="${lawnum <= 5}">
					<img src="resources/image/check-in-g2.png" class="checsize" onmouseover="mouse4()" onmouseout="mouse4()">
				</c:if>
				<c:if test="${lawnum > 5}">
					<c:if test="${lawnum <= 10}">
						<img src="resources/image/check-in-y.png" class="checsize" onmouseover="mouse4()" onmouseout="mouse4()">
					</c:if>
				</c:if>
				<c:if test="${lawnum > 10}">
					<img src="resources/image/check-in-r2.png" class="checsize" onmouseover="mouse4()" onmouseout="mouse4()">
				</c:if>
				
			<div>
				<div class="talksize" style="visibility: hidden;" id="pic4">
					<div style="background-color:white;">
						<c:if test="${empty lawnum}">
							共發生0件
						</c:if>
						<c:if test="${not empty lawnum}">
							共發生${lawnum}件
						</c:if>
					</div>
				</div>
			</div>
		</div>
		
		<div class="pos2" style="margin-top: 220px; margin-left: 880px;">
			<c:set var="snum" value="0"/>
				<c:forEach var="newinfo" items="${newinfo}">
					<c:set var="building5" value="${newinfo.location}"/>
						<c:if test="${building5 == '理學院'}">
							<c:set var="snum" value="${snum+1}"/>
						</c:if>
				</c:forEach>
				<c:if test="${empty snum}">
					<img src="resources/image/check-in-g2.png" class="checsize" onmouseover="mouse5()" onmouseout="mouse5()">
				</c:if>
				<c:if test="${snum <= 5}">
					<img src="resources/image/check-in-g2.png" class="checsize" onmouseover="mouse5()" onmouseout="mouse5()">
				</c:if>
				<c:if test="${snum > 5}">
					<c:if test="${snum <= 10}">
						<img src="resources/image/check-in-y.png" class="checsize" onmouseover="mouse5()" onmouseout="mouse5()">
					</c:if>
				</c:if>
				<c:if test="${snum > 10}">
					<img src="resources/image/check-in-r2.png" class="checsize" onmouseover="mouse5()" onmouseout="mouse5()">
				</c:if>
				
			<div>
				<div class="talksize" style="visibility: hidden;" id="pic5">
					<div style="background-color:white;">
						<c:if test="${empty snum}">
							共發生0件
						</c:if>
						<c:if test="${not empty snum}">
							共發生${snum}件
						</c:if>
					</div>
				</div>
			</div>
		</div>
		
		<div class="pos2" style="margin-top: 185px; margin-left: 560px;">
			<c:set var="hnum" value="0"/>
				<c:forEach var="newinfo" items="${newinfo}">
					<c:set var="building6" value="${newinfo.location}"/>
						<c:if test="${building6 == '人文社會科學院'}">
							<c:set var="hnum" value="${hnum+1}"/>
						</c:if>
				</c:forEach>
				<c:if test="${empty hnum}">
					<img src="resources/image/check-in-g2.png" class="checsize" onmouseover="mouse6()" onmouseout="mouse6()">
				</c:if>
				<c:if test="${hnum <= 5}">
					<img src="resources/image/check-in-g2.png" class="checsize" onmouseover="mouse6()" onmouseout="mouse6()">
				</c:if>
				<c:if test="${hnum > 5}">
					<c:if test="${hnum <= 10}">
						<img src="resources/image/check-in-y.png" class="checsize" onmouseover="mouse6()" onmouseout="mouse6()">
					</c:if>
				</c:if>
				<c:if test="${hnum > 10}">
					<img src="resources/image/check-in-r2.png" class="checsize" onmouseover="mouse6()" onmouseout="mouse6()">
				</c:if>
				
			<div>
				<div class="talksize" style="visibility: hidden;" id="pic6">
					<div style="background-color:white;">
						<c:if test="${empty hnum}">
							共發生0件
						</c:if>
						<c:if test="${not empty hnum}">
							共發生${hnum}件
						</c:if>
					</div>
				</div>
			</div>
		</div>
		
		<div class="pos2" style="margin-top: 135px; margin-left: 375px;">
			<c:set var="s2num" value="0"/>
				<c:forEach var="newinfo" items="${newinfo}">
					<c:set var="building7" value="${newinfo.location}"/>
						<c:if test="${building7 == '學二宿舍'}">
							<c:set var="s2num" value="${s2num+1}"/>
						</c:if>
				</c:forEach>
				<c:if test="${empty s2num}">
					<img src="resources/image/check-in-g2.png" class="checsize" onmouseover="mouse7()" onmouseout="mouse7()">
				</c:if>
				<c:if test="${s2num <= 5}">
					<img src="resources/image/check-in-g2.png" class="checsize" onmouseover="mouse7()" onmouseout="mouse7()">
				</c:if>
				<c:if test="${s2num > 5}">
					<c:if test="${s2num <= 10}">
						<img src="resources/image/check-in-y.png" class="checsize" onmouseover="mouse7()" onmouseout="mouse7()">
					</c:if>
				</c:if>
				<c:if test="${s2num > 10}">
					<img src="resources/image/check-in-r2.png" class="checsize" onmouseover="mouse7()" onmouseout="mouse7()">
				</c:if>
				
			<div>
				<div class="talksize" style="visibility: hidden;" id="pic7">
					<div style="background-color:white;">
						<c:if test="${empty s2num}">
							共發生0件
						</c:if>
						<c:if test="${not empty s2num}">
							共發生${s2num}件
						</c:if>
					</div>
				</div>
			</div>
		</div>
		
		<div class="pos2" style="margin-top: 180px; margin-left: 330px;">
			<c:set var="s1num" value="0"/>
				<c:forEach var="newinfo" items="${newinfo}">
					<c:set var="building8" value="${newinfo.location}"/>
						<c:if test="${building8 == '學一宿舍'}">
							<c:set var="s1num" value="${s1num+1}"/>
						</c:if>
				</c:forEach>
				<c:if test="${empty s1num}">
					<img src="resources/image/check-in-g2.png" class="checsize" onmouseover="mouse8()" onmouseout="mouse8()">
				</c:if>
				<c:if test="${s1num <= 5}">
					<img src="resources/image/check-in-g2.png" class="checsize" onmouseover="mouse8()" onmouseout="mouse8()">
				</c:if>
				<c:if test="${s1num > 5}">
					<c:if test="${s1num <= 10}">
						<img src="resources/image/check-in-y.png" class="checsize" onmouseover="mouse8()" onmouseout="mouse8()">
					</c:if>
				</c:if>
				<c:if test="${s1num > 10}">
					<img src="resources/image/check-in-r2.png" class="checsize" onmouseover="mouse8()" onmouseout="mouse8()">
				</c:if>
				
			<div>
				<div class="talksize" style="visibility: hidden;" id="pic8">
					<div style="background-color:white;">
						<c:if test="${empty s1num}">
							共發生0件
						</c:if>
						<c:if test="${not empty s1num}">
							共發生${s1num}件
						</c:if>
					</div>
				</div>
			</div>
		</div>
		
		<div class="pos2" style="margin-top: 220px; margin-left: 298px;">
			<c:set var="tnum" value="0"/>
				<c:forEach var="newinfo" items="${newinfo}">
					<c:set var="building9" value="${newinfo.location}"/>
						<c:if test="${building9 == '教職員宿舍'}">
							<c:set var="tnum" value="${tnum+1}"/>
						</c:if>
				</c:forEach>
				<c:if test="${empty tnum}">
					<img src="resources/image/check-in-g2.png" class="checsize" onmouseover="mouse9()" onmouseout="mouse9()">
				</c:if>
				<c:if test="${tnum <= 5}">
					<img src="resources/image/check-in-g2.png" class="checsize" onmouseover="mouse9()" onmouseout="mouse9()">
				</c:if>
				<c:if test="${tnum > 5}">
					<c:if test="${tnum <= 10}">
						<img src="resources/image/check-in-y.png" class="checsize" onmouseover="mouse9()" onmouseout="mouse9()">
					</c:if>
				</c:if>
				<c:if test="${tnum > 10}">
					<img src="resources/image/check-in-r2.png" class="checsize" onmouseover="mouse9()" onmouseout="mouse9()">
				</c:if>
				
			<div>
				<div class="talksize" style="visibility: hidden;" id="pic9">
					<div style="background-color:white;">
						<c:if test="${empty tnum}">
							共發生0件
						</c:if>
						<c:if test="${not empty tnum}">
							共發生${tnum}件
						</c:if>
					</div>
				</div>
			</div>
		</div>
		
		<div class="pos2" style="margin-top: 300px; margin-left: 340px;">
			<c:set var="spnum" value="0"/>
				<c:forEach var="newinfo" items="${newinfo}">
					<c:set var="building10" value="${newinfo.location}"/>
						<c:if test="${building10 == '運健休大樓'}">
							<c:set var="spnum" value="${spnum+1}"/>
						</c:if>
				</c:forEach>
				<c:if test="${empty spnum}">
					<img src="resources/image/check-in-g2.png" class="checsize" onmouseover="mouse10()" onmouseout="mouse10()">
				</c:if>
				<c:if test="${spnum <= 5}">
					<img src="resources/image/check-in-g2.png" class="checsize" onmouseover="mouse10()" onmouseout="mouse10()">
				</c:if>
				<c:if test="${spnum > 5}">
					<c:if test="${spnum <= 10}">
						<img src="resources/image/check-in-y.png" class="checsize" onmouseover="mouse10()" onmouseout="mouse10()">
					</c:if>
				</c:if>
				<c:if test="${spnum > 10}">
					<img src="resources/image/check-in-r2.png" class="checsize" onmouseover="mouse10()" onmouseout="mouse10()">
				</c:if>
				
			<div>
				<div class="talksize" style="visibility: hidden;" id="pic10">
					<div style="background-color:white;">
						<c:if test="${empty spnum}">
							共發生0件
						</c:if>
						<c:if test="${not empty spnum}">
							共發生${spnum}件
						</c:if>
					</div>
				</div>
			</div>
		</div>
		
		<div class="pos2" style="margin-top: 400px; margin-left: 200px;">
			<c:set var="ennum" value="0"/>
				<c:forEach var="newinfo" items="${newinfo}">
					<c:set var="building11" value="${newinfo.location}"/>
						<c:if test="${building11 == '工學院'}">
							<c:set var="ennum" value="${ennum+1}"/>
						</c:if>
				</c:forEach>
				<c:if test="${empty ennum}">
					<img src="resources/image/check-in-g2.png" class="checsize" onmouseover="mouse11()" onmouseout="mouse11()">
				</c:if>
				<c:if test="${ennum <= 5}">
					<img src="resources/image/check-in-g2.png" class="checsize" onmouseover="mouse11()" onmouseout="mouse11()">
				</c:if>
				<c:if test="${ennum > 5}">
					<c:if test="${ennum <= 10}">
						<img src="resources/image/check-in-y.png" class="checsize" onmouseover="mouse11()" onmouseout="mouse11()">
					</c:if>
				</c:if>
				<c:if test="${ennum > 10}">
					<img src="resources/image/check-in-r2.png" class="checsize" onmouseover="mouse11()" onmouseout="mouse11()">
				</c:if>
				
			<div>
				<div class="talksize" style="visibility: hidden;" id="pic11">
					<div style="background-color:white;">
						<c:if test="${empty ennum}">
							共發生0件
						</c:if>
						<c:if test="${not empty ennum}">
							共發生${ennum}件
						</c:if>
					</div>
				</div>
			</div>
		</div>
		
		<div class="pos2" style="margin-top: 530px; margin-left: 250px;">
			<c:set var="comnum" value="0"/>
				<c:forEach var="newinfo" items="${newinfo}">
					<c:set var="building12" value="${newinfo.location}"/>
						<c:if test="${building12 == '綜合第一大樓'}">
							<c:set var="comnum" value="${comnum+1}"/>
						</c:if>
				</c:forEach>
				<c:if test="${empty comnum}">
					<img src="resources/image/check-in-g2.png" class="checsize" onmouseover="mouse12()" onmouseout="mouse12()">
				</c:if>
				<c:if test="${comnum <= 5}">
					<img src="resources/image/check-in-g2.png" class="checsize" onmouseover="mouse12()" onmouseout="mouse12()">
				</c:if>
				<c:if test="${comnum > 5}">
					<c:if test="${comnum <= 10}">
						<img src="resources/image/check-in-y.png" class="checsize" onmouseover="mouse12()" onmouseout="mouse12()">
					</c:if>
				</c:if>
				<c:if test="${comnum > 10}">
					<img src="resources/image/check-in-r2.png" class="checsize" onmouseover="mouse12()" onmouseout="mouse12()">
				</c:if>
				
			<div>
				<div class="talksize" style="visibility: hidden;" id="pic12">
					<div style="background-color:white;">
						<c:if test="${empty comnum}">
							共發生0件
						</c:if>
						<c:if test="${not empty comnum}">
							共發生${comnum}件
						</c:if>
					</div>
				</div>
			</div>
		</div>
		
		<div class="pos2" style="margin-top: 550px; margin-left: 410px;">
			<c:set var="wnum" value="0"/>
				<c:forEach var="newinfo" items="${newinfo}">
					<c:set var="building13" value="${newinfo.location}"/>
						<c:if test="${building13 == '風雨球場'}">
							<c:set var="wnum" value="${wnum+1}"/>
						</c:if>
				</c:forEach>
				<c:if test="${empty wnum}">
					<img src="resources/image/check-in-g2.png" class="checsize" onmouseover="mouse13()" onmouseout="mouse13()">
				</c:if>
				<c:if test="${wnum <= 5}">
					<img src="resources/image/check-in-g2.png" class="checsize" onmouseover="mouse13()" onmouseout="mouse13()">
				</c:if>
				<c:if test="${wnum > 5}">
					<c:if test="${wnum <= 10}">
						<img src="resources/image/check-in-y.png" class="checsize" onmouseover="mouse13()" onmouseout="mouse13()">
					</c:if>
				</c:if>
				<c:if test="${wnum > 10}">
					<img src="resources/image/check-in-r2.png" class="checsize" onmouseover="mouse13()" onmouseout="mouse13()">
				</c:if>
				
			<div>
				<div class="talksize" style="visibility: hidden;" id="pic13">
					<div style="background-color:white;">
						<c:if test="${empty wnum}">
							共發生0件
						</c:if>
						<c:if test="${not empty wnum}">
							共發生${wnum}件
						</c:if>
					</div>
				</div>
			</div>
		</div>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		
		<center>
		<h1 style="font-family: Microsoft JhengHei;">
		<hr style="width:39.3%; display:inline-block;" size="4" color="gray">
			<a name="analysis">
				校園疫情統計
			</a>
		<hr style="width:39.3%; display:inline-block;" size="4" color="gray">
		</h1>
		<div>
			<jsp:include page="/WEB-INF/jsp/Analysis.jsp" />
		</div>
		</center>
	<script src="resources/js/jquery-3.2.1.min.js"></script>
	<script src="resources/js/slider.js"></script>
	<script src="resources/js/accordion.js"></script>
		
	<script>

		function doDeletion() {
			return confirm("確定刪除嗎 ?");
		}
	</script>
</body>
</html>