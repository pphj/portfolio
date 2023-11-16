<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="t" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="kor">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main/mainpage.css">
    <script> var contextPath = '<%= request.getContextPath() %>'; </script>
    <script src="${pageContext.request.contextPath}/resources/js/mainpage.js"></script>
    <title>잇다:세상의 모든 콘텐츠</title>
<script>
	let result = "${result}";
	if (result == 'joinSuccess') {
		alert("회원가입을 축하드립니다.");
	}
</script>
<jsp:include page="../include/header.jsp"/>
<!--<jsp:include page="../popup/popup.jsp"/>-->
</head>
<body>
<jsp:include page="top.jsp"/>
<input type="hidden" name="LoginId" id="LoginId" value="${userinfo.userId }" />
<div class="main_container">
    <div class="recommend_area">
        <div class="recommend_bar">
            <button type="button" class="left-button left-area"><span class="blind">이전</span></button>
            <ul class="recommend_cards">
                <div style="position: relative; z-index: 1000; width:100%; height: 100%; top: 0px; 
                transform: translate(-200px, 0px); will-change: transform;">
                	<!-- 인기 게시글 로테이션 -->
                    <t:forEach var="c" items="${HotContentList}"> 	<!-- MainController에서 보낸 값 -->
                        <li class="reco_card" style="position: absolute; transform: translate(0% , 0px);">
                            <div class="card-view">
                                <a style="text-decoration: none; color: black" href="${pageContext.request.contextPath}/contents/${c.chNum}/${c.boardNum}?userid=${c.writer}">
                                    <t:choose>
                                        <t:when test="${empty c.thumbNail}">
                                            <img class="card_img"
                                             src="${pageContext.request.contextPath}/resources/image/common/itda_logo3.png">
                                        </t:when>
                                        <t:otherwise>
                                            <!--<img class="card_img"
                                             src="${pageContext.request.contextPath}/resources/image/common/itda_logo3.png">-->
                                             <img class="card_img" src="${pageContext.request.contextPath}/image/contents/${c.chNum}${c.thumbNail}">
													
                                        </t:otherwise>
                                    </t:choose>
                                    <div class="card-body card-body-font">
                                        <h5 class="card-title">
	                                        <t:if test="${c.boardTitle.length() >= 20}">
	                                            <t:out value="${c.boardTitle.substring(0,20)}..."/>
	                                        </t:if>
	                                        <t:if test="${c.boardTitle.length() < 20}">
	                                            <t:out value="${c.boardTitle}"/>
	                                        </t:if>
                                        </h5>
                                        <p class="card-text">
                                            <t:if test="${c.intro.length() >= 200}">
                                                <t:out value="${c.intro.substring(0,200)}..."/>
                                            </t:if>
                                            <t:if test="${c.intro.length() < 200}">
                                                <t:out value="${c.intro}"/>
                                            </t:if>
                                        </p>
                                    </div>
                                </a>
                            </div>
                        </li>
                    </t:forEach>

                    <p></p>
                </div>
            </ul>
            <button type="button" class="right-button right-area"><span class="blind">다음</span></button>
        </div>
    </div>
    <jsp:include page="TodayChannel.jsp"/>
    <jsp:include page="TodayContent.jsp"/>
</div>
<jsp:include page="../include/footer.jsp"/>
</body>
</html>