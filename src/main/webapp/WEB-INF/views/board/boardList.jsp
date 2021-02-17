<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
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

<title>Insert title here</title>
</head>
<body>
	<h1>${cate_title }</h1>
	<button class="btn btn-secondary" data-toggle="modal"
		data-target="#updateCate">카테고리 수정</button>
	<button class="btn btn-secondary" data-toggle="modal"
		data-target="#deleteCate">카테고리 삭제</button>

	<!-- The Modal -->
	<div class="modal" id="updateCate">
		<form action="cateUpdateOk">
			<div class="modal-dialog">
				<div class="modal-content">

					<!-- Modal Header -->
					<div class="modal-header">
						<h4 class="modal-title">카테고리 수정</h4>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
					<!-- Modal body -->
					<input type="hidden" name="cate_uid" value="${param.cate_uid }">
					<div class="modal-body">
						<input class="cateInput col-sm-12" type="text" name="cate_name"
							value="${cate_title }" />
					</div>
					<!-- Modal footer -->
					<div class="modal-footer">
						<button type="submit" class="btn btn-danger">수정</button>
					</div>
				</div>
			</div>
		</form>
	</div>

	<!-- The Modal -->
	<div class="modal" id="deleteCate">
		<form action="cateDeleteOk">
			<div class="modal-dialog">
				<div class="modal-content">

					<!-- Modal Header -->
					<div class="modal-header">
						<h4 class="modal-title">카테고리 삭제</h4>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
					<!-- Modal body -->
					<div class="modal-body">ㄹㅇ 삭제할꺼?</div>

					<!-- Modal footer -->
					<div class="modal-footer">
						<input type="hidden" name="cate_uid" value="${param.cate_uid }">
						<button type="submit" class="btn btn-danger">삭제</button>
					</div>
				</div>
			</div>
		</form>
	</div>


	<table width="1000" align="center" border="1" cellpadding="5"
		cellspacing="0">
		<tr>
			<th colspan="5">게시판 보기</th>
		</tr>
		
		<tr>
			<th width="80">글번호</th>
			<th width="620">제목</th>
			<th width="100">이름</th>
			<th width="120">작성일</th>
		</tr>
		<c:choose>
			<c:when test="${empty list || fn:length(list) == 0 }">
			</c:when>
			<c:otherwise>
				<c:forEach var="dto" items="${list }">
					<%-- request.getAttribute("list") --%>
					<tr>
						<td>
							<a href="${path }/board/boardView?board_uid=${dto.board_uid}">${dto.board_uid}</a>
						</td>
						<td>
							${dto.board_title}
						</td>
						<td>
							${dto.board_writer}
						</td>
						<td>
							${dto.board_regdate}
						</td>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
		
	</table>
	<button onclick="location.href='${path}/board/boardCreate?cate_uid=${param.cate_uid }'">
		게시글작성
	</button>
</body>
</html>