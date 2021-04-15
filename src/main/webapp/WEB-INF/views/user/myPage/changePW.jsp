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
<link rel="stylesheet" type="text/css" href="resources/user/css/myPage/changePW.css">
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
			<h2>비밀번호 변경</h2>
		</header>
		<!-- // header -->
		<!-- content -->
		<section id="content">
			<h3>안전한 고속버스 홈페이지 사용을 위하여<br>새로운 비밀번호로 교체하세요.</h3>
<form action="changePW" method="post">
			<!-- content-box -->
			<div class="content-box">
				<!-- change-pw-box -->
				<div class="change-pw-box">
					<div class="area">
						<div class="input-box">
							<label for="pw">현재 비밀번호</label>
							<input type="password" id="pw" name="password" placeholder="현재 비밀번호를 입력하세요."/>
						</div>
					</div>
					<div class="area">
						<div class="input-box">
							<label for="new-pw">새 비밀번호</label>
							<input type="password" id="new-pw" name="newPassword" placeholder="영문, 숫자 8자리 이상"/>
						</div>
					</div>
					<div class="area">
						<div class="input-box">
							<label for="re-pw">새 비밀번호 확인</label>
							<input type="password" id="re-pw" placeholder="새 비밀번호를 재입력하세요"/>
						</div>
					</div>
				</div>
				<!-- // change-pw-box -->
			</div>
			<!-- // content-box -->
			<input type="submit" class="change-pw-btn" value="비밀번호 변경" />
</form>
		</section>
		<!-- // content -->
		<!-- footer -->
		<c:import url="../common/footer.jsp"></c:import>
		<!-- // footer -->		
	</div>
	<!-- // main -->
<!-- 비번 변경 실패시 -->
<c:if test="${message!=null}">
	<script>
		alert('${message}');
	</script>
</c:if>
</body>
</html>