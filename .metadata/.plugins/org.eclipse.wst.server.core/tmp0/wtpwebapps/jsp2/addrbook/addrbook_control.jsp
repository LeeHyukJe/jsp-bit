<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="jspbook.addrbook.*"%>
<%@page import="java.io.File"%>
<%@page import="java.util.*"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%
	request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="addrbean" scope="page"
	class="jspbook.addrbook.AddrBean" />
<jsp:useBean id="addrbook" class="jspbook.addrbook.AddrBook" />
<jsp:setProperty name="addrbook" property="*" />

<%
	String action = request.getParameter("action");
	if (action.equals("list")) {
		response.sendRedirect("addrbook_list.jsp");
	} else if (action.equals("insert")) {
		if (addrbean.insertDB(addrbook)) {
			response.sendRedirect("addrbook_control.jsp?action=list");
		} else {
			throw new Exception("DB입력 오류");
		}

	} else if (action.equals("edit")) {
		//String id=request.getParameter("ab_id");
		AddrBook abook = addrbean.getDB(addrbook.getAb_id());
		if (!request.getParameter("upasswd").equals("1234")) {
			out.print("<script>alert('비밀번호가 틀렸습니다.'); history.go(-1);</script>");
		} else {
			request.setAttribute("ab", abook);
			pageContext.forward("addrbook_edit_form.jsp");
		}

	} else if (action.equals("update")) {
		if (addrbean.updateDB(addrbook)) {
			response.sendRedirect("addrbook_control.jsp?action=list");
		}
	} else if (action.equals("delete")) {
		if (addrbean.deleteDB(addrbook.getAb_id())) {
			out.print("<script>alert('삭제되었습니다.')</script>");
			pageContext.forward("addrbook_control.jsp?action=list");
		} else {
			throw new Exception("DB갱신 오류");
		}
	} else {

	}
%>

<%
	try {
		request.setCharacterEncoding("UTF-8");
		String savePath = application.getRealPath("/upload/");
		String saveDir = "C:/Tomcat/apache-tomcat-8.5.16-windows-x64/apache-tomcat-8.5.16/webapps/ROOT/test/upload";
		int maxSize = 1024 * 1024 * 100;
		String enctype = "UTF-8";

		MultipartRequest multi = new MultipartRequest(request, saveDir, maxSize, enctype,
				new DefaultFileRenamePolicy());

		out.println("파일 업로드명" + multi.getFilesystemName("ab_picture") + "<br>");
		out.println("원래 파일명" + multi.getOriginalFileName("ab_picture") + "<br>");
		File file = multi.getFile("ab_picture");
		//String db_pic = multi.getOriginalFileName("ab_picture");

		addrbook.setAb_picture(file.getPath());
		addrbean.insertDB(addrbook);

		//System.out.print(application.getRealPath(addrbook.getAb_picture()));
		//File file=multi.getFile("ab_picture");

		//application.setAttribute("path", file.getPath());

	} catch (Exception e) {
		System.out.print(e);
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