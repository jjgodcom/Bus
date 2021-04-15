<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고속버스통합예매</title>
<!-- user common file setting -->
<c:import url="../common/userSettings.jsp"></c:import>
<!-- css -->
<link rel="stylesheet" type="text/css" href="resources/user/css/login/findPW.css">
</head>
<body>
	<!-- side-manu -->
	<c:import url="../common/sideMenu.jsp"></c:import>
	<!-- // side-manu -->
	<!-- main -->
	<div id="main">
		<!-- top-menu -->
		<c:import url="../common/topMenu.jsp"></c:import>
		<!-- // top-menu -->
		<!-- header -->
		<header id="header">
			<h2>비밀번호 찾기</h2>
		</header>
		<!-- // header -->
		<!-- content -->
		<section id="content">
			<h3>회원가입 시 입력한 정보를 입력하세요.</h3>
			<!-- content-box -->
			<div class="content-box">
				<!-- find-id-box -->
				<div class="find-pw-box">
					<div class="area">
						<div class="input-box">
							<label for="userID">아이디</label>
							<input type="text" id="userID" name="email" value="banana@naver.com" placeholder="아이디를 입력하세요."/>
						</div>
						<input type="button" class="find-pw-btn" value="확인" />
					</div>
				</div>
				<!-- // find-id-box -->
				<!-- result-box -->
				<div class="result-box result">
					<div class="area">
						<p class="text-head">회원정보에 등록되어 있는 휴대폰번호로 임시 비밀번호를 발송합니다.</p>
					</div>
				</div>
				<!-- // result-box -->	
			</div>
			<!-- // content-box -->
			<div class="result">
				<ul class="page-move">
					<li><a id="sendPW" href="sendPW">임시 비밀번호 발송</a></li>
				</ul>
			</div>
		</section>
		<!-- // content -->
		<!-- footer -->
		<c:import url="../common/footer.jsp"></c:import>
		<!-- // footer -->		
	</div>
	<!-- // main -->
	<!-- js -->
	<script src="resources/user/js/login/findPW.js"></script>
</body>
</html>