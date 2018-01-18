<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.net.URLEncoder" import="java.net.URLDecoder"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
		.checsize
		{
			width: 50px;
			height: 70px;
		}
		.talksize
		{
			width: 100px;
			height: 200px;
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
			margin-top: 180px;
			margin-left: 650px;
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
	</script>
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
	<link href="<c:url value="/resources/css/mystyle.css" />" rel="stylesheet" type="text/css">
<title>校園安全報案管理系統</title>
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
									<a href="#case" style="font-family: Microsoft JhengHei;">我要報案</a>
									&nbsp;
									<a href="#picture" style="font-family: Microsoft JhengHei;">校園巡邏案件現況</a>
									&nbsp;
									<a href="http://www.nuk.edu.tw/bin/home.php" target="new" style="font-family: Microsoft JhengHei;">回高大</a> 
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
	
	<section style="padding-top:100px;">
	
      <div class="slider">
        <div class="slide-viewer">
          <div class="slide-group">
            <div class="slide slide-1">
              <img src="resources/image/info1.png" alt="No two are the same" width="100%"/>
            </div>
            <div class="slide slide-2">
              <img src="resources/image/info2.png" alt="Monsieur Mints" width="100%" height="100%"/>
            </div>
            <div class="slide slide-3">
              <img src="resources/image/info3.png" alt="The Flower Series" width="100%" height="100%" />
            </div>
            <div class="slide slide-4">
              <img src="resources/image/info4.png" alt="Salt o' The Sea" width="100%" height="100%" />
            </div>
          </div>
        </div>
        <div class="slide-buttons">
        </div>
      </div>
	<a href="case" name="case"></a>
    </section>
	
	<br>
	<br>
	<br>
	
	<center>
		<h1 style="font-family: Microsoft JhengHei;">
		<hr style="width:42%; display:inline-block;" size="3" color="gray">
			
				我要報案
			
		<hr style="width:42%; display:inline-block;" size="3" color="gray">
		</h1>
		<br>
		<br>
	 
	<form:form  id="form"  modelAttribute="customers">
		<center>
		<fieldset style="width:300px">
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
		<button type="submit" formaction="${pageContext.request.contextPath}/query" formmethod="get">查詢</button>
		<button type="reset">清除</button>
		</fieldset>
		</center>
		
		
	</form:form>
	 
	</center>
	
	<script>

		function doDeletion() {
			return confirm("確定刪除嗎 ?");
		}
	</script>
</body>
</html>