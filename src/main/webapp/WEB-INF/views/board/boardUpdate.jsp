<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="boardUpdateOk">
<input type="hidden" name="board_uid" value="${param.board_uid }">
제목 : <input type="text" name="board_title" value="${dto.board_title }"><br>
내용 : <input type="text" name="board_content" value="${dto.board_content }"><br>
<button type="submit">수정</button>
</form>

</body>
</html>