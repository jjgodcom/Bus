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
<link rel="stylesheet" type="text/css" href="resources/user/css/login/findID.css">
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
			<h2>아이디 찾기</h2>
		</header>
		<!-- // header -->
		<!-- content -->
		<section id="content">
			<h3>회원가입 시 입력한 휴대폰번호를 입력하세요.</h3>
			<!-- content-box -->
			<div class="content-box">
				<!-- find-id-box -->
				<div class="find-id-box">
					<div class="area">
						<div class="input-box">
							<label for="phone">휴대폰번호</label>
							<input type="text" id="phone" name="phone" value="01011110001" placeholder="휴대폰번호를 입력하세요."/>
						</div>
						<input type="button" class="find-id-btn" value="확인" />
					</div>
				</div>
				<!-- // find-id-box -->
				<!-- result-box -->
				<div class="result-box result">
					<div class="area">
						<p class="text-head">회원님의 아이디는 다음과 같습니다.</p>
						<div class="result-id">jjgodc***@g****.com</div>
						<p class="text-foot">개인정보 보호를 위하여 일부 글자가 *로 표시됩니다.</p>
					</div>
				</div>
				<!-- // result-box -->			
			</div>
			<!-- // content-box -->
			<div class="result">
				<ul class="page-move">
					<li><a href="findPW">비밀번호 찾기</a></li>
					<li><a href="login">로그인</a></li>
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
	<script src="resources/user/js/login/findID.js"></script>
</body>
</html>