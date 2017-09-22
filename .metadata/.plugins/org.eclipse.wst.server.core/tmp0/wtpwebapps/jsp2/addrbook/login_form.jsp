<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.net.URLDecoder" %>
    <%
    	Cookie[] cookies=request.getCookies();
    	Cookie id_cookie=null;
    	if(cookies!=null && cookies.length>0){
    		id_cookie=cookies[0];
    	}
    
    %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>로그인</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
    <div class="w3-card-4">
        <div class="w3-container w3-brown">
            <h2>로그인</h2>
        </div>
        <form action="login.jsp">
            <p>
                <label class="w3-text-brown"><b>ID</b></label>
                <input class="w3-input w3-border w3-sand" name="ab_id"
                       type="text" value=<%=id_cookie==null?"":URLDecoder.decode(id_cookie.getValue(),"utf-8")%>>
                   
            </p>
            <p>
                <label class="w3-text-brown"><b>Password</b></label>
                <input class="w3-input w3-border w3-sand"
                       name="ab_password" type="text">
            </p>
            <p>
                <button class="w3-btn w3=brown">Login</button>
            </p>
            <input type="checkbox" name="is_store" value="Remember ME!!!!">
        </form>
    </div>
</body>
</html>