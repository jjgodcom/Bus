<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리</title>
<!-- admin common file setting -->
<c:import url="../common/adminSettings.jsp"></c:import>
</head>
<body>
	<div class="container-scroller">
		<!-- header -->
		<nav class="navbar default-layout col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
			<!-- 상단 로고 박스 -->
			<div class="text-center navbar-brand-wrapper d-flex align-items-top justify-content-center">
				<a class="navbar-brand brand-logo" href="/admin/memberList">
					<img src="/resources/admin/images/logo.svg" alt="logo" />
				</a>
				<a class="navbar-brand brand-logo-mini" href="/admin/memberList">
					<img src="/resources/admin/images/logo-mini.svg" alt="logo" />
				</a>
			</div>
			<!-- //상단 로고 박스 -->
			<!-- 상단 흰색 바 -->
			<div class="navbar-menu-wrapper d-flex align-items-center"></div>
			<!-- //상단 흰색 바 -->
		</nav>
		<!-- header -->
		<!-- main -->
		<div class="container-fluid page-body-wrapper">
			<!-- side menu -->
			<nav class="sidebar sidebar-offcanvas" id="sidebar">
				<ul class="nav">
					<!-- menu title -->
					<li class="nav-item nav-category">Main Menu</li>
					<!-- //menu title -->
					<!-- item -->
					<li class="nav-item">
						<a class="nav-link" href="/admin/memberList"> 
							<i class="menu-icon typcn typcn-document-text"></i>
							<span class="menu-title">회원관리</span>
						</a>
					</li>
					<!-- //item -->
					<!-- item -->
					<li class="nav-item">
						<a class="nav-link" href="/admin/questionsList">
							<i class="menu-icon typcn typcn-document-text"></i>
							<span class="menu-title">예매관리</span>
						</a>
					</li>
					<!-- //item -->
					<!-- item -->
					<li class="nav-item">
						<a class="nav-link" href="adminQuestionsList">
							<i class="menu-icon typcn typcn-document-text"></i>
							<span class="menu-title">Q&#38;A 답변관리</span>
						</a>
					</li>
					<!-- //item -->
				</ul>
			</nav>
			<!-- //side menu -->
			<!-- white box  -->
			<div class="main-panel">
				<!-- content box -->
				<div class="content-wrapper">
					<!-- white box -->
					<div class="col-lg-6 grid-margin stretch-card">
						<div class="card">
							<div class="card-body">
								<h3>회원 수정</h3>
								<br>
<form class="forms-sample" action="/admin/memberModify" method="post">
									<!-- form-group -->
									<div class="form-group row">
										<label for="test01" class="col-sm-2 col-form-label">email</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" id="test01" name="email" value="${vo.email}" readonly="readonly">
										</div>
									</div>
									<!-- //form-group -->
									<!-- form-group -->
									<div class="form-group row">
										<label for="test05" class="col-sm-2 col-form-label">pw</label>
										<div class="col-sm-10">
											<input type="password" class="form-control" id="test05" name="password" value="${vo.password}">
										</div>
									</div>
									<!-- //form-group -->
									<!-- form-group -->
									<div class="form-group row">
										<label for="test02" class="col-sm-2 col-form-label">phone</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" id="test02" name="phone" value="${vo.phone}">
										</div>
									</div>
									<!-- //form-group -->
									<!-- form-group -->
									<div class="form-group row">
										<label for="test03" class="col-sm-2 col-form-label">birthd</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" id="test03" name="birthd" value="${vo.birthd}">
										</div>
									</div>
									<!-- //form-group -->
									<!-- form-group -->
									<div class="form-group row">
										<label for="test04" class="col-sm-2 col-form-label">point</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" id="test04" name="point" value="${vo.point}">
										</div>
									</div>
									<!-- //form-group -->
									<!-- form-group -->
									<div class="form-group row">
										<label for="test05" class="col-sm-2 col-form-label">가입일</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" id="test05" value="${vo.registration_date}" readonly="readonly">
										</div>
									</div>
									<!-- //form-group -->
									<input type="submit" style="float: right" class="btn btn-success mr-2" value="등록">
</form>
							</div>
						</div>
					</div>
					<!-- // white box -->
				</div>
				
				<!-- //content box -->
				<!-- footer -->
				<footer class="footer">
					<div class="container-fluid clearfix">
						<span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright © bootstrapdash.com 2020</span>
						<span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">
							Free 
							<a href="https://www.bootstrapdash.com/bootstrap-admin-template/" target="_blank">Bootstrap admin templates</a> 
							from Bootstrapdash.com
						</span>
					</div>
				</footer>
				<!-- //footer -->
			</div>
			<!-- //white box  -->
		</div>
		<!-- //main -->
	</div>
</body>
</html>