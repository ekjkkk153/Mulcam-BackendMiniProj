function queryAllMovie() {
	var result = "";
	$.ajax({
		type: "get",
		async: false,
		url: '/queryallmov',
		success: function(data, textStatus) { // data는 데이터, textStatus는 성공했는지르 가져옴(안써도됨)
			console.log(data);
			var movlist = "";
			/*for(let mov of data){
				var movinfo = '<div class="accordion-item">'
								+ '<h2 class="accordion-header" id="flush-heading' + mov.mov_ARTICLE_NUM + '">'
									+ '<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"'
										+ 'data-bs-target="#flush-collapse' + mov.mov_ARTICLE_NUM + '" aria-expanded="false"'
										+ 'aria-controls="flush-collapse' + mov.mov_ARTICLE_NUM + '">' + mov.mov_SUBJECT + '</button>'
								+ '</h2>'
								+ '<div id="flush-collapse' + mov.mov_ARTICLE_NUM + '" class="accordion-collapse collapse"'
									+ 'aria-labelledby="flush-heading' + mov.mov_ARTICLE_NUM + ' data-bs-parent="#accordionMovie">'
									+ '<div class="accordion-body">'
										+ '<img class="card-img-top overflow-hidden" src="./resources/img/' + mov.mov_FILENAME + '" alt="' + (mov.mov_FILENAME==null? '#':mov.mov_FILENAME) + '">'
										+ '<p class="card-text">개봉일 : ' + mov.mov_DATE + '</p>'
										+ '<p>' + mov.mov_CONTENT + '</p>'
										+ '<iframe width="560" height="315" src="https://www.youtube.com/embed/' + mov.mov_YOUTUBE
										+ '" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>'
									+ '</div>'
								+ '</div>'
							+ '</div>';
	
				movlist += movinfo ;
			}
			$('#accordionMovie').empty();						
			$("#accordionMovie").append(movlist);*/
			result = data;
		}
	});
	return result;
}