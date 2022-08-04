<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	if(session.getAttribute("loginId")==null){
		response.sendRedirect("Login.jsp");
	}
    
    String id = (String)session.getAttribute("loginId");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.6.0.min.js"></script>
<script>
	$(function(){
		$(".btn").click(function(){
			location.href="Logout.jsp";
		});
		$(".st1").click(function(){
			alert("컨텐츠를 구입하였습니다");
		});
		$(".st2").click(function(){
			alert("컨텐츠를 구입하였습니다");
		});
		$(".st3").click(function(){
			alert("컨텐츠를 구입하였습니다");
		});
		$(".st4").click(function(){
			 var num = Math.random();
			var test = Math.floor(Math.random()*1000)+1;
			$(".st4").text(test);
			alert(test+"점이 적립되었습니다.");
		});
	});
</script>
<style>
	.right{
		float:right;
	}
	body{
		width: 1200px;
	}
</style>
</head>
<body>
<div>
<h1>메인페이지</h1>
</div>
<div class="right">
<p><%=id%>님,안녕하세요.</p>

<button type="button" class="btn">로그아웃</button>
</div>

<h4>구입할 컨텐츠를 선택하세요.</h4>

<div>
	<img src = "im/Intro_350_408.png" class="st2"/>
	<img src = "im/Java_350_408.png" class="st3"/>
	<img src = "im/Cpp_350_408.png" class="st1"/>
</div>
<div class="right">
	<img src = "im/korea_it.png" class="st4"/>
</div>
</body>
</html>