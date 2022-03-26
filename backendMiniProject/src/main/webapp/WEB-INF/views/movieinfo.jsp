<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Theater</title>
</head>

<body>
    <div class="maincontent border rounded overflow-hidden mb-4 shadow-sm h-md-250 position-relative bg-white">
        <div class="col p-4 d-flex flex-column position-static">
            <h2>영화 정보</h2>
            <div class="accordion accordion-flush border rounded" id="accordionMovie">
                
            </div>
        </div>
    </div>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script>
        var getParameters = function (paramName) {
            var returnValue;
            var url = location.href;

            var parameters = (url.slice(url.indexOf('?') + 1, url.length)).split('&');
            for (var i = 0; i < parameters.length; i++) {
                var varName = parameters[i].split('=')[0];
                if (varName.toUpperCase() == paramName.toUpperCase()) {
                    returnValue = parameters[i].split('=')[1];
                    return decodeURIComponent(returnValue);
                }
            }
        };
    </script>
    <script>
    $(function() {
		function queryAllMovie(){
			$.ajax({
				type:"get",
				async:false,
				url:'${contextPath}/queryallmov',
				success: function(data, textStatus){ // data는 데이터, textStatus는 성공했는지르 가져옴(안써도됨)
					console.log(data);
					var movlist ="";
					for(let mov of data){
						var movinfo = '<div class="accordion-item">'
										+ '<h2 class="accordion-header" id="flush-heading' + mov.mov_article_num + '">'
											+ '<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"'
												+ 'data-bs-target="#flush-collapse' + mov.mov_article_num + '" aria-expanded="false"'
												+ 'aria-controls="flush-collapse' + mov.mov_article_num + '">' + mov.mov_subject + '</button>'
										+ '</h2>'
										+ '<div id="flush-collapse' + mov.mov_article_num + '" class="accordion-collapse collapse"'
											+ 'aria-labelledby="flush-heading' + mov.mov_article_num + ' data-bs-parent="#accordionMovie">'
											+ '<div class="accordion-body">'
												+ '<img class="card-img-top overflow-hidden" src="./resources/img/' + mov.mov_filename + '" alt="' + (mov.mov_filename==null? '#':mov.mov_filename) + '">'
												+ '<p class="card-text">개봉일:' + mov.mov_date + '</p>'
												+ '<p>' + mov.mov_content +'</p>'
												+ '<iframe width="560" height="315" src="https://www.youtube.com/embed/' + mov.mov_youtube
												+ '" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>'
											+ '</div>'
										+ '</div>'
									+ '</div>';

						movlist += movinfo ;
					}
					/* console.log(acclist); */
					$('#accordionMovie').empty();						
					$("#accordionMovie").append(movlist);
				}
			});
		}
		queryAllMovie();
		//$('#query').click( queryAccs());
		
	});
    </script>

</body>

</html>


<!-- 18번 라인부터 -->
<!-- <div class="accordion-item">
                    <h2 class="accordion-header" id="flush-heading1">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                            data-bs-target="#flush-collapse1" aria-expanded="false" aria-controls="flush-collapse1">
                            스파이더맨 : 노 웨이 홈
                        </button>
                    </h2>
                    <div id="flush-collapse1" class="accordion-collapse collapse" aria-labelledby="flush-heading1"
                        data-bs-parent="#accordionMovie">
                        <div class="accordion-body">
                            <img class="card-img-top overflow-hidden" src="./resources/img/spiderman_nowayhome.jpg"
                                alt="스파이더맨 : 노 웨이 홈">
                            <p class="card-text">2021년 12월 15일 개봉</p>
                            <p>
                                ‘미스테리오’의 계략으로 세상에 정체가 탄로난 스파이더맨 ‘피터 파커’는 하루 아침에 평범한 일상을 잃게 된다. 문제를 해결하기 위해 ‘닥터 스트레인지’를
                                찾아가 도움을 청하지만 뜻하지 않게 멀티버스가 열리면서 각기 다른 차원의 불청객들이 나타난다. ‘닥터 옥토퍼스’를 비롯해 스파이더맨에게 깊은 원한을 가진
                                숙적들의 강력한 공격에 ‘피터 파커’는 사상 최악의 위기를 맞게 되는데…
                            </p>
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <h2 class="accordion-header" id="flush-heading2">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                            data-bs-target="#flush-collapse2" aria-expanded="false" aria-controls="flush-collapse2">
                            킹스맨 : 퍼스트 에이전트
                        </button>
                    </h2>
                    <div id="flush-collapse2" class="accordion-collapse collapse" aria-labelledby="flush-heading2"
                        data-bs-parent="#accordionMovie">
                        <div class="accordion-body">
                            <img class="card-img-top overflow-hidden" src="./resources/img/kingsman_firstagent.jpg"
                                alt="킹스맨 : 퍼스트 에이전트">
                            <p class="card-text">2021년 12월 22일 개봉</p>
                            <p>
                                역사상 최악의 폭군들과 범죄자들이 모여 수백만 명의 생명을 위협할 전쟁을 모의하는 광기의 시대. 이들을 막으려는 한 사람과 그가 비밀리에 운영 중인 독립
                                정보기관, ‘킹스맨’의 최초 미션이 시작된다! 베일에 감춰졌던 킹스맨의 탄생을 목격하라!
                            </p>
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <h2 class="accordion-header" id="flush-heading3">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                            data-bs-target="#flush-collapse3" aria-expanded="false"
                            aria-controls="flush-collapse3">
                            닥터 스트레인지 : 대혼돈의 멀티버스
                        </button>
                    </h2>
                    <div id="flush-collapse3" class="accordion-collapse collapse"
                        aria-labelledby="flush-heading3" data-bs-parent="#accordionMovie">
                        <div class="accordion-body">
                            <img class="card-img-top overflow-hidden" src="./resources/img/drstrange_inthemultiverseofmadness.jpg"
                                alt="닥터 스트레인지 : 대혼돈의 멀티버스">
                            <p class="card-text">2022년 5월 6일 개봉</p>
                            <p>
                                현 시점에서 아직 나오지 않은 영화이다.
                            </p>
                        </div>
                    </div>
                </div>
 -->