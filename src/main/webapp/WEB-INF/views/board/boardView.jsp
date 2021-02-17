<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

제목 : ${dto.board_title }<br>
작성자 : ${dto.board_writer }<br>
작성시간 : ${dto.board_regdate }<br>
내용 : ${dto.board_content }<br>

<c:if test="${dto.board_writer == user_id }">
<button onclick="location.href='${path}/board/boardUpdate?board_uid=${dto.board_uid }'">수정</button>
<button onclick="location.href='${path}/board/boardDeleteOk?board_uid=${dto.board_uid }'">삭제</button>
</c:if>
</body>
</html>