<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>로그인 || Movie Theater</title>
<style>
.logincontent {
	width: 400px;
	margin: 50px auto;
}

.signanchor {
	text-decoration-line: none;
	color: rgb(219, 160, 83);
}
</style>
</head>

<body>
	<div class="logincontent border rounded overflow-hidden shadow-sm h-md-250 position-relative bg-white">
		<div class="col p-4 d-flex flex-column position-static">
			<h2 class="text-center">로그인</h2>
			<div class="row">
				<form action="login" method="POST">
					<div class="input-group mb-2">
						<span class="input-group-text title">이메일</span> 
						<input type="text" class="form-control" id="id" name="id"><br>
					</div>
					<div class="input-group mb-2">
						<span class="input-group-text title">비밀번호</span>
						<input type="password" class="form-control" id="pw" name="pw"><br>
					</div>
					<div class="d-grid mb-2">
						<input type="submit"
							class="btn btn-multicampus btn-block text-white" value='로그인'>
					</div>
				</form>
			</div>
			<p class="text-center">
				<a class="signanchor" href="signUp">회원가입</a>
			</p>
		</div>

	</div>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script>
        $(document).ready(function () {
            $('form').submit(function () {
                var id = $('#email').val();
                var pw = $('#pw').val();
                if (id == "" || id == null || id == undefined) {
                    alert("아이디를 입력해주세요");
                    return false;
                } else if (pw == "" || pw == null || pw == undefined) {
                    alert("비밀번호를 입력해주세요");
                    return false;
                }
                
            });
    </script>
</body>

</html>