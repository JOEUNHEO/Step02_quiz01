<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board/detail.jsp</title>
</head>
<body>
<h3>${dto.num } 번 글의 정보 입니다.</h3>
<p>작성자 : <strong>${dto.writer }</strong></p>
<p>제목 : <strong>${dto.title }</strong></p>
<p>내용</p>
<textarea name="content" cols="30" rows="10" disabled>${dto.content }</textarea>
<p>작성일 : <strong>${dto.regdate }</strong></p>
<a href="updateform.do?num=${dto.num }">수정</a>
<a href="javascript:isDelete()">삭제</a>
<script>
	function isDelete(){
		var result = confirm("삭제 하시겠습니까?");
		
		if(result){//확인을 눌렀을 때 삭제 되도록 한다.
			location.href="delete.do?num=${dto.num}";
		}
	}
</script>
</body>
</html>