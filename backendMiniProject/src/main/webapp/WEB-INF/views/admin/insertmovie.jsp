<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
#form #form>table{
	width:100%;
}
tr>td>input{
	width:100%;
}
</style>
<body>
	<div class="maincontent border rounded overflow-hidden mb-4 shadow-sm h-md-250 position-relative bg-white">
	<!-- <div> -->
		<div class="col p-4 d-flex flex-column position-static">
			<h2>영화 작성하기</h2>
			<a href="../admin">관리자 페이지로 돌아가기</a>

			<form id="form" action="../admin/insertmovie" method="post" enctype="multipart/form-data">
				<table>
					<tr>
						<th><label>영화 제목 : </label></th>
						<td><input type="text" id="movtitle" name="movtitle"></td>
					</tr>
					<tr>
						<th><label>영화 이미지 : </label></th>
						<td><input type="file" id="movimage" name="movimage"></td>
					</tr>
					<tr>
						<th><label>영화 개봉일자 : </label></th>
						<td><input type="date" id="movdate" name="movdate"></td>
					</tr>
					<tr>
						<th><label>영화 설명 : </label></th>
						<td><textarea id="movinfo" name="movinfo"></textarea></td>
					</tr>
					<tr>
						<th><label>영화 예고편(유튜브) : </label></th>
						<td><input type="text" id="movyoutube" name="movyoutube" placeholder="https://www.youtube.com/watch?v=dQw4w9WgXcQ"></td>
					</tr>
					<tr>
						<td><input type="submit" class="btn" value="제출하기"></td>
					</tr>
				</table>


			</form>
		</div>
	</div>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script>
		$(function(){
			var today = new Date().toISOString().substring(0, 10);
			$('#movdate').val(today);
			
			$('#form').submit(function(){
				console.log($('#movtitle').val());
				var formData = new FormData();
				formData.append("movtitle",$('#movtitle').val());
				formData.append("movimage",$('#movimage')[0].files[0]);
				formData.append("movdate",$('#movdate').val());
				formData.append("movinfo",$('#movinfo').val());
				const regExp = /[a-zA-Z0-9]/g;
				if(regExp.test($('#movyoutube').val())){
					formData.append("movyoutube",$('#movyoutube').val());
				} else formData.append("movyoutube", null);
				console.log($('#movimage').val());
				$.ajax({
					type:"post",
					enctype: 'multipart/form-data', // 필수 
					processData: false, // 필수 
					contentType: false, // 필수
					async:false,
					url:'${contextPath}/insertmovie',
					data:formData,
					success: function(data, textStatus){ // data는 데이터, textStatus는 성공했는지르 가져옴(안써도됨)
						//console.log(data);
						alert("전송 완료");
						return true;
					},
					error: function(data, textStatus){
						alert("전송 오류");
					}
				});
				return false;
			});
			$('#movyoutube').focus(function(){
				$('#movyoutube').val("");
				$('#movyoutube').removeClass('border border-warning');
			});
			$('#movyoutube').blur(function(){
				let getURL=$('#movyoutube').val();
				var regExp = /^.*((youtu.be\/)|(v\/)|(\/u\/\w\/)|(embed\/)|(watch\?))\??v?=?([^#&?]*).*/;
			    var match = getURL.match(regExp);
			    $('#movyoutube').val((match&&match[7].length==11)? match[7] : "올바른 유튜브 링크가 아닙니다");
			    $('#movyoutube').addClass('border border-warning');
			    //return (match&&match[7].length==11)? match[7] : false;
			});
		}) 
		
	</script>
</body>
</html>