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
			
			margin-left: 300px;
			width: 1300px;
			height: 1300px;
			z-index:1;
			float: left;
		}
		.pos2
		{
			position:absolute;
			margin-top: 250px;
			margin-left: 880px;
			width: 50px;
			height: 50px;
			z-index:2;
		}
		.pos3
		{
			position:absolute;
			margin-top: 160px;
			margin-left: 890px;
			width: 100px;
			height: 100px;
			z-index:3;
		}
		.icontop
		{
			width: 1700px;
			text-align: center;
		}
		.listsize
		{
			width: 200px;
			padding-top: 85px;
			float: left;
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

    	.accordion-panel
    	{
    		display: none;
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
			height: 300px;
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
<title>校園安全報案管理系統</title>
</head>
<body onload="ready()">
<%
		/* Cookie[] cookies = request.getCookies();
		String inputname = "";
		
		for(int i=0; cookies!=null && i<cookies.length; i++)
		{
			//out.print(cookies[i].getValue());
			Cookie cookie = cookies[i];
			
			if("username".equals(cookie.getName()))
			{
				inputname = URLDecoder.decode(cookie.getValue(),"utf-8");
				//inputname = cookie.getValue();
			}
		} */
	%>
	<%
		/*Cookie[] cookiespass = request.getCookies();
		String inputpass = "";
	
		for(int i=0; cookiespass!=null && i<cookiespass.length; i++)
		{
			Cookie cookiepwd = cookiespass[i];
		
			if("userpass".equals(cookiepwd.getName()))
			{
				inputpass = cookiepwd.getValue();
			}
		}*/
	%>
	<%
		/*String name = request.getParameter("uname");
		String pass = request.getParameter("upass");
		String Cname = "郭";
		String Cpass = "123";
		
		if (name != null)
		{
			String name2 = new String(name.getBytes("ISO-8859-1"),"utf-8");
			
			HttpSession pra = request.getSession();
			pra.removeAttribute("Name");
			
			if (Cname.equals(name2) && Cpass.equals(pass))
			{
				pra.setAttribute("Name","郭");
				
				Cookie usernamecookie = new Cookie(URLEncoder.encode("username"),URLEncoder.encode(name2));
				response.addCookie(usernamecookie);
				
				Cookie userpass = new Cookie("userpass",pass);
				response.addCookie(userpass);
			}
			else
			{
				out.print("Wrong Username or Password");
			}
		} */
	%>
	<header>
		<div class="top-bar">
		<div class="icontop">
			<img src="resources/image/safe.png" width="100px" height="100px">
		</div>
		
		
      	</div>
	</header>
	<section style="margin-left: 150px; padding-top:200px;">
	
      <div class="slider">
        <div class="slide-viewer">
          <div class="slide-group">
            <div class="slide slide-1">
              <img src="resources/image/interstellar.jpg" alt="No two are the same" />
            </div>
            <div class="slide slide-2">
              <img src="resources/image/paper.jpg" alt="Monsieur Mints"  />
            </div>
            <div class="slide slide-3">
              <img src="resources/image/sunset.jpg" alt="The Flower Series"  />
            </div>
            <div class="slide slide-4">
              <img src="resources/image/schlog.jpg" alt="Salt o' The Sea"  />
            </div>
          </div>
        </div>
        <div class="slide-buttons">
        </div>
      </div>
	
    </section>

	
	<div >

	<h1>病蟲害報案</h1>
<br/>
	<form:form id="main">
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
	</form:form>

	<div class="pos2">
		<img src="resources/image/check-in-g.png" class="checsize" onmouseover="mouse()" onmouseout="mouse()">
	</div>

	<div class="pos3">
		<!--<img src="../image/talk.png" class="talksize" style="visibility: hidden;" id="pic">-->
		<div class="talksize" style="visibility: hidden;" id="pic">
		
		</div>
	</div>
	<script src="resources/js/jquery-3.2.1.min.js"></script>
	<script src="resources/js/slider.js"></script>
	<script src="resources/js/accordion.js"></script>
</body>
</html>