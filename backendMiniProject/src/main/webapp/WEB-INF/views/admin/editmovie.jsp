<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="/../js/querymovie.js?" ></script> 

<style>
#form #form>table{
	width:100%;
}
tr>td>input{
	width:100%;
}
</style>
</head>

<body>
	<div class="maincontent border rounded overflow-hidden mb-4 shadow-sm h-md-250 position-relative bg-white">
	<!-- <div> -->
		<div class="col p-4 d-flex flex-column position-static">
			<h2>영화 수정/삭제</h2>
			<a href="../admin/">관리자 페이지로 돌아가기</a>

			<table>
				<thead>
					<th>번호</th>
					<th>제목</th>
					<th>개봉일</th>
					<th>수정</th>
					<th>삭제</th>
				</thead>
				<tbody>
					<c:forEach var="movie" items="${movlist }" varStatus="status">
						${status.index }
						<%-- <tr>
							<td>${movie.mov_article_num }</td>
							<td>${movie.mov_subject }</td>
							<td>${movie.mov_date }</td>
							<td><button class="btn">수정</button></td>
							<td><button class="btn">삭제</button></td>
						</tr> --%>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<script>
		var movlist = queryAllMovie();
		console.log(movlist);
		for(let movie of movlist)
			console.log(movie);
	</script>
	
</body>
</html>