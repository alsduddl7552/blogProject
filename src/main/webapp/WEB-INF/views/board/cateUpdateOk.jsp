<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  

  
<c:choose>
	<c:when test="${error == 1 }">
		<script>
			alert("카테고리명을 입력해 주세요");
			history.back();
		</script>
	</c:when>
	<c:when test="${result == 0 }">
		<script>
			alert("카테고리 수정 실패");
			history.back();
		</script>
	</c:when>
	<c:otherwise>
		<script>
			alert("카테고리 수정 성공");
			location.href = "${pageContext.request.contextPath }";
		</script>
	</c:otherwise>
</c:choose>
