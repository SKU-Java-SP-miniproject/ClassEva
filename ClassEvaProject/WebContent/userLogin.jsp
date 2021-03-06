<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/htmll charset=UTF-8">
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>강의평가 웹사이트</title>
	<!--  부트스트랩 CSS 추가 -->
	<link rel="stylesheet" href="./css/bootstrap.min.css">
	<!--  커스텀 CSS 추가 -->
	<link rel="stylesheet" href="./css/custom.css">
</head>
<body>
<%
	String userID = null;
	if(session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	if(userID != null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인이 된 상태입니다.');");
		script.println("location.href = 'index.jsp'");
		script.println("</script>");
		script.close();	
	}
%>	

	<nav class="navbar nabvor-expand-lg navbar-light bg-light">
	<a class= "navbar-brand" href="Index.jsp">강의평가 웹 사이트</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar">
		<span class="navbar-toggler-icon"></span>
	</button>
		<div id="navbar" class="collapse navbor-collapse">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item">
					<a class="nav-link" href="Index.jsp">메인</a>
				</li>
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" id="dropdown" data-toggle="dropdown">
					회원관리
					</a>
					<div class="dropdown-menu" aria-labelledby="dropdown">
              		<a class="dropdown-item active" href="userLogin.jsp">로그인</a>
              		<a class="dropdown-item" href="userRegister.jsp">회원가입</a>
             		<a class="dropdown-item" href="userLogout.jsp">로그아웃</a>
		</div>
			</ul>
			<form class="form-inline my-2 my-lg-0">
			<input class="form-control mr-sm-2" type="search" placeholder="내용을 입력하세요." aria-label="Search">
          	<button class="btn btn-outline-success my-2 my-sm-0" type="submit">검색</button>	
			</form>
		</div>
	</nav>
		<section class="container mt-3" style="max-width: 560px;">
		<form method="post" action="./userLoginAction.jsp">
			<div class="form-group">
				<label>아이디</label>
				<input type= "text" name= "userID" class="form-control">
				
			</div>
			<div class="form-group">
				<label>패스워드</label>
				<input type="password" name="userPW" class="form-control">
				
			</div>
			<button type="submit" class="btn btn-primary">로그인</button>
		</form>
	
	</section>
-->
       
    <footer class="bg-dark mt-4 p-5 text-center" style="color: #FFFFFF;">

      Copyright ⓒ 2021 한혜영 김서윤 All Rights Reserved.

    </footer>

	<!-- 제이쿼리 자바스크립트 추가하기. -->
	<script src= "./js/jquery.min.js"></script>
	<!-- 파퍼 자바스크립트 추가하기. --> 
	<script src= "./js/popper.min.js"></script>
	<!-- 부트스트랩 자바스크립트 추가하기. --> 
	<script src= "./js/bootstrap.min.js"></script>
</body>
</html>