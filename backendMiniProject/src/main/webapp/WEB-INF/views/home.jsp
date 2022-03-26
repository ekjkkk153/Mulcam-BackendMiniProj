<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>Movie Theater</title>
    <!-- CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <style>
    	@font-face {
            font-family: 'Pretendard-Regular';
            src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
            font-weight: 400;
            font-style: normal;
        }
        @font-face {
            font-family: 'SBAggroB';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2108@1.1/SBAggroB.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }
    </style>
    <link rel="stylesheet" href="http://localhost:8090/resources/css/styles.css" />
</head>
<body>
	<nav class="navbar fixed-top navbar-dark bg-dark shadow-sm">
		<div class="container">
			<a href="${contextPath}/" class="navbar-brand d-flex align-self-center">
				<strong class="mainpagetitle">대충 영화 정보 페이지</strong>
			</a>
			<button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" 
			data-bs-target="#navHeader" aria-controls="navHeader" aria-expanded="false">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navHeader">
				<div class="navbar-nav">
					<a class="nav-link active" aria-current="page" href="${contextPath}/index">Home</a>
					<a class="nav-link" href="${contextPath}/menu?cpage=movieinfo">영화 소개</a>
					<c:if test="${account.id eq 'admin@admin' }">
						<a class="nav-link" href="${contextPath}/admin/" id="/admin/">관리자 페이지</a>
					</c:if>
					<c:choose>
						<c:when test="${empty account }">
							<a class="nav-link" href="${contextPath}/login" id="memmenu?cpage=login">로그인 / 회원가입</a>
						</c:when>
						<c:otherwise>
							<a class="nav-link" href="${contextPath}/logout" id="logout">${account.name } | 로그아웃</a>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
	</nav>
	<div style="width: 100%; align-content: center; margin-top:3.5rem;" >
		<jsp:include page="${cpage }.jsp" />
	</div>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</body>
</html>
