<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="jspbook.addrbook.*" %>
    <%@page import="java.util.*" %>
    <jsp:useBean id="addrbean" scope="page" class="jspbook.addrbook.AddrBean"/>
    <jsp:useBean id="addrbook" scope="page" class="jspbook.addrbook.AddrBook"/>
    <jsp:setProperty name="addrbook" property="*"/>
    <%
    	ArrayList<AddrBook> id_list=addrbean.getDBList();
    	Iterator<AddrBook> it=id_list.iterator();
    	while(it.hasNext()){
    		if((it.next().getAb_id()+"").equals(request.getParameter("ab_id")))
    			response.sendRedirect("index.jsp");
    	}
    	
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	function warn(){
		history.go(-1);
		window.location.reload(true);
	}
	
	var warning=document.getElementById("div");
	alert("존재하지 않는 아이디 입니다. 다시 확인해주시기 바랍니다.");
	history.go(-1);
	window.location.reload(true);
</script>
</head>
<body>
	<!-- <div id="div">
	<!-- <input type="button" value="되돌아가기" onclick="warn()"><!-->
	</div>
	<!-- > -->
</body>
</html>