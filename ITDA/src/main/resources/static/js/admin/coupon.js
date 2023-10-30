
	function go(page){						//해당 페이지로 이동시키는 함수
		const limit = $('#viewcount').val();
		
		//const data = `limit=${limit}&state=ajax&page=${page}`; 와 같은 의미
		const data = {limit : limit, state : "ajax", page : page}
		
		ajax(data);							//ajax를 호출, 명칭은 마음대로 설정 가능
		
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
	

		
	
	function ajax(sdata) {
		console.log(sdata)
		let token = $("meta[name='_csrf']").attr("content");	
		let header = $("meta[name='_csrf_header']").attr("content");
		$.ajax({
			type : "post",
			data : sdata,
			url	 : "couponList_ajax",
			dataType : "json",
			cache : false,
			beforeSend : function(xhr) {
				xhr.setRequestHeader(header, token);
			},
			success : function(data) {
				$("#viewcount").val(data.limit);
				$("thead").find("span").text("현재 쿠폰 갯수 : " + data.listcount);
				
				if (data.listcount > 0) {
					$("tbody").remove();
					let num = data.listcount - (data.page - 1) * data.limit;
					console.log(num)
					let output = "<tbody>";
					$(data.couponList).each(
						function(index, item) {
							if (item.couponExdate == null) {
								item.couponExdate = '만료일 미정';
							}
							
							let deleteButton = '';
						    if (item.adminId === data.adminId) {
						        deleteButton = '<button type="button" class="couponDeletebtn btn btn-danger float-right btn-sm btn-round">삭제</button>';
						    } else {
						        deleteButton = '<div>작성자가 아님</div>';
						    }
						
						    output += '<tr><td class="text-center"><div>' + item.couponNum + '</div></td>'
						        + '<td class="text-center"><div>' + item.couponCode + '</div></td>'
						        + '<td class="text-center"><div>' + item.couponName + '</div></td>'
						        + '<td class="text-center"><div>' + item.couponDetail + '</div></td>'
						        + '<td class="text-center"><div>' + item.couponPrice + '</div></td>'
						        + '<td class="text-center"><div>' + item.couponCreate.substr(0, 10) + '</div></td>'
						        + '<td class="text-center"><div>' + item.couponExdate.substr(0, 10) + '</div></td>'
						        + '<td class="text-center">' + deleteButton + '</td>';
									
					})//each end
					output += "</tbody>"
					$('table').append(output);			//table 완성
					
					$(".pagination").empty();			//페이징 처리 영역 내용 제거
					output = "";
					
					let digit = '<i class="fa fa-chevron-left" aria-hidden="true"></i>'
					let href = "";
					
					if (data.page > 1) {											//이전 버튼의 링크 설정
						href = 'href=javascript:go(' + (data.page - 1) + ')';		//go function 실행
					}			//현재 페이지가 3인 상태에서 이전 버튼을 누르면 href=javascript:go(2)가 되는 것
					output += setPaging(href, digit);
					
					for (let i = data.startpage; i <= data.endpage; i++) {
						digit = i;
						href = "";
						
						if (i != data.page) {										//현재 페이지가 아닌 페이지 번호들
							href = 'href=javascript:go(' + i + ')';					//go function 실행
						}
						output += setPaging(href, digit);
						
					}//for end
					
					digit = '<i class="fa fa-chevron-right" aria-hidden="true"></i>';
					href = "";
					
					if (data.page < data.maxpage) {									//다음 버튼의 링크 설정
						href = 'href=javascript:go(' + (data.page + 1) + ')';		//go function 실행
					}
					output += setPaging(href, digit);
					
					$('.pagination').append(output);
						 
				}
				
			},//success end
			
			error : function(){
				console.log('에러')
			}
			
		})//ajax end
		
	}//ready end
	
	
	$(function(){
		$("#couponCreatebtn").click(function(){
			location.href="coupon_Write";			//버튼 클릭시 write로 이동
		
		})// click end
		
		$("#viewcount").change(function(){
			go(1); 					// 보여줄 페이지를 1페이지로 설정한다
		
		})//change end
		
	});//ready end
	
	
	$(function(){
	    $(document).on('click', '.couponDeletebtn', function(){
	        $("#couponDeleteModal").modal("show");
	    });
	});
	
	$(function(){
		let result = "${result}";
		if (result == 'passFail') {
			alert("쿠폰이 DB에 없습니다. 다시 확인해주세요.");
		}
	
	})

	$(function() {
		$("#couponCode").on("input", function() {
	        let input_couponCode = $(this).val();
	        let pattern = /^[0-9]{20}$/;
	
	        if (!pattern.test(input_couponCode)) {
	            $(".message").css('color', 'red').html("쿠폰코드는 총 20자리 입니다. 다시 확인해 주세요.");
	        } else {
	            $(".message").css('color', 'green').html("20자리 확인되었습니다.");
	        }
	    })
	
		$("form[name=couponDeleteForm]").submit(function() {
			if ($("#couponNum").val() == '') {
				alert("쿠폰번호를 입력하세요");
				$("#couponNum").focus();
				return false;
			}
			if ($("#couponCode").val() == '') {
				alert("쿠폰코드를 입력하세요");
				$("#couponCode").focus();
				return false;
			}
		})
	})