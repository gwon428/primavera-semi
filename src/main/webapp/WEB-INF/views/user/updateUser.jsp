<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
			<!DOCTYPE html>
			<html>

			<head>
				<meta charset="UTF-8">
				<link rel="stylesheet" href="/resources/css/reset.css" />
				<link href="../../resources/css/header.css" rel="stylesheet" type="text/css">
				<link href="../../resources/css/user/updateUser.css" rel="stylesheet" type="text/css">
				<meta charset="UTF-8">
				<script src="https://kit.fontawesome.com/4602e82315.js" crossorigin="anonymous"></script>
				<title>Insert title here</title>
				<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
			</head>
			<header>
<nav>
				<a href="/">Primavera</a>
			</nav>
			<nav>
				<a href="/map/mainMap">Store</a> <a href="#">Guide</a> <a href="collectPage">PickUp</a> <a
					href="/notice/list">Board</a> <span>
					<a href="/review/list">Review</a> <a href="listQna">Q & A</a> <a href="/notice/list">Notice</a>
				</span> <a href="myPage"><i class="fa-regular fa-user"></i></a>
			</nav>
			</header>

			<body>
				<sec:authentication property="principal" var="user" />
				<main>
				<div class="center-wrap">
				
					<h1>회원 정보 수정</h1>
					<form action="updateUser" method="post" onsubmit="return validate()">
							<h2> 기본 정보 </h2>
							<div id="input">
								<p> 아이디 </p> <span>${user.id}</span>
								<input type="hidden" name="id" value="${user.id}">
							</div>
							
							<div id="input">
								<div>
									<p>비밀번호</p>
									<input type="password" name="password" id="userPwd" value="${pwd}">
								</div>
								<span id="pwdreg">&nbsp;</span>
							</div>
							
							<div id="input">
								<p>이름 </p>
								<input type="text" name="name" id="userName" value="${user.name}">
								<span id="namereg">&nbsp;</span>
							</div>
							
							<div id="input">
								<div>
									<p>휴대폰 번호 </p><span id="phoneCheckresult"> &nbsp;</span>
									<input type="text" name="phone" id="userPhone" value="${user.phone}">
								</div>
								<span id="phonereg">&nbsp;</span>
							</div>
							
							<div id="input">	
								<div>
									<p>이메일 </p><span id="emailCheckresult"> &nbsp;</span>
									<input type="text" name="email" id="email" value="${user.email}">
								</div>
								<span id="emailreg">&nbsp;</span>
							</div>
							<input type="submit" value="수정" id="updateButton">
					</form>
					</div>
				</main>
				<script type="text/javascript" src="../../resources/js/updateregExp.js"></script>
			</body>

			</html>