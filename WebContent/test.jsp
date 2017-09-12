<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="test.jsp">
id : <input type="text" name="id" placeholder="id입력하세요">
<input type="button" name="button" value="누르기">
</form>
<%
	String name=request.getParameter("id");
	out.println(name);
%>
</body>
</html>