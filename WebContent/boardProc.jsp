<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 글쓰기 - 결과화면</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String name=request.getParameter("name");
	String title=request.getParameter("title");
	String content=request.getParameter("content");
	
	Date date=new Date();
	Long time=date.getTime();
	String filename=time+".txt"; //논리적인경로
	String result;
	
	//out.println(filename);
	
	PrintWriter writer=null;
	
	try {
		String filePath=application.getRealPath("/WEB-INF/bbs/"+filename);
		//out.println(filePath);
		writer=new PrintWriter(filePath);
		
		writer.printf("제목: %s %n", title);
		writer.printf("글쓴이: %s %n", name);
		writer.printf(content);
		
		//out.println("<font color=red><b>게시물</b></font>이 저장되었습니다.");
		
		writer.flush();
		result="ok";
	} catch(Exception e) {
		out.println("오류발생");
		result="fail";
	}
	response.sendRedirect("boardResult.jsp?choi="+result);
%>

<%--
	이름: <%=name %><br>
	제목: <%=title %><br>
	내용: <%=content %><br>
--%>


</body>
</html>