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
<link rel="stylesheet" type="text/css" href="resources/user/css/qna/list.css">
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
			<h2>자주하는 질문</h2>
		</header>
		<!-- // header -->
		<!-- sub-pame-menu -->
		<ul id="sub-pame-menu">
			<li><a href="main">HOME</a></li>
			<li>고객센터</li>
			<li>자주하는 질문</li>
		</ul>
		<!-- // sub-pame-menu -->
		<!-- content -->
		<section id="content">
			<h3>고객님들이 자주 문의하시는 질문과 답변내용입니다.</h3>
			<!-- content-box -->
			<div class="content-box">
				<!-- data-box -->
				<div class="data-box">
					<div class="data-head-box">
						<input type="text" class="search-input" placeholder="이메일을 입력해 주세요."/>
						<input type="button" class="search-btn" />
					</div>
					<div class="data-body-box">
<c:forEach var="list" items="${list}">
						<!-- item -->
						<div class="itme">
							<div class="item-head">
								<span class="icon">Q.</span>
								<span class="title">${list.content}</span>
								<img src="resources/user/images/qna/arrow_faq.png" alt="arrow" title="arrow" />
							</div>
							<div class="item-body">
								<span class="icon">A.</span>
								<span class="text">
									<c:choose>
										<c:when test="${list.answer_content != null}">${list.answer_content}</c:when>
										<c:otherwise>등록된 답변이 없습니다.</c:otherwise>
									</c:choose>
								</span>
							</div>
						</div>
						<!-- // item -->
</c:forEach>
					</div>
				</div>
				<!-- // data-box -->
				<!-- paging-box -->
				<div class="paging-box">
					<span><img src="resources/user/images/qna/page_first.png" alt="first" title="first" /></span>
					<span><img src="resources/user/images/qna/page_prev.png" alt="prev" title="prev"/></span>
					<span class="active">1</span>
					<span>2</span>
					<span>3</span>
					<span>4</span>
					<span>5</span>
					<span><img src="resources/user/images/qna/page_next.png" alt="next" title="next" /></span>
					<span><img src="resources/user/images/qna/page_end.png" alt="end" title="end"/></span>
					<a href="qnaRegister" class="register-btn">글등록</a>
				</div>
				<!-- // paging-box -->
			</div>
			<!-- // content-box -->
		</section>
		<!-- // content -->
		<!-- footer -->
		<c:import url="../common/footer.jsp"></c:import>
		<!-- // footer -->	
		<!-- js -->
		<script src="resources/user/js/qna/list.js"></script>	
	</div>
	<!-- // main -->
<!-- 게시글 등록 성공시 -->
<c:if test="${message!=null}">
	<script>
		alert('${message}');
	</script>
</c:if>
</body>
</html>