<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="boardCreateOK" method="get">
<input type="hidden" name="board_writer" value="${user_id }">
<input type="hidden" name="cate_uid" value="${param.cate_uid }">
	<table width="500" align="center" border="1" cellpadding="5" cellspacing="0">
	
		<tr>
			<td>제목</td>
			<td><input type="text" name="board_title"/></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><textarea rows="10" cols="50" name="board_content" style="resize: none;"></textarea></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="저장하기"/>
				<input type="reset" value="다시쓰기"/>
				<input type="button" value="돌아가기" onclick="history.back()"/>
			</td>
		</tr>
	
	</table>
</form>


</body>
</html>