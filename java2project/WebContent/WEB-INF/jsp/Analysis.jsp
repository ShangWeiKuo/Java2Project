<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body onload="ready()">

	<c:set var="lnum" value="0"/>
		<c:forEach var="newinfo" items="${newinfo}">
			<c:set var="building" value="${newinfo.location}"/>
				<c:if test="${building == '圖資館'}">
					<c:set var="lnum" value="${lnum+1}"/>
				</c:if>
		</c:forEach>
		
		<c:if test="${lnum <= 5}">
			<c:set var="color1" value="#00FF00"/>
		</c:if>
		<c:if test="${lnum > 5}">
			<c:if test="${lnum <= 10}">
				<c:set var="color1" value="#FFFF00"/>
			</c:if>
		</c:if>
		<c:if test="${lnum > 10}">
			<c:set var="color1" value="#FF0000"/>
		</c:if>
		
		<c:set var="anum" value="0"/>
			<c:forEach var="newinfo" items="${newinfo}">
				<c:set var="building2" value="${newinfo.location}"/>
					<c:if test="${building2 == '行政大樓'}">
						<c:set var="anum" value="${anum+1}"/>
					</c:if>
			</c:forEach>
			<c:if test="${anum <= 5}">
				<c:set var="color2" value="#00FF00"/>
			</c:if>
			<c:if test="${anum > 5}">
				<c:if test="${anum <= 10}">
					<c:set var="color2" value="#FFFF00"/>
				</c:if>
			</c:if>
			<c:if test="${anum > 10}">
				<c:set var="color2" value="#FF0000"/>
			</c:if>
		
		<c:set var="mnum" value="0"/>
			<c:forEach var="newinfo" items="${newinfo}">
				<c:set var="building3" value="${newinfo.location}"/>
					<c:if test="${building3 == '管理學院'}">
						<c:set var="mnum" value="${mnum+1}"/>
					</c:if>
			</c:forEach>
			<c:if test="${mnum <= 5}">
				<c:set var="color3" value="#00FF00"/>
			</c:if>
			<c:if test="${mnum > 5}">
				<c:if test="${mnum <= 10}">
					<c:set var="color3" value="#FFFF00"/>
				</c:if>
			</c:if>
			<c:if test="${mnum > 10}">
				<c:set var="color3" value="#FF0000"/>
			</c:if>
		
		<c:set var="lawnum" value="0"/>
			<c:forEach var="newinfo" items="${newinfo}">
				<c:set var="building4" value="${newinfo.location}"/>
					<c:if test="${building4 == '法學院'}">
						<c:set var="lawnum" value="${lawnum+1}"/>
					</c:if>
			</c:forEach>
			<c:if test="${lawnum <= 5}">
				<c:set var="color4" value="#00FF00"/>
			</c:if>
			<c:if test="${lawnum > 5}">
				<c:if test="${lawnum <= 10}">
					<c:set var="color4" value="#FFFF00"/>
				</c:if>
			</c:if>
			<c:if test="${lawnum > 10}">
				<c:set var="color4" value="#FF0000"/>
			</c:if>
			
		<c:set var="snum" value="0"/>
			<c:forEach var="newinfo" items="${newinfo}">
				<c:set var="building5" value="${newinfo.location}"/>
					<c:if test="${building5 == '理學院'}">
						<c:set var="snum" value="${snum+1}"/>
					</c:if>
			</c:forEach>
			<c:if test="${snum <= 5}">
				<c:set var="color5" value="#00FF00"/>
			</c:if>
			<c:if test="${snum > 5}">
				<c:if test="${snum <= 10}">
					<c:set var="color5" value="#FFFF00"/>
				</c:if>
			</c:if>
			<c:if test="${snum > 10}">
				<c:set var="color5" value="#FF0000"/>
			</c:if>
		
		<c:set var="hnum" value="0"/>
			<c:forEach var="newinfo" items="${newinfo}">
				<c:set var="building6" value="${newinfo.location}"/>
					<c:if test="${building6 == '人文社會科學院'}">
						<c:set var="hnum" value="${hnum+1}"/>
					</c:if>
			</c:forEach>
			<c:if test="${hnum <= 5}">
				<c:set var="color6" value="#00FF00"/>
			</c:if>
			<c:if test="${hnum > 5}">
				<c:if test="${hnum <= 10}">
					<c:set var="color6" value="#FFFF00"/>
				</c:if>
			</c:if>
			<c:if test="${hnum > 10}">
				<c:set var="color6" value="#FF0000"/>
			</c:if>
			
		<c:set var="s2num" value="0"/>
			<c:forEach var="newinfo" items="${newinfo}">
				<c:set var="building7" value="${newinfo.location}"/>
					<c:if test="${building7 == '學二宿舍'}">
						<c:set var="s2num" value="${s2num+1}"/>
					</c:if>
			</c:forEach>
			<c:if test="${s2num <= 5}">
				<c:set var="color7" value="#00FF00"/>
			</c:if>
			<c:if test="${s2num > 5}">
				<c:if test="${s2num <= 10}">
					<c:set var="color7" value="#FFFF00"/>
				</c:if>
			</c:if>
			<c:if test="${s2num > 10}">
				<c:set var="color7" value="#FF0000"/>
			</c:if>
			
		<c:set var="s1num" value="0"/>
			<c:forEach var="newinfo" items="${newinfo}">
				<c:set var="building8" value="${newinfo.location}"/>
					<c:if test="${building8 == '學一宿舍'}">
						<c:set var="s1num" value="${s1num+1}"/>
					</c:if>
			</c:forEach>
			<c:if test="${s1num <= 5}">
				<c:set var="color8" value="#00FF00"/>
			</c:if>
			<c:if test="${s1num > 5}">
				<c:if test="${s1num <= 10}">
					<c:set var="color8" value="#FFFF00"/>
				</c:if>
			</c:if>
			<c:if test="${s1num > 10}">
				<c:set var="color8" value="#FF0000"/>
			</c:if>
			
		<c:set var="tnum" value="0"/>
			<c:forEach var="newinfo" items="${newinfo}">
				<c:set var="building9" value="${newinfo.location}"/>
					<c:if test="${building9 == '教職員宿舍'}">
						<c:set var="tnum" value="${tnum+1}"/>
					</c:if>
			</c:forEach>
			<c:if test="${tnum <= 5}">
				<c:set var="color9" value="#00FF00"/>
			</c:if>
			<c:if test="${tnum > 5}">
				<c:if test="${tnum <= 10}">
					<c:set var="color9" value="#FFFF00"/>
				</c:if>
			</c:if>
			<c:if test="${tnum > 10}">
				<c:set var="color9" value="#FF0000"/>
			</c:if>
			
		<c:set var="spnum" value="0"/>
			<c:forEach var="newinfo" items="${newinfo}">
				<c:set var="building10" value="${newinfo.location}"/>
					<c:if test="${building10 == '運健休大樓'}">
						<c:set var="spnum" value="${spnum+1}"/>
					</c:if>
			</c:forEach>
			<c:if test="${spnum <= 5}">
				<c:set var="color10" value="#00FF00"/>
			</c:if>
			<c:if test="${spnum > 5}">
				<c:if test="${spnum <= 10}">
					<c:set var="color10" value="#FFFF00"/>
				</c:if>
			</c:if>
			<c:if test="${spnum > 10}">
				<c:set var="color10" value="#FF0000"/>
			</c:if>
			
		<c:set var="ennum" value="0"/>
			<c:forEach var="newinfo" items="${newinfo}">
				<c:set var="building11" value="${newinfo.location}"/>
					<c:if test="${building11== '工學院'}">
						<c:set var="ennum" value="${ennum+1}"/>
					</c:if>
			</c:forEach>
			<c:if test="${ennum <= 5}">
				<c:set var="color11" value="#00FF00"/>
			</c:if>
			<c:if test="${ennum > 5}">
				<c:if test="${ennum <= 10}">
					<c:set var="color11" value="#FFFF00"/>
				</c:if>
			</c:if>
			<c:if test="${ennum > 10}">
				<c:set var="color11" value="#FF0000"/>
			</c:if>
			
		<c:set var="comnum" value="0"/>
			<c:forEach var="newinfo" items="${newinfo}">
				<c:set var="building12" value="${newinfo.location}"/>
					<c:if test="${building12== '綜合第一大樓'}">
						<c:set var="comnum" value="${comnum+1}"/>
					</c:if>
			</c:forEach>
			<c:if test="${comnum <= 5}">
				<c:set var="color12" value="#00FF00"/>
			</c:if>
			<c:if test="${comnum > 5}">
				<c:if test="${comnum <= 10}">
					<c:set var="color12" value="#FFFF00"/>
				</c:if>
			</c:if>
			<c:if test="${comnum > 10}">
				<c:set var="color12" value="#FF0000"/>
			</c:if>
			
		<c:set var="wnum" value="0"/>
			<c:forEach var="newinfo" items="${newinfo}">
				<c:set var="building13" value="${newinfo.location}"/>
					<c:if test="${building13 == '風雨球場'}">
						<c:set var="wnum" value="${wnum+1}"/>
					</c:if>
			</c:forEach>
			<c:if test="${wnum <= 5}">
				<c:set var="color13" value="#00FF00"/>
			</c:if>
			<c:if test="${wnum > 5}">
				<c:if test="${wnum <= 10}">
					<c:set var="color13" value="#FFFF00"/>
				</c:if>
			</c:if>
			<c:if test="${wnum > 10}">
				<c:set var="color13" value="#FF0000"/>
			</c:if>
		
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
	  <script type="text/javascript">
	    google.charts.load("current", {packages:['corechart']});
	    google.charts.setOnLoadCallback(drawChart);
	    function drawChart() {
	      var data = google.visualization.arrayToDataTable([
	        ["Element", "案件數", { role: "style" }],
	        ["圖資館", ${lnum}, "${color1}"],
	        ["行政大樓", ${anum}, "${color2}"],
	        ["管理學院", ${mnum}, "${color3}"],
	        ["法學院", ${lawnum}, "${color4}"],
	        ["理學院", ${snum}, "${color5}"],
	        ["人文社會科學院", ${hnum}, "${color6}"],
	        ["學二宿舍", ${s2num}, "${color7}"],
	        ["學一宿舍", ${s1num}, "${color8}"],
	        ["教職員宿舍", ${tnum}, "${color9}"],
	        ["運健休大樓", ${spnum}, "${color10}"],
	        ["工學院", ${ennum}, "${color11}"],
	        ["綜合第一大樓", ${comnum}, "${color12}"],
	        ["風雨球場", ${wnum}, "${color13}"]
	      ]);
	
	      var view = new google.visualization.DataView(data);
	      view.setColumns([0, 1,
	                       { calc: "stringify",
	                         sourceColumn: 1,
	                         type: "string",
	                         role: "annotation" },
	                       2]);
	
	      var options = {
	        title: "高雄大學第106學年度公共場所疫情案件數",
	        width: 1300,
	        height: 600,
	        bar: {groupWidth: "95%"},
	        legend: { position: "none" },
	      };
	      var chart = new google.visualization.ColumnChart(document.getElementById("columnchart_values"));
	      chart.draw(view, options);
	  }
	</script>
	<div id="columnchart_values" style="margin-top:50px; margin-bottom:100px;"></div>
</body>
</html>
</body>
</html>