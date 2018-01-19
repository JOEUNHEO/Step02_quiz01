<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board/updateform.jsp</title>
</head>
<body>
<h3>글 수정 폼입니다.</h3>
<form action="update.do" method="post">
	<table>
		<input type="hidden" name="num" value="${dto.num }" />
		<tbody>
			<tr>
				<td>번호</td>
				<td><input type="text" value="${dto.num }" disabled /></td>
			</tr>
			<tr>
				<td>작성자</td>
				<td><input type="text" name="writer" value="${dto.writer }" /></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="title" value="${dto.title }" /></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="content" cols="30" rows="10">${dto.content }</textarea></td>
			</tr>
			<tr>
				<td><button type="submit">수정</button></td>
			</tr>
		</tbody>
	</table>
</form>
</body>
</html>