<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board/insertform.jsp</title>
</head>
<body>
<h3>새글 작성 폼입니다.</h3>
<form action="insert.do" method="post">
	<label for="writer">작성자</label>
	<input type="text" name="writer" /><br />
	<label for="title">제목</label>
	<input type="text" name="title" /><br />
	<label for="content">내용</label>
	<textarea name="content" cols="30" rows="10"></textarea>
	<br />
	<button type="submit">저장</button>
</form>
</body>
</html>