<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="jspbook.addrbook.*"%>
<%
	request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="addrbean" scope="page" class="jspbook.addrbook.AddrBean" />
<jsp:useBean id="addrbook" class="jspbook.addrbook.AddrBook" />
<jsp:setProperty name="addrbook" property="*" />
<%
	String action = request.getParameter("action");
	if (action.equals("list")) {

	} 
	else if (action.equals("insert")) {
		if(addrbean.insertDB(addrbook)){
			response.sendRedirect("addrbook_control.jsp?action=list");
		}
		else{
			throw new Exception("DB입력 오류");
		}

	} else if (action.equals("edit")) {

	} else if (action.equals("update")) {

	}
	else if(action.equals("delete")){
		
	}
	else{
		
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>