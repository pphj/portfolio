<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="_csrf_header" content="${_csrf.headerName}">
<meta name="_csrf" content="${_csrf.token}">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- header 연결 -->
<link href="${pageContext.request.contextPath}/resources/css/channel/ChanelMain.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/channel/ChanelMain_info.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/channel/ChanelMain_category.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/channel/ChanelMain_Seller.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/channel/ChanelMain_Sellercategory.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/channel/ChanelMain_Sellerinfo.css" rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/channel/B.Home.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/channel/ChannelMain.js"></script>
<jsp:include page="../include/header.jsp" />
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="https://cdn.jsdelivr.net/npm/Chart.extension.js"></script>
<script>
<!--프로필 설정으로 이동 -->
<<<<<<< HEAD
	$(document).ready(function() {
		$(".btnBlockProfile").click(function() {
			window.location.href = '${pageContext.request.contextPath}/channels/${ChannelList.chNum}/sellersetting';});
	});
=======
$(document).ready(function(){
	$(".btnBlockProfile").click(function(){
		window.location.href = '${pageContext.request.contextPath}/channels/${ChannelList.chNum}/sellersetting';
	});
	  
	window.onload = function() {
		let subData = ${subData};
		
		let maleCount = 0;
		let femaleCount = 0;
		
		for (const data of subData) {
		    if (data.userGender === '남') {
		    	maleCount++;
		    }
		    if (data.userGender === '여') {
		    	femaleCount++;
		    }
		}
	
		new Chart(document.getElementById("doughnut-chart"), {
		    type: 'doughnut',
		    data: {
		    	labels: ["남", "여"],
		    	datasets: [{
		    		backgroundColor: ['rgb(102, 135, 187)', 'rgb(232, 147, 147)'],
		        	data: [maleCount, femaleCount]
		        }
		      ]
		    },
		    options: {
		    	maintainAspectRatio: false,
		    	responsive: true,
		    	plugins: {
		            legend: {
		                position: 'right' // 범례의 위치를 오른쪽으로 설정
		            },
		            title: {
				        display: true,
				        text: '채널 구독자 성별',
				        align: 'center',
				        padding: 20
			    	}
		        }
		    }
		});
	}
});
>>>>>>> branch 'main_sub' of https://github.com/pphj/ITDA_PROJECT.git
</script>
<style>
.layer_action_ctrl {
	display: none;
	height: 50px;
	right: 12px;
	top: 42px;
	width: 200px;
	margin-left: 450px;
}
</style>
</head>
<body>
	<input type="hidden" id="chnum" value="${ChannelList.chNum}" name="chnum">
	<!--  채널바  -->
	<div class="wrap_profile">
		<div class="bloger_thumb">
			<c:choose>
				<c:when test="${empty ChannelList.chProfile}">
					<img class="profileUserImage img_thumb" alt="이미지정보" src="${pageContext.request.contextPath}/resources/image/main/login.png"
						width="100" height="100">
				</c:when>
				<c:otherwise>
					<img class="profileUserImage img_thumb"
						src="${pageContext.request.contextPath}/resources/image/MemberUpload/${sellerinfo.userId}${ChannelList.chProfile}"
						width="100" height="100">
				</c:otherwise>
			</c:choose>
		</div>
		<div class="wrap_profile_desc">
			<strong class="profileUserName tit_bloger">${ChannelList.chName}</strong>
			<dl class="blog_count ">
				<dd>
					<b class="link_count #follower"> <em class="txt_g">구독자</em> <span class="num_count" style="text-decoration: none;">${subinfo.subscriberCount}</span>
					</b>
				</dd>
			</dl>
		</div>

		<div class="wrap_profile_btn">
			<input type="hidden" name="myWriter" value="false"> <input type="hidden" name="btnwrite" value="${ChannelList.chNum}">
			<span class="#my_follow follow_button_wrapper">
				<sec:authorize access="isAuthenticated()">
					<sec:authentication property="principal" var="pinfo" />
					<c:if test="${sellerinfo.userId == pinfo.username}">
						<a href="${pageContext.request.contextPath}/channels/contentwrite.co/${ChannelList.chNum}">
							<button type="button" class="btn_type btn_write btn_new_type btn_default btn_profile btnFollow #p_follow btnWrite">
								<span class="txt_default">
									<img class="ico_plus" src="${pageContext.request.contextPath}/resources/image/channel/ico-plus.png">글작성
								</span>
							</button>
						</a>
					</c:if>
				</sec:authorize>
				<!--  
				<button type="button" class="btn_type btn_new_type btn_default btn_profile btnFollow #p_follow">
					<span class="txt_default">
						<img class="ico_plus" src="../image/channel/ico-plus.png" alt="알림 버튼 아이콘">알림
					</span>
				</button>
				-->
				<button type="button" class="btn_type btn_subscribe btn_new_type btn_default btn_profile btnFollow #p_follow">
					<span class="txt_default_subscribe">
						<img class="ico_plus" src="../image/channel/ico-plus.png" alt="구독 버튼 아이콘">구독
					</span>
				</button>
			</span>
		</div>
		<!-- <div class="wrap_profile_btn"> -->

		<div class="more_control">
			<!-- 메뉴더보기 클릭시 ctrl_on 클래스 추가 -->
			<sec:authorize access="isAuthenticated()">
				<sec:authentication property="principal" var="pinfo" />
				<c:if test="${sellerinfo.userId == pinfo.username}">
					<button type="button" class="setting_button" style="background-color: white; border: none;" id="settingButton">
						<span class="txt_default2">
							<img class="setting_img" src="${pageContext.request.contextPath}/resources/image/channel/setting.png"
								style="width: 30px; height: 30px; margin-left: 660px; opacity: 0.6;" alt="메뉴 더보기">
						</span>
					</button>
					<div class="layer_action_ctrl" style="display: none;">
						<div class="inner_action_ctrl">
							<button type="button" class="btnBlockProfile btn_ctrl requireLogin">채널프로필 / 카테고리 수정</button>
							<!-- <button type="button" class="btnReportProfile btn_ctrl requireLogin">카테고리수정</button> -->
						</div>
					</div>
				</c:if>
			</sec:authorize>
		</div>
		<!-- <div class="moe_control"> -->

	</div>
	<!-- <div class="wrap_profile"> 채널바 -->

	<!-- 탭 메뉴 -->
	<div class="tab_contents">
		<!-- <ul id="contentsTab" class="list_tab">
			<li><a href="#info" class="infoTab link_tab #info_open"> <span
					class="txt_tab">채널소개</span>
			</a></li>

			<li class="on"><a href="#articles" class="articleTab link_tab">
					<span class="txt_tab">게시글</span>
			</a></li>

			<li><a href="#works" class="magazineTab link_tab"> <span
					class="txt_tab">카테고리</span>
			</a></li>
		</ul> -->

		<ul id="contentsTab" class="list_tab">
			<li>
				<a href="javascript:void(0);" class="infoTab link_tab #info_open" id="info_tab" onclick="onTabClick('info')"> <span
						class="txt_tab">채널소개</span>
				</a>
			</li>
			<li>
				<a href="javascript:void(0);" class="articleTab link_tab" id="articles_tab" onclick="onTabClick('articles')"> <span
						class="txt_tab">게시글</span>
				</a>
			</li>
			<li>
				<a href="javascript:void(0);" class="magazineTab link_tab" id="works_tab" onclick="onTabClick('works')"> <span
						class="txt_tab">카테고리</span>
				</a>
			</li>
		</ul>
	</div>
	<!-- <div class="tab_contents"> 탭 메뉴-->

	<main>
		<div class="wrap_contents">
			<c:if test="${empty ChannelBoardList}">
				<div class="emptycontent" style="height: 450px; width: 1903px; text-align: center; position: relative; margin-top: 80px;">
					<p style="color: #959595; font-size: 20px; font-weight: normal; letter-spacing: -1px; white-space: nowrap;">등록된 게시글이 없습니다.</p>
				</div>
			</c:if>


			<!-- 게시글(글) -->
			<div class="tab_content" id="articles">
				<div class="article_wrap_contents">
					<div id="wrapInfo" class="wrap_authorinfo #my_profile_info" style="display: none;">
						<h3 class="screen_out">작가소개</h3>
						<div id="infoLoadSpinner" class="layer-more-loading" style="display: none">
							<div class="loader">
								<div class="dot dot1"></div>
								<div class="dot dot2"></div>
								<div class="dot dot3"></div>
							</div>
						</div>
					</div>
					<c:forEach var="c" items="${ChannelBoardList}">

						<div id="wrapArticle" class="wrap_article #my_post">
							<div class="wrap_article_list">
								<ul class="list_article list_post1 #post_list">
									<li data-articleuid="xTI_303" class="animation_up" data-tiara-action-name="작가 프로필 > 글탭 > 리스트 클릭"
										data-tiara-action-kind="ClickContent" data-tiara-layer="articles" data-tiara-id="@@xTI">
										<a
											href="${pageContext.request.contextPath}/channels/contentlist.co?chnum=${ChannelList.chNum}&chcate_name=${c.chCate_Name}&chcate_id=${c.chCate_Id}&chname=${ChannelList.chName}?userid=${ChannelList.ownerId}"
											class="link_category"> <em class="tit_category">${c.chCate_Name}</em>
										</a> <a href="${pageContext.request.contextPath}/contents/${ChannelList.chNum}/${c.boardNum}?userid=${ChannelList.ownerId}"
											class="link_post has_image #post_listview"> <strong class="tit_subject"> <%-- 글자 수 제한 적용 --%> <c:set
													var="limitedTitle" value="${c.boardTitle}" /> <c:choose>
													<c:when test="${fn:length(c.boardTitle) > 35}">
														<c:set var="limitedTitle" value="${fn:substring(c.boardTitle, 0, 35)}..." />
													</c:when>
												</c:choose> ${limitedTitle}
										</strong>

											<div class="post_thumb">
												<img class="img_thumb" src="${pageContext.request.contextPath}/image/contents/${ChannelList.chNum}${c.thumbNail}"
													style="width: 120px; height: 120px;" alt="이미지정보">
												<!-- src="../image/channel/channel1.jpeg" -->
											</div>

											<div class="post_desc">
												<div class="wrap_sub_content">
													<span class="ico_bar"></span>
													<span class="article_content"> ${c.intro} </span>
												</div>
											</div> <!-- 
											<span class="post_append" style="white-space: nowrap">
												<span class="ico_dot"></span>
												<span class="publish_time">8시간전</span>
											</span> -->
										</a>
									</li>
								</ul>
							</div>
							<!-- <div class="wrap_article_list"> -->
						</div>
						<!-- 	<div id="wrapArticle" class="wrap_article #my_post"> -->
					</c:forEach>
				</div>
				<!-- <div class="wrap_contents"> 게시글 -->
			</div>
			<!--<div class="tab_content">-->

			<!-- 작가소개 -->
			<div class="tab_content" id="info">
				<div class="author_intro animation_up">
					<strong class="tit_intro">채널소개</strong>
					<p class="desc_intro">${ChannelList.chInfo}</p>
				</div>
				<!-- 통계 -->
				<div class="author_intro animation_up">
					<strong class="tit_intro">구독자 통계</strong>
					<div class="slide_book slide_basic">
						<div class="inner_slide">
							<ul class="list_book" data-page="1" style="width: 221px; transition-duration: 0.3s;">
								<li>
									<div class="channel_stats" style="width: 450px; margin-top: 25px;">
										<div class="chart-div">
											<canvas id="doughnut-chart"></canvas>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<!-- 카테고리 내용 -->
			<div class="tab_content" id="works">
				<div class="category_wrap_contents">
					<ul class="channel_category_list">
						<li class="channel_category_item">
							<a
								href="${pageContext.request.contextPath}/channels/contentlist.co?chnum=${ChannelList.chNum}&chcate_id=0&chname=${ChannelList.chName}"
								class="channel_category_link"> <strong class="channel_category_name">전체</strong> <!-- <div class="channel_category_num">493</div>  -->
							</a>
						</li>
						<c:forEach var="c" items="${ChannelCategory}">
							<li class="channel_category_item">
								<a
									href="${pageContext.request.contextPath}/channels/contentlist.co?chnum=${ChannelList.chNum}&chcate_name=${c.chCate_Name}&chcate_id=${c.chCate_Id}&chname=${ChannelList.chName}"
									class="channel_category_link"> <strong class="channel_category_name">${c.chCate_Name}</strong> <!-- <div class="channel_category_num">갯수</div> -->
								</a>
							</li>
						</c:forEach>
					</ul>
				</div>
				<!-- 	<div class="wrap_contents"> 카테고리 -->
			</div>
			<!-- <div class="tab_content"> -->
		</div>
		<!-- <div class="wrap_contents"> -->
	</main>
	<jsp:include page="../include/footer.jsp" />
</body>
</html>