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
<link rel="stylesheet" type="text/css" href="resources/user/css/myPage/home.css">

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</head>
<body>
	<!-- modal -->
	<div id="withdrawal" class="modal fade" role="dialog" aria-labelledby="gridSystemModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
<form action="deleteUser" method="post">
				<!-- modal-body -->
				<div class="modal-body">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<p class="title">알림</p>
					<p class="text">
						탈퇴하시려면 사이트에 등록된 비밀번호를 입력하신 후,<br>
						회원탈퇴 버튼을 클릭해주세요.<br>
						탈퇴하시면 모든 데이터가 삭제됩니다.<br>
						고속버스 통합 회원을 탈퇴하시겠습니까?<br>
					</p>
					<div class="border-box">
						<div class="input-box">
							<label for="user-pw">비밀번호</label>
							<input type="password" id="user-pw" name="password" placeholder="현재 사이트에 등록된 비밀번호를 입력하세요."/>
						</div>
					</div>
				</div>
				<!-- // modal-body -->
				<!-- modal-footer -->
				<div class="modal-footer">
					<ul>
						<li><input type="button" data-dismiss="modal" aria-label="Close" value="취소"/></li>
						<li><input type="submit" value="회원탈퇴"/></li>
					</ul>
				</div>
				<!-- // modal-footer -->
</form>
			</div>
		</div>
	</div>
	<!-- // modal -->
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
			<h2>마이페이지</h2>
			<a href="ticketList" class="page-move">
				<span class="img-box"></span>
				<span class="sm-text">나의 예매내역</span>
				<span class="m-text">0건</span>
				<span class="white-text">예매확인/취소 ></span>
			</a>
		</header>
		<!-- // header -->
		<!-- content -->
		<section id="content">
			<!-- content-box -->
			<div class="content-box">
				<div class="info-box">
					<p class="sm-text">계정정보</p>
					<span class="m-text">${user.email}</span>
					<div class="page-move">
						<a href="changePW" class="first">비밀번호 변경 <img src="resources/user/images/myPage/home/arrow.png" alt="arrow" title="arrow" /></a>
						<a href="ticketList" data-toggle="modal" data-target="#withdrawal">회원탈퇴 <img src="resources/user/images/myPage/home/arrow.png" alt="arrow" title="arrow" /></a>
					</div>
				</div>
				<div class="info-box">
					<p class="sm-text">휴대폰번호</p>
					<span class="m-text">${user.phone}</span>
					<div class="page-move">
						<a href="changeNumber">휴대폰번호 변경 <img src="resources/user/images/myPage/home/arrow.png" alt="arrow" title="arrow" /></a>
					</div>
				</div>
			</div>
			<!-- // content-box -->
		</section>
		<!-- // content -->
		<!-- footer -->
		<c:import url="../common/footer.jsp"></c:import>
		<!-- // footer -->		
	</div>
	<!-- // main -->
<!-- 탈퇴 alert -->
<c:if test="${message!=null}">
	<script>
		alert('${message}');
	</script>
</c:if>
</body>
</html>