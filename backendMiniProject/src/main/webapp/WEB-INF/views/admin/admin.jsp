<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>ADMIN || Movie Theater</title>
    <style>
        /* .adminmenu{
        	margin: 0 auto;
        	float: none;
        }
         */
		a:link { color: rgb(219, 160, 83); text-decoration: none;}
		a:visited { color: #8c683a; text-decoration: none;}
		a:hover { color: rgb(219, 160, 83); text-decoration: underline;}
    </style>
</head>
<body>
    <div class="maincontent border rounded overflow-hidden mb-4 shadow-sm h-md-250 position-relative bg-white">
        <div class="col p-4 d-flex flex-column position-static">
            <h2>관리자 페이지</h2>
			<div class="row p-2">
				<div class="col adminmenu text-center border bd-gray rounded-lg p-4">
					<a href="./insertmovie">
						<img src="/icon/plus.png" alt="새로운 영화" width="150"><br>
						새로운 영화
					</a>
				</div>
				<div class="col adminmenu text-center border bd-gray rounded-lg p-4">
					<a href="./editmovie">
						<img src="/icon/edit.png" alt="영화 수정/삭제" width="150"><br>
						영화 수정/삭제
					</a>
				</div>
				<div class="col adminmenu text-center border bd-gray rounded-lg p-4">
					<a href="./managemovie">
						<img src="/icon/settings.png" alt="대표영화 관리" width="150"><br>
						대표영화 관리
					</a>
				</div>
			</div>
        </div>
    </div>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script>
        
    </script>
</body>
</html>