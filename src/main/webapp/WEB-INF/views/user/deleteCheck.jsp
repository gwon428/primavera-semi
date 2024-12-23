<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
			<!DOCTYPE html>
			<html>

			<head>
				<meta charset="UTF-8">
				<link rel="stylesheet" href="/resources/css/reset.css" />
				<link href="../../resources/css/header.css" rel="stylesheet" type="text/css">
				<link href="../../resources/css/user/deleteCheck.css" rel="stylesheet" type="text/css">
				<meta charset="UTF-8">
				<script src="https://kit.fontawesome.com/cbb1359000.js" crossorigin="anonymous"></script>
				<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
				<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.7.1/kakao.min.js"
					integrity="sha384-kDljxUXHaJ9xAb2AzRd59KxjrFjzHa5TAoFQ6GbYTCAG0bjM55XohjjDT7tDDC01"
					crossorigin="anonymous"></script>
				<script>
					kakao.init('2aa4500445d4b2a832d23e0d819fb737');
				</script>
				<title>Primavera</title>
			</head>

			<header>
				<nav>
					<a href="/">Primavera</a>
				</nav>
				<nav>
					<a href="mainMap">Store</a> <a href="Guide">Guide</a> <a href="collectPage">PickUp</a> <a
						href="/notice/list">Board</a> <span>
						<a href="/review/list">Review</a> <a href="listQna">Q & A</a> <a href="/notice/list">Notice</a>
					</span> <a href="myPage"><i class="fa-regular fa-user"></i></a>
				</nav>
			</header>

			<body>
				<sec:authentication property="principal" var="user" />
				<main>
					<div id="sideMenu">
						<a href="showReview" id="showReview">My Review</a> <a href="showQna">My Q&A</a> <a
							href="showCollect">My Pick Up</a> <a href="userUpdate" id="update">회원
							정보 수정</a> <a href="deleteUser" id="delete">회원 탈퇴</a> <a href="logout">로그아웃</a>
					</div>

					<div id="mainMenu">
						<h1>회원 탈퇴</h1>
						<hr>
						<h2>정보를 안전하게 보호하기 위해 </h2>
						<h2><span>비밀번호를 다시 한 번 확인</span>합니다.</h2>
						<p id="desc">비밀번호가 타인에게 노출되지 않도록 항상 주의해주세요.</p>
						<form action="deleteCheck" method="post" onsubmit="return unlinkApp()">
							<div class="idpwd">
								<p>아이디 : ${user.id}</p>
								<input type="password" name="password" placeholder="비밀번호">
							</div>
							<input type="submit" value="탈퇴" class="deleteButton">
						</form>
					</div>
				</main>
				<script>
					function unlinkApp() {

						kakao.API.request({
							url: '/v1/user/unlink',
						})
							.then(function (res) {
								alert('success: ' + JSON.stringify(res));
								return true;
							})
							.catch(function (err) {
								alert('fail: ' + JSON.stringify(err));
								return false;
							});
					}


				</script>
			</body>

			</html>