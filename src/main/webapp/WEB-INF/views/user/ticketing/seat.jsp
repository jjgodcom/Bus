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
<link rel="stylesheet" type="text/css" href="resources/user/css/ticketing/seat.css">
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
			<div class="content-box">
				<!-- info-box -->
				<div class="info-box">
					<div class="date-box">2021. 3. 31. 수</div>
					<div class="time-box"><span>출발</span><span>12:00</span></div>
					<div class="terminal-box">
						<div class="start">
							<div class="round">출발</div>
							<div class="text">서울</div>
						</div>
						<div class="end">
							<div class="round">도착</div>
							<div class="text">서울</div>
						</div>
					</div>
				</div>
				<!-- // info-box -->
				<!-- detail-box -->
				<div class="detail-box">
					<div class="detail-head-box">
						<div class="seat">잔여 26석 / 전체 28석</div>
						<div class="text"><span class="square-orange"></span>여성/노약자 우선</div>
					</div>
					<div class="detail-body-box">
						<div class="select-seat-box">
							<div class="seat-bg">
								<div class="seat-list">
									<!-- item -->
									<div class="seat-area">
										<input type="checkbox" id="seat01" />
										<label for="seat01">1</label>
									</div>
									<!-- // item -->
									<div class="seat-area">
										<input type="checkbox" id="seat02" />
										<label for="seat02">2</label>
									</div>
									<div class="seat-area">
										<input type="checkbox" id="seat03" />
										<label for="seat03">3</label>
									</div>
									<div class="seat-area">
										<input type="checkbox" id="seat04" />
										<label for="seat04">4</label>
									</div>
									<div class="seat-area">
										<input type="checkbox" id="seat05" />
										<label for="seat05">5</label>
									</div>
									<div class="seat-area">
										<input type="checkbox" id="seat06" />
										<label for="seat06">6</label>
									</div>
									<div class="seat-area">
										<input type="checkbox" id="seat07" />
										<label for="seat07">7</label>
									</div>
									<div class="seat-area">
										<input type="checkbox" id="seat08" />
										<label for="seat08">8</label>
									</div>
									<div class="seat-area">
										<input type="checkbox" id="seat09" />
										<label for="seat09">9</label>
									</div>
									<div class="seat-area">
										<input type="checkbox" id="seat10" />
										<label for="seat10">10</label>
									</div>
									<div class="seat-area">
										<input type="checkbox" id="seat11" />
										<label for="seat11">11</label>
									</div>
									<div class="seat-area">
										<input type="checkbox" id="seat12" />
										<label for="seat12">12</label>
									</div>
									<div class="seat-area">
										<input type="checkbox" id="seat13" />
										<label for="seat13">13</label>
									</div>
									<div class="seat-area">
										<input type="checkbox" id="seat14" />
										<label for="seat14">14</label>
									</div>
									<div class="seat-area">
										<input type="checkbox" id="seat15" />
										<label for="seat15">15</label>
									</div>
									<div class="seat-area">
										<input type="checkbox" id="seat16" />
										<label for="seat16">16</label>
									</div>
									<div class="seat-area">
										<input type="checkbox" id="seat17" />
										<label for="seat17">17</label>
									</div>
									<div class="seat-area">
										<input type="checkbox" id="seat18" />
										<label for="seat18">18</label>
									</div>
									<div class="seat-area">
										<input type="checkbox" id="seat19" />
										<label for="seat19">19</label>
									</div>
									<div class="seat-area">
										<input type="checkbox" id="seat20" />
										<label for="seat20">20</label>
									</div>
									<div class="seat-area">
										<input type="checkbox" id="seat21" />
										<label for="seat21">21</label>
									</div>
									<div class="seat-area">
										<input type="checkbox" id="seat22" />
										<label for="seat22">22</label>
									</div>
									<div class="seat-area">
										<input type="checkbox" id="seat23" />
										<label for="seat23">23</label>
									</div>
									<div class="seat-area">
										<input type="checkbox" id="seat24" />
										<label for="seat24">24</label>
									</div>
									<div class="seat-area">
										<input type="checkbox" id="seat25" />
										<label for="seat25">25</label>
									</div>
									<div class="seat-area">
										<input type="checkbox" id="seat26" />
										<label for="seat26">26</label>
									</div>
									<div class="seat-area">
										<input type="checkbox" id="seat27" />
										<label for="seat27">27</label>
									</div>
									<div class="seat-area disabled">
										<input type="checkbox" id="seat28" />
										<label for="seat28">28</label>
									</div>
								</div>
							</div>
						</div>
						<div class="select-data-box">
							<div class="seat-info">
								<div class="text">선택좌석</div>
								<div class="seat-number">6, 8</div>
							</div>
							<div class="price-info">
								<span class="text">총 결제금액</span>
								<span class="price">20,000원</span>
							</div>
							<input type="button" class="seat-btn" value="선택완료"/>
						</div>
					</div>
				</div>
				<!-- // detail-box -->
			</div>
			<!-- // content-box -->
			<!-- text-box -->
			<ul class="text-box">
				<li>심야 시간대 출발차량의 1번부터 9번 좌석까지는 여성고객 및 노약자를 위한 좌석으로 운영되고 있습니다. 교통 약자를 위해 배려해 주시기 바랍니다.</li>
				<li>일부 버스의 경우 실제 좌석배치와 다를 수 있습니다.</li>
				<li><span class="square-orange">색상표기 좌석</span>은 여성고객 및 노약자를 위한 좌석입니다. 배려해 주시기 바랍니다.</li>
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