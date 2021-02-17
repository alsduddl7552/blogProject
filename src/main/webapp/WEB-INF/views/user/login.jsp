<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>login</h1>
<form action="loginOk">
id : <input type="text" name = "user_id"/><br>
pw : <input type="password" name = "user_pw"/><br>
<button type="submit">로그인</button>
</form>

<button onclick="location.href='${path}/user/idsearch'">아이디 찾기</button>
<button onclick="location.href='${path}/user/pwsearch'">비밀번호 찾기</button>

</body>
</html>