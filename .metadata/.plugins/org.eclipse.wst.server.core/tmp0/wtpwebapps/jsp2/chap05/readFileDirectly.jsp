<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>절대 경로 사용하여 자원 읽기</title>
</head>
<body>
	<%
		char[] buff=new char[28];
		int len=-1;
		
		String filePath="C:/Tomcat/apache-tomcat-8.5.16-windows-x64/apache-tomcat-8.5.16/webapps/chap05/message/notice.txt";
		
		try(InputStreamReader fr=new InputStreamReader(
				new FileInputStream(filePath),"UTF-8")){
			while((len=fr.read(buff))!=-1){
				out.print(new String(buff,0,len));
			}
			
		}catch(IOException e){
			out.print("exception 발생!");
		}
	%>
</body>
</html>