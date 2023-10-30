
	function go(page, goURL){						//해당 페이지로 이동시키는 함수
		const limit = $('#viewcount').val();
		
		//const data = `limit=${limit}&state=ajax&page=${page}`; 와 같은 의미
		const data = {limit : limit, state : "ajax", page : page}
		
		ajax(data, goURL);							//ajax를 호출, 명칭은 마음대로 설정 가능
		
	}
	
	
	
	function setPaging(href, digit) {		//페이징 링크를 생성시키는 함수
		let active = "";
		let gray = "";
		
		if (href == "") {					//href가 빈 문자열일 경우
			if (isNaN(digit)){				//digit이 숫자가 아닌 경우
				gray = "gray";				//href가 빈 문자열일 경우 + digit이 숫자가 아닌 경우 = 버튼색을 회색으로 바꾼다
			
			}else {
				active = "active";			//href가 빈 문자열일 경우 + digit이 숫자인경우 = 버튼에 active를 준다
				
			}
		}//if end
		
		let output = `<li class="page-item ${active}">`;
		
		//let anchor = "<a class='page-link " + gray + "'" + href + ">" + digit + "</a></li>"; 와 같은 의미
		let anchor = `<a class="page-link ${gray}" ${href}>${digit}</a></li>`;
		
		output += anchor;
		return output;
	}
	

		
	
	function ajax(sdata, goURL) {
		console.log(sdata);
		console.log(goURL);
		let token = $("meta[name='_csrf']").attr("content");	
		let header = $("meta[name='_csrf_header']").attr("content");
		$.ajax({
			type : "post",
			data : sdata,
			url	 : goURL,
			dataType : "json",
			cache : false,
			beforeSend : function(xhr) {
				xhr.setRequestHeader(header, token);
			},
			success : function(data) {
				$("#viewcount").val(data.limit);
				$("thead").find("span").text("글 개수 : " + data.listcount);
				
				if (data.listcount > 0) {
					$("tbody").remove();
					let num = data.listcount - (data.page - 1) * data.limit;
					console.log(num)
					let output = "<tbody>";
					$(data.List).each(
						function(index, item) {
							output += '<tr class="text-center"><td>' + (num--) + '</td>'

							let adTitle = item.adTitle;
							if (adTitle.length >= 20) {
								adTitle = adTitle.substr(0, 20) + "...";		//0부터 20개 부분 문자열 추출
							
							}
							
							let qacategory = "";
							switch (item.qcateId) {
								case 1:
									qacategory = "구매, 환불";
									break;
								case 2:
									qacategory = "회원";
									break;
								case 3:
									qacategory = "상품";
									break;
								case 4:
									qacategory = "채널";
									break;
								case 5:
									qacategory = "서비스 소개, 이용 방법";
									break;
								case 6:
									qacategory = "오류, 피해 접수";
									break;
								case 7:
									qacategory = "기타";
									break;
								default:
									qacategory = "출력 오류";
							}
							
							if (item.userId === 'system') {
								output += "<td class='text-center'><div>"
										+ '<a href="FAQ/' + item.adNum + '">'
										+ adTitle.replace(/</g,'&lt;').replace(/>/g,'&gt;')
										+ '</a></div><span class="qnaReplyCount">' + item.count +'</span></td>'
										+ '<td class="text-left"><div>' + qacategory + '</div></td>'
										+ '<td class="text-center"><div>' + item.adWriter + '</div></td>'
										+ '<td class="text-left"><div>' + item.adDate.substr(0,10) + '</div></td></tr>'
							}
							
							if (item.userId !== 'system') {
								output += "<td class='text-center'><div>"
								   		+ ' <a href="QNA/' + item.adNum + '">'
								   	 	+ adTitle.replace(/</g,'&lt;').replace(/>/g,'&gt;')
										+ '</a></div></td>'
										+ '<td class="text-left"><div>' + qacategory + '</div></td>'
										+ '<td class="text-center"><div>' + item.userId + '</div></td>'
										+ '<td class="text-left"><div>' + item.adDate.substr(0,10) + '</div></td></tr>'
							}
							
					})//each end
					output += "</tbody>"
					$('table').append(output);			//table 완성
					
					$(".pagination").empty();			//페이징 처리 영역 내용 제거
					output = "";
					
					let digit = '<i class="fa fa-chevron-left" aria-hidden="true"></i>'
					let href = "";
					
					if (data.page > 1) {				//이전 버튼의 링크 설정
						href = 'href="javascript:void(0);" onclick="go(' + (data.page - 1) + ', \'' + goURL + '\')"';		//go function 실행
					}
					output += setPaging(href, digit);
					
					for (let i = data.startpage; i <= data.endpage; i++) {
						digit = i;
						href = "";
						
						if (i != data.page) {			//현재 페이지가 아닌 페이지 번호들
							href = 'href="javascript:void(0);" onclick="go(' + i + ', \'' + goURL + '\')"';		//go function 실행
						}
						output += setPaging(href, digit);
						
					}//for end
					
					digit = '<i class="fa fa-chevron-right" aria-hidden="true"></i>';
					href = "";
					
					if (data.page < data.maxpage) {		//다음 버튼의 링크 설정
						href = 'href="javascript:void(0);" onclick="go(' + (data.page + 1) + ', \'' + goURL + '\')"';		//go function 실행
					}
					output += setPaging(href, digit);
					
					$('.pagination').append(output);
						 
				}else if (data.listcount = 1) {
					$(".pagination").empty();
					$('table').empty();
					let output = '등록된 질문이 없습니다.';
					$('table').append(output);
				}
				
			},//success end
			
			error : function(){
				console.log('에러')
			}
			
		})//ajax end
		
	}//ready end
	
	
	
	$(function(){
		$("#FAQ").addClass("button-active");
		$("#tabUser").hide();
	
		$("#FAQ").on("click", function() {		// FAQ 버튼 클릭 시
			goURL = "FAQList_ajax";
			
			$("#FAQ").addClass("button-active").removeClass("button-inactive");
			$("#QNA").addClass("button-inactive").removeClass("button-active");
			$("#tabHead").text("FAQ");
			$("#tabUser").hide();
			$("#tabWriter").show();
			$("#faqwbtn").show();
			go(1, goURL);
		});

		$("#QNA").on("click", function() {		// Q&A 버튼 클릭 시
			goURL = "QNAList_ajax";
			
			$("#FAQ").addClass("button-inactive").removeClass("button-active");
			$("#QNA").addClass("button-active").removeClass("button-inactive");
			$("#tabHead").text("QNA");
			$("#tabUser").show();
			$("#tabWriter").hide();
			$("#faqwbtn").hide();
			go(1, goURL);
		});
		
		$("#faqwbtn").click(function(){
			location.href="faq_Write";			//버튼 클릭시 write로 이동
		
		})// click end
		
		$("#viewcount").change(function(){
			if ($("#FAQ").hasClass("button-active")) {
		        go(1, "FAQList_ajax");
		    } else if ($("#QNA").hasClass("button-active")) {
		        go(1, "QNAList_ajax");
		    }
		})//change end
		
	});//ready end
	
	$(document).ready(function() {
		let selectedValue = $('input[name=search_field]').val();
		
		if (selectedValue == undefined) {
			selectedValue = 0;
		}else if (selectedValue != '-1') {
			$("#viewcount2").val(selectedValue);
		}
   		
		const $input = $("input[name=search_word]");			//$input을 모든 이벤트에서 사용
		const message = ["제목", "카테고리", "질문자", "작성자", "날짜"]
	   	
		$input.attr("placeholder", message[selectedValue] + "을(를) 입력하세요");
	   	
		
		$('#viewcount2').change(function() {						//검색창에 placeholder를 나타나게 하는 이벤트
			selectedValue = $(this).val();
			$input.val('').attr("placeholder", message[selectedValue] + "을(를) 입력하세요");
	   	
		})//change end
	   	
	   	
		$("#search_but").on("click", function() {	//검색버튼 클릭시 이벤트
			if ($input.val() == "") {				//검색창에 아무것도 없는 경우
				alert("검색어를 입력하세요.");
				$input.focus();
				return false;
			}
		})//click end
		
	});