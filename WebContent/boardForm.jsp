<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 글쓰기 - 입력화면</title>
</head>
<body>
<h2>글쓰기</h2>
<form action="boardProc.jsp" method="post">
	이름: <input type="text" name="name"><br>
	제목: <input type="text" name="title"><br>
	<textarea rows="5" cols="30" name="content"></textarea><br>
	<input type="submit" value="저장">
	<!-- button -> onclick 유효성체크
	submit- 바로 액션페이지로 이동, 유효성체크x -->
</form>
</body>
</html>