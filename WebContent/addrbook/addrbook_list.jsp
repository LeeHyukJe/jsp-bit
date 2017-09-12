<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="addrbook_error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="addrbook.css" type="text/css" media="screen"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주소록 목록 화면</title>
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
				<tr>
					<td><a href="addrbook_edit_form.jsp">1</a></td><td>hong</td><td>010-7317-2733</td><td>1991-07-27</td>
					<td>한성대학교</td><td>컴퓨터 공학부</td>
					</tr>
					<tr>
					<td><a href="addrbook_edit_form.jsp">2</a></td><td>hong</td><td>010-7317-2733</td><td>1991-07-27</td>
					<td>한성대학교</td><td>컴퓨터 공학부</td>
					</tr>
					<tr>
					<td><a href="addrbook_edit_form.jsp">3</a></td><td>hong</td><td>010-7317-2733</td><td>1991-07-27</td>
					<td>한성대학교</td><td>컴퓨터 공학부</td>
					</tr>
			</table>
		</form>
	</div>
</body>
</html>