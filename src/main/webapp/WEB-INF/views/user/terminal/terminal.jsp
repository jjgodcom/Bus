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
<link rel="stylesheet" type="text/css" href="resources/user/css/terminal/terminal.css">
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
			<h2>고속버스 터미널 안내</h2>
		</header>
		<!-- // header -->
		<!-- sub-pame-menu -->
		<ul id="sub-pame-menu">
			<li><a href="main">HOME</a></li>
			<li>이용안내</li>
			<li>고속버스 터미널 안내</li>
		</ul>
		<!-- // sub-pame-menu -->
		<!-- content -->
		<section id="content">
			<h3>전국의 고속버스 터미널 안내입니다.</h3>
			<p class="sub-h3">지역을 선택하시면 해당 지역에 소재한 고속버스 터미널을 확인할 수 있습니다.</p>
			<!-- content-box -->
			<div class="content-box">
				<!-- data-box -->
				<div class="data-box">
					<div class="data-head-box">
						<select class="gray-select">
							<c:forTokens var="area" delims="," items="서울,경기,인천,강원,충남,대전,충북,전북,경북,대구,광주,전남,경남,울산,부산">
								<option value="${area}" ${param.area == area ? 'selected' : ''}>${area}</option>
							</c:forTokens>
						</select>
						
					</div>
					<div class="data-body-box">
						<div class="terminal-head">
							<span>고속회사</span>
							<span>주소</span>
							<span>전화번호</span>
						</div>
						<div class="terminal-body">
							<!-- item -->
<c:forEach var="terminal" items="${terminal}">
							<div class="line">
								<span>${terminal.terminal_name}</span>
								<span>${terminal.terminal_address}</span>
								<span>${terminal.terminal_phone}</span>
							</div>
</c:forEach>
							<!-- // item -->
							
						</div>
					</div>
				</div>
				<!-- // data-box -->
			</div>
			<!-- // content-box -->
		</section>
		<!-- // content -->
		<!-- footer -->
		<c:import url="../common/footer.jsp"></c:import>
		<!-- // footer -->		
	</div>
	<!-- // main -->
	<script src="resources/user/js/terminal/terminal.js"></script>
</body>
</html>