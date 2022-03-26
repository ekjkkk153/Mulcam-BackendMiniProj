<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Theater</title>
    <style>
        
        .card {
            width:250px;
            height: 500px;
        }
        .card-body {
            height: 150px;
        }
        .card-img-top {
            width: 250px;
            min-height: 350px;
            max-height: 350px;
        }
        .carousel-img-top {
            /* min-height: 400px;
            max-height: 400px; */
            max-width: 1280px;
            height: 400px;
        }
        .card-img-thumbnail {
            width:100%;
            height:100%;
            object-fit:cover;
            transform:scale(1.0);
            transition: all 0.3s ease-in-out;
        }
        .card-img-thumbnail:hover{
            transform:scale(1.1);
        }
        .card-body>.btn{
            position: absolute;
            bottom: 10px;
            right: 10px;
        }
    </style>
    
    <link rel="stylesheet" href="./resources/css/styles.css" />
    
    </head>

<body>
    <div id="carouselMain" class="carousel slide" data-bs-touch="false" data-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselMain" data-bs-slide-to="0" class="active"
                aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselMain" data-bs-slide-to="1"
                aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselMain" data-bs-slide-to="2"
                aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <!-- <img src="img/spiderman_nowayhome_wide.jpg" class="img-fluid mx-auto d-block position-relative overflow-hidden" style="vertical-align:middle; min-height: 400px; object-fit:cover "> -->
                <div class="carousel-img-top img-fluid mx-auto d-block position-relative overflow-hidden" style="vertical-align:middle; object-fit:cover ">
                    <img class="card-img-thumbnail" src="./resources/img/spiderman_nowayhome_wide.jpg" alt="스파이더맨 : 노 웨이 홈">
                </div>
                <div class="carousel-caption d-none d-md-block">
                    <h5>스파이더맨: 노 웨이 홈</h5>
                    <p>2021년 12월 15일 개봉.</p>
                </div>
            </div>
            <div class="carousel-item">
                <!-- <img src="img/kingsman_firstagent_wide.jpg" class="img-fluid mx-auto d-block position-relative overflow-hidden" style="vertical-align:middle; min-height: 400px; object-fit:cover"> -->
                <div class="carousel-img-top img-fluid mx-auto d-block position-relative overflow-hidden" style="vertical-align:middle; object-fit:cover ">
                    <img class="card-img-thumbnail" src="./resources/img/kingsman_firstagent_wide.jpg" alt="킹스맨: 퍼스트 에이전트">
                </div>
                <div class="carousel-caption d-none d-md-block">
                    <h5>킹스맨: 퍼스트 에이전트</h5>
                    <p>2021년 12월 22일 개봉.</p>
                </div>
                <!-- <img src="http://placehold.it/1000x100" class="d-block w-100" alt="..."> -->
            </div>
            <div class="carousel-item">
                <!-- <img src="img/drstrange_inthemultiverseofmadness_wide.jpg" class="img-fluid mx-auto d-block position-relative overflow-hidden" style="vertical-align:middle; min-height: 400px; object-fit:cover"> -->
                <div class="carousel-img-top img-fluid mx-auto d-block position-relative overflow-hidden" style="vertical-align:middle; object-fit:cover ">
                    <img class="card-img-thumbnail" src="./resources/img/drstrange_inthemultiverseofmadness_wide.jpg" alt="닥터 스트레인지 : 대혼돈의 멀티버스">
                </div>
                <div class="carousel-caption d-none d-md-block">
                    <h5>닥터 스트레인지 : 대혼돈의 멀티버스</h5>
                    <p>2022년 5월 6일 개봉.</p>
                </div>
                <!-- <img src="http://placehold.it/1000x100" class="d-block w-100" alt="..."> -->
            </div>
        </div>
        <button class="carousel-control-prev" role="button" href="#carouselMain" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" role="button" href="#carouselMain" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
    <div class="maincontent border rounded overflow-hidden mb-4 shadow-sm h-md-250 position-relative bg-white">
        <div class="col p-4 d-flex flex-column position-static">
            <h2>이번주 상영작</h2>
            <div class="flex-row">
                <form action="menu" method="get" id="indexnavigator">
                    <div class="card">
                        <div class="card-img-top overflow-hidden">
                            <img class="card-img-thumbnail" src="./resources/img/spiderman_nowayhome.jpg" alt="스파이더맨 : 노 웨이 홈">
                        </div>
                        <div class="card-body">
                            <h5 class="card-title">스파이더맨 : 노 웨이 홈</h5>
                            <p class="card-text">2021년 12월 15일 개봉</p>
                            <input type="button" class="btn" value="알아보기" onclick="setMovIndex(1);">
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-img-top overflow-hidden">
                            <img class="card-img-thumbnail" src="./resources/img/kingsman_firstagent.jpg" alt="킹스맨 : 퍼스트 에이전트">
                        </div>
                        
                        <div class="card-body">
                            <h5 class="card-title">킹스맨 : 퍼스트 에이전트</h5>
                            <p class="card-text">2021년 12월 22일 개봉</p>
                            <input type="button" class="btn" value="알아보기" onclick="setMovIndex(2);">
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-img-top overflow-hidden">
                            <img class="card-img-thumbnail" src="./resources/img/drstrange_inthemultiverseofmadness.jpg" alt="닥터 스트레인지 : 대혼돈의 멀티버스">
                        </div>
                        
                        <div class="card-body">
                            <h5 class="card-title">닥터 스트레인지 : 대혼돈의 멀티버스</h5>
                            <p class="card-text">2022년 5월 6일 개봉</p>
                            <input type="button" class="btn" value="알아보기" onclick="setMovIndex(3);">
                        </div>
                    </div>
                    <input type="hidden" value="0" name="movieindex">
                    <input type="hidden" value="movieinfo" name="cpage">
                </form>
            </div>
        </div>

    </div>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script>
        function setMovIndex(num){
            $("input[name=movieindex]").val(num);
            $("#indexnavigator").submit();
                
        };
    </script>
</body>

</html>