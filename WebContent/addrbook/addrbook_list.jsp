<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="addrbook_error.jsp"%>
    <%@ page import="java.util.*,jspbook.addrbook.*" %>
    <jsp:useBean id="datas" class="java.util.ArrayList" scope="request"/>
    <jsp:useBean id="list" class="jspbook.addrbook.AddrBean"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="addrbook.css" type="text/css" media="screen"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주소록 목록 화면</title>
	<script>
		function check(ab_id){
			pwd=promt('수정/삭제 하려면 비밀번호를 넣으세요');
			document.location.href="addrbook_control.jsp?action=edit&ab_id="+ab_id+"&upasswd="+pwd;
		}
	</script>
</head>
<body>
	<div align="center">
		<h2>주소록:목록화면</h2>
		<hr>
		<form>
			<a href="addrbook_form.jsp">주소록 등록</a>
			
			<table border=2>
				<tr><th>번호</th><th>name</th><th>tel</th><th>birth</th>
				<th>company</th><th>memo</th>
				</tr>
				<%
					datas=list.getDBList();
					for(AddrBook ab:(ArrayList<AddrBook>)datas){
				%>
				<tr>
					<td><a href="javascript:check(<%=ab.getAb_id()%>)"><%=ab.getAb_id() %></a></td>
					<td><%=ab.getAb_name() %></td>
					<td><%=ab.getAb_email() %></td>
					<td><%=ab.getAb_comdept() %></td>
					<td><%=ab.getAb_tel() %></td>
					<td><%=ab.getAb_birth() %></td>
					<td><%=ab.getAb_memo() %></td>
					</tr>
					<%
					}
					%>
			</table>
		</form>
	</div>
</body>
</html>