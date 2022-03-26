<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입 || Movie Theater</title>
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
</head>

<body>
    <!-- <div class="navbar fixed-top navbar-dark bg-dark shadow-sm">
        <div class="container">
            <a href="./index.html" class="navbar-brand d-flex justify-content-center align-self-center">
                <strong class="mainpagetitle">대충 영화 정보 페이지</strong>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarHeader"
                aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarHeader">
                <div class="navbar-nav">
                  <a class="nav-link" aria-current="page" href="./index">Home</a>
                  <a class="nav-link" href="./movieinfo">영화 소개</a>
                  <a class="nav-link active" href="./login" id="login" onclick="localStorage.removeItem('CURRENTUSER')">로그인 / 회원가입</a>
                </div>
              </div>
        </div>
    </div>
    <div class="navbar">
        <div class="container"></div> 
        <br> <br>
    </div>
     -->
    <div class="maincontent border rounded overflow-hidden mb-4 shadow-sm h-md-250 position-relative bg-white">
        <div class="col p-4 d-flex flex-column position-static">
            <h2 class="text-center">회원가입</h2>
            <div class="row">
                <div class="col-md-8 float-left">
                    <form action="/signUp" id="form" method="post">
                        <div class="input-group mb-2">
                            <span class="input-group-text title">이메일</span>
                            <input type="text" class="form-control" id="id" name="id"><br>
                        </div>
                        <div class="input-group mb-2">
                            <span class="input-group-text title">비밀번호</span>
                            <input type="password" class="form-control" id="password" name="password"><br>
                        </div>
                        <div class="input-group mb-2">
                            <span class="input-group-text title">비밀번호확인</span>
                            <input type="password" class="form-control" id="password2"><br>
                        </div>
                        <div class="input-group mb-2">
                            <span class="input-group-text title">이름</span>
                            <input type="text" class="form-control" id="name" name="name"><br>
                        </div>
                        <div class="d-grid">
                            <input type="submit" class="btn btn-multicampus btn-block text-white" value='가입하기' disabled>
                        </div>
                    </form>
                </div>
                <aside class="col-md-4 border rounded p-2">
                    <ul>
                        <li id="noticesign_at">이메일은 반드시 <b>'아이디@주소.com'</b> 형식으로 작성하셔야 합니다.</li>
                        <li id="noticesign_password">비밀번호는 8자리 이상으로 사용해주세요.</li>
                        <li id="noticesign_password2">비밀번호 확인을 위해 확인 칸에 비밀번호를 똑같이 입력해주세요.</li>
                    </ul>
                </aside>
            </div>
        </div>

    </div>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script>
        $(function () {
        	$("#email").change(function(){
        		joinCheck();
       		});
        	$("#password").change(function(){
        		joinCheck();
       		});
        	$("#password2").change(function(){
        		joinCheck();
       		});
        	$("#name").change(function(){
        		joinCheck();
       		});
        	function joinCheck(){
	        	var is_empty = false;
	        	$('#form').find('input').each(function(){
	        	    if(!$(this).val()) {
	        	        is_empty = true;
	        	    }
	        	});
	        	 
	        	$('.btn').attr("disabled", is_empty);
	        	/* if(is_empty) {
	        	    alert('값을 전부 입력하시오');
	        	} */
        	}
        	
        	/* 
       		
        	function joinCheck(){
        		let email = $("#email").val();
        		let password = $("#password").val();
        		let password2 = $("#password2").val();
        		let name = $("#name").val();
        		if(email != null && email != "" &&
        				password != null && password != "" &&
        				password2 != null && password2 != "" &&
        				name != null && name != ""){
        			$('.btn').attr("disabled", false);
        		} else $('.btn').attr("disabled", true);
        	} */
        	
            //let canJoin = {email:false, password:false};
            $('#email').focus(function(){
                $('#noticesign_at').removeClass("bg-danger text-warning");
                $('#email').removeClass("bg-danger");
            });
            $('#email').blur(function() {
                let email = $('#email').val();
                if(!email.includes('@')) {
                    $('#noticesign_at').addClass("bg-danger text-warning");
                    $('#email').addClass("bg-danger");
                    //canJoin.email=false;
                }
                else {
                    $('#noticesign_at').removeClass("bg-danger text-warning");
                    $('#email').removeClass("bg-danger");
                    //canJoin.email = true;
                }
                //btnJoinCheck();
            });

            $('#password').focus(function(){
                $('#noticesign_password').removeClass("bg-danger text-warning");
                $('#password').removeClass("bg-danger");
                $('#password2').removeClass("bg-danger");
            });
            $('#password').blur(function() {
                let password = $('#password').val();
                if(password.length<8) {
                    $('#noticesign_password').addClass("bg-danger text-warning");
                    $('#password').addClass("bg-danger");
                }
                else {
                    $('#noticesign_at').removeClass("bg-danger text-warning");
                    $('#password').removeClass("bg-danger");
                    if($('#password').val() != $('#password2').val()){
                        $('#noticesign_password2').addClass("bg-danger text-warning");
                        $('#password2').addClass("bg-danger");
                        //canJoin.password = false;
                    } else {
                        $('#noticesign_password2').removeClass("bg-danger text-warning");
                        $('#password2').removeClass("bg-danger");
                        //canJoin.password = true;
                    }
                }
                //btnJoinCheck();
            });
            $('#password2').focus(function(){
                $('#noticesign_password2').removeClass("bg-danger text-warning");
                $('#password2').removeClass("bg-danger");
            });
            $('#password2').blur(function() {
                if($('#password').val() != $('#password2').val()) {
                    $('#noticesign_password2').addClass("bg-danger text-warning");
                    $('#password2').addClass("bg-danger");
                    //canJoin.password=false;
                }
                else {
                    $('#noticesign_at').removeClass("bg-danger text-warning");
                    $('#password').removeClass("bg-danger");
                    $('#password2').removeClass("bg-danger");
                    //canJoin.password = true;
                }
                //btnJoinCheck();
            });
			/*
            function btnJoinCheck() {
                if(canJoin.email && canJoin.password)  $('.btn').attr("disabled", false);
                else $('.btn').attr("disabled", true);
            } */
            /* 
            $('form').submit(function () {
                let temp = localStorage.getItem('USERLIST');
                let userlist;
                if(temp == null || temp == undefined || temp == "") userlist = [];
                else userlist = JSON.parse(temp);
                for(let acc of userlist){
                    if(acc.id == $('#email').val()){
                    	alert('해당 이메일은 이미 사용중인 이메일입니다.');
                        return false;
                    }
                }
            }); */
        })
    </script>

</body>

</html>