<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Proc</title>
</head>
<body>

<%
	String id=request.getParameter("id");
	String pw=request.getParameter("pw");
	//out.println("ID: "+id);
	//out.println("PW: "+id);
%>

<%-- 주석1
ID: <%=id %> <br>
PW: <%=pw %> <br>
--%>

<%--
	if(id.equals("y2kyung")) {
		if(pw.equals("0214")) {
			out.println("로그인되셨습니다 !!");
		}
		else {
			out.println("다시 로그인해주세요 T.T");
		}
	} else {
		out.println("회원가입해주세요 !!");
	}
--%>

<%
	if(id.equals("y2kyung")) {
		if(pw.equals("0214")) {%>
			<jsp:forward page="LoginOK.jsp"></jsp:forward>
<%		}
		else {%>
			<jsp:forward page="login.jsp"></jsp:forward>
<%		}
	} 
	else { %>
		<jsp:forward page="insert.jsp"></jsp:forward>
<%	}
%>
</body>

</html>