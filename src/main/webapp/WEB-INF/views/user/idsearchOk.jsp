<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  

  
<c:choose>
	<c:when test="${result == 0 }">
		<script>
			alert("잘못된 정보 입니다");
			history.back();
		</script>
	</c:when>
	<c:when test="${error == 1 }">
      <script>
         alert("이름을 입력해 주세요");
         history.back();
      </script>
   </c:when>
	<c:when test="${error == 2 }">
      <script>
         alert("메일을 입력해 주세요");
         history.back();
      </script>
   </c:when>
	<c:otherwise>
		<script>
			alert("${user_id}");
			location.href = "${pageContext.request.contextPath }";
		</script>
	</c:otherwise>
</c:choose>
