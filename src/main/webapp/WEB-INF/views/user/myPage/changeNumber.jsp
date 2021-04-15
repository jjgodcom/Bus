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
<link rel="stylesheet" type="text/css" href="resources/user/css/myPage/changeNumber.css">
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
			<h2>휴대폰번호 변경</h2>
		</header>
		<!-- // header -->
		<!-- content -->
		<section id="content">
			<h3>현재 사이트에 등록된 비밀번호와 변경하실 새로운 휴대폰 번호를 입력하세요.</h3>
<form action="changeNumber" method="post">
			<!-- content-box -->
			<div class="content-box">
				<!-- change-pn-box -->
				<div class="change-pn-box">
					<div class="area">
						<div class="input-box">
							<label for="pw">비밀번호</label>
							<input type="password" id="pw" name="password" placeholder="비밀번호를 입력하세요."/>
						</div>
					</div>
					<div class="area">
						<div class="input-box">
							<label for="phone">휴대폰번호</label>
							<input type="text" id="phone" name="number" placeholder="휴대폰번호를 입력하세요."/>
						</div>
					</div>
				</div>
				<!-- // change-pn-box -->
			</div>
			<!-- // content-box -->
			<input type="button" class="change-pn-btn" value="비밀번호 변경" />
</form>
		</section>
		<!-- // content -->
		<!-- footer -->
		<c:import url="../common/footer.jsp"></c:import>
		<!-- // footer -->		
	</div>
	<!-- // main -->
<!-- 번호 변경 실패시 -->
<c:if test="${message!=null}">
	<script>
		alert('${message}');
	</script>
</c:if>
	<!-- js -->
	<script src="resources/user/js/myPage/changeNumber.js"></script>
</body>
</html>