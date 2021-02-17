<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<html>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- 아이콘 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">

<!-- 구글 폰트 -->
<link
	href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Bowlby+One+SC&family=Bungee&family=Noto+Sans+KR:wght@400;500&display=swap"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">

<!-- 파비콘 설정-->
<link rel="shortcut icon" href="${path}/resources/img/movie_favicon.ico"
	type="image/x-icon">

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<!-- CSS파일 -->
<link rel="stylesheet" href="${path }/resources/CSS/main/index.css">
<head>
<title>min's blog</title>
</head>
<body>

	<header class="container">
		<div id="menu" class="dropdown">
			<button class="btn btn-sm dropdown-toggle" data-toggle="dropdown">
				menu</button>
			<div class="dropdown-menu">
				<c:choose>
					<c:when test="${empty list || fn:length(list) == 0 }">
					</c:when>
					<c:otherwise>
						<c:forEach var="dto" items="${list }">
							<%-- request.getAttribute("list") --%>
							<a class="dropdown-item"
								href="board/boardList?cate_uid=${dto.cate_uid }">${dto.cate_name}</a>
						</c:forEach>
					</c:otherwise>
				</c:choose>
				<button class="btn btn-secondary btn-block" data-toggle="modal"
					data-target="#createCate">생성</button>
			</div>
		</div>

		<!-- The Modal -->
		<div class="modal" id="createCate">
			<form action="cate/cateCreateOk">
				<div class="modal-dialog">
					<div class="modal-content">

						<!-- Modal Header -->
						<div class="modal-header">
							<h4 class="modal-title">카테고리 생성</h4>
							<button type="button" class="close" data-dismiss="modal">&times;</button>
						</div>
						<!-- Modal body -->
						<div class="modal-body">
							<input class="cateInput col-sm-12" type="text" name="cate_name"
								placeholder="카테고리 이름" />
						</div>

						<!-- Modal footer -->
						<div class="modal-footer">
							<button type="submit" class="btn btn-danger">생성</button>
						</div>
					</div>
				</div>
			</form>
		</div>


		<div id="titleDiv">
			<a href="${path }" id="title">민영이의 블로그</a>
		</div>

		<%
   // 현재 로그인 상태인지 확인
   if(session.getAttribute("user_id") != null){
   String user_id = (String)session.getAttribute("user_id");
%>
		<div id="userBtn">
			${user_id }님 &nbsp;
			<button class="btn btn-secondary btn-sm"
				onclick="location.href='${path}/user/logOut'">로그아웃</button>
		</div>
		<%
   } else {
      
%>
		<!-- 로그인 실패했을 경우 -->

		<div id="userBtn">
			<button class="btn btn-secondary btn-sm"
				onclick="location.href='${path}/user/login'">로그인</button>
			&nbsp;
			<button class="btn btn-secondary btn-sm"
				onclick="location.href='${path}/user/signUp'">회원가입</button>
		</div>
		<%            } %>
	</header>
	<div class="clear"></div>
	<section class="container"></section>
<br><br><br><br><br><br><br>
	<div class="container">
	<table class="table">
		<tr>
			<th colspan="5">전체 게시글</th>
		</tr>
		
		<tr>
			<th width="80">글번호</th>
			<th width="620">제목</th>
			<th width="100">이름</th>
			<th width="120">작성일</th>
		</tr>
		<c:choose>
			<c:when test="${empty list2 || fn:length(list2) == 0 }">
			</c:when>
			<c:otherwise>
				<c:forEach var="dto2" items="${list2 }">
					<%-- request.getAttribute("list") --%>
					<tr>
						<td>
							<a href="${path }/board/boardView?board_uid=${dto2.board_uid}">${dto2.board_uid}</a>
						</td>
						<td>
							<a href="${path }/board/boardView?board_uid=${dto2.board_uid}">${dto2.board_title}</a>
						</td>
						<td>
							<a href="${path }/board/boardView?board_uid=${dto2.board_uid}">${dto2.board_writer}</a>
						</td>
						<td>
							<a href="${path }/board/boardView?board_uid=${dto2.board_uid}">${dto2.board_regdate}</a>
						</td>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</div>
</body>
</html>
