<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>MyHompage</title>
    <style>
        a{
            display: inline-block;
        }

        div{
            display: inline-block;
            float: right;
        }
        img{
            opacity: 0.9;
            width: auto;
            filter: alpha(opacity=50);
        }

        div.gate{
            background-image: url("gate.jpg");
            text-align: center;
            width: 100%;
            padding:100px 0;
            color:#fff;
            font-weight:bold;
            font-size:20px;
        }
        ul{
            list-style-type: none;
            margin: 0;
            padding:0;
            overflow: hidden;
            background-color: #333;
        }
        li{
            float: right;
        }

        li.home{
            float: left;
        }
        
        li a{
            display: block;
            color: white;
            text-align: center;
            padding:14px 16px;
            text-decoration: none;
        }

        li a:hover{
            background-color: #111;
        }
        div.gradient1{
            margin: 100% 0 0 0;
            width:100%;
            padding:100px 0;
            background: linear-gradient(to top,wheat,white);
        }
    </style>

</head>
<body>
    <!-- ><a href="HomePage.html"><img src="homeIcon.png" height="48" width="48"/></a><!-->
    <!-- ><div>&nbsp;로그인 &nbsp;</div>
    <div>&nbsp;로그아웃</div>
    <div>&nbsp;<a href="addrbook_form.jsp">회원가입</a></div>
    <div>&nbsp;<a href="addrbook_control.jsp?action=list">회원리스트</a></div><!-->
    <ul>
        <li class="home"><a href="HomePage.html"><img src="homeIcon.png" height="48" width="48"/></a></li>
        <li><a href="addrbook_control.jsp?action=list">회원리스트</a></li>
        <li><a href="addrbook_form.jsp">회원가입</a></li>
    </ul>
    <hr>
    <div class="gate" style="color: tomato;">The Winner Takes It All</div>
	<div class="gradient1"></div>

</body>
</html>