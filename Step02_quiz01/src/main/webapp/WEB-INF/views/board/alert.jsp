<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board/alert.jsp</title>
</head>
<body>
<h3>알림 페이지</h3>
<p>${msg }</p>
<a href="${pageContext.request.contextPath }/board/list.do">게시글 목록 보기</a>
</body>
</html>