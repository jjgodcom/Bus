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
<link rel="stylesheet" type="text/css" href="resources/user/css/ticketing/search.css">
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
			<h2>고속버스예매</h2>
		</header>
		<!-- // header -->
		<!-- sub-pame-menu -->
		<ul id="sub-pame-menu">
			<li><a href="main">HOME</a></li>
			<li>고속버스예매</li>
		</ul>
		<!-- // sub-pame-menu -->
		<!-- content -->
		<section id="content">
			<h3>배차조회</h3>
			<!-- content-box -->
			<div class="content-box">
				<!-- data-box -->
				<div class="data-box">
					<div class="data-head">2021. 3. 31. 수</div>
					<div class="data-body">
						<div class="bus-data-head">
							<span class="start-time">출발</span>
							<span class="destination">도착지</span>
							<span class="price">요금</span>
							<span class="seat">잔여석/총좌석</span>
							<span class="blank">빈곳</span>
						</div>
						<div class="bus-data-body">
							<!-- bus -->
							<div class="bus">
								<span class="start-time">06:00</span>
								<span class="destination">서울</span>
								<span class="price">1,000</span>
								<span class="seat">28/28</span>
								<span class="blank"><a href="seat">선택 ></a></span>
							</div>
							<!-- // bus -->
						</div>
					</div>
				</div>
				<!-- // data-box -->
				<ul class="text-box">
					<li>심야고속 및 심야우등의 할증 요금은 당일 02:00부터 04:00 사이 출발차량</li>
					<li>노선에 따라 심야요금과 심야할증요금이 동일할 수도 있음</li>

					<li>마일리지 구매 승차권은 프리미엄/편도 노선(일부노선 제외)에 한정하며 각 1매씩 예매 가능(*회원대상)</li>
					<li>유아 카시트 가능( <img src="resources/user/images/ticketing/search/ico_child_on.png" alt="child" title="child"/> ) 표시된 차량에만 유아 카시트 장착 가능 (본인 소유의 유아 카시트 준비)</li>
					<li>소요(도착)시간은 도로 사정에 따라 지연될 수 있음</li>
					<li>휠체어 탑승 가능( <img src="resources/user/images/ticketing/search/ico_wheel_on.png" alt="wheel" title="wheel"/> ) 표시된 차량에만 휠체어 동반 탑승 가능 (전동식 휠체어만 탑승 가능)</li>
					<li>
						휠체어 좌석 예매는 wkobus 사이트에서 예매 가능하며, 휠체어 좌석 예매는 출발일로 부터 3일 전까지만 가능<br>
						(*휠체어 좌석 예매가 없을 시 출발일 이틀 전부터 일반석 예매 가능)
					</li>
				</ul>
			</div>
			<!-- // content-box -->
		</section>
		<!-- // content -->
		<!-- footer -->
		<c:import url="../common/footer.jsp"></c:import>
		<!-- // footer -->		
	</div>
	<!-- // main -->
</body>
</html>