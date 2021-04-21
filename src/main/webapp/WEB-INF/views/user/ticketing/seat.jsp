<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고속버스통합예매</title>
<!-- user common file setting -->
<c:import url="../common/userSettings.jsp"></c:import>
<!-- css -->
<link rel="stylesheet" type="text/css"
	href="resources/user/css/ticketing/seat.css">
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
		<section id="content" class="seat-data-box">
			<h3>매수 및 좌석선택</h3>
			<!-- content-box -->
<form action="ticketUpdate">
				<input type="hidden" name="table" value="${table}"> 
				<input type="hidden" name="check_seat" value="">
				<input type="hidden" name="departure_date" value="${departure_time}">
				<input type="hidden" name="departure_area" value="${departure_area}">
				<input type="hidden" name="destination" value="${destination}">
				<div class="content-box">
					<!-- info-box -->
					<div class="info-box">
						<div class="date-box">2021. 3. 31. 수</div>
						<div class="time-box">
							<span>출발</span><span>${departure_time}</span>
						</div>
						<div class="terminal-box">
							<div class="start">
								<div class="round">출발</div>
								<div class="text">${departure_area}</div>
							</div>
							<div class="end">
								<div class="round">도착</div>
								<div class="text">${destination}</div>
							</div>
						</div>
					</div>
					<!-- // info-box -->
					<!-- detail-box -->
					<div class="detail-box">
						<div class="detail-head-box">
							<div class="seat">잔여 ${remaining_seats}석 / 전체 28석</div>
							<div class="text">
								<span class="square-orange"></span>여성/노약자 우선
							</div>
						</div>
						<div class="detail-body-box">
							<div class="select-seat-box">
								<div class="seat-bg">
									<div class="seat-list">
										<c:forEach var="list" items="${list}">
											<!-- item -->
											<div class="seat-area ${list.available_seat == 1 ? 'disabled' : ''}">
												<input type="checkbox" id="seat${list.seat_number}"
													data-seat="${list.seat_number}" /> <label
													for="seat${list.seat_number}">${list.seat_number}</label>
											</div>
											<!-- // item -->
										</c:forEach>
										<!-- 
									<div class="seat-area disabled">
										<input type="checkbox" id="seat28" />
										<label for="seat28">28</label>
									</div> -->
									</div>
								</div>
							</div>
							<div class="select-data-box">
								<div class="seat-info">
									<div class="text">선택좌석</div>
									<div class="seat-number"></div>
								</div>
								<div class="price-info">
									<span class="text">총 결제금액</span> <span class="price">0원</span>
								</div>
								<input type="button" class="seat-btn" value="결제하기" />
							</div>
						</div>
					</div>
					<!-- // detail-box -->
				</div>
</form>
			<!-- // content-box -->
			<!-- text-box -->
			<ul class="text-box">
				<li>심야 시간대 출발차량의 1번부터 9번 좌석까지는 여성고객 및 노약자를 위한 좌석으로 운영되고 있습니다.
					교통 약자를 위해 배려해 주시기 바랍니다.</li>
				<li>일부 버스의 경우 실제 좌석배치와 다를 수 있습니다.</li>
				<li><span class="square-orange">색상표기 좌석</span>은 여성고객 및 노약자를 위한
					좌석입니다. 배려해 주시기 바랍니다.</li>
			</ul>
			<!-- // text-box -->
		</section>
		<!-- // content -->
		<!-- content -->
		<section id="content" class="payment-data-box">
			<h3>가는 편 승차권 정보</h3>
			<!-- content-box -->
			<div class="content-box">
				<div class="payment-head-box">2021. 4. 16. 금 13:00</div>
				<div class="payment-body-box">
					<div class="right-box">
						<div class="start">
							<div class="round">출발</div>
							<div class="text">서울</div>
						</div>
						<div class="end">
							<div class="round">도착</div>
							<div class="text">서울</div>
						</div>
					</div>
					<div class="left-box">
						<div class="basics-box">
							<div>매수</div>
							<div>2</div>
						</div>
						<div class="basics-box">
							<div>좌석</div>
							<div>1</div>
						</div>
						<div class="price-box">
							<div>총 결제금액</div>
							<div>22,222원</div>
						</div>
					</div>
				</div>
			</div>
			<!-- // content-box -->
			<input type="button" class="payment-btn" value="결제하기" />
		</section>
		<!-- // content -->
		<!-- footer -->
		<c:import url="../common/footer.jsp"></c:import>
		<!-- // footer -->
	</div>
	<!-- // main -->
	<!-- js -->
	<script src="resources/user/js/ticketing/seat.js"></script>
</body>
</html>