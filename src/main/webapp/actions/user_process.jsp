<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@ page import="com.example.libraryproj.data.User" %>
<%@ page import="com.example.libraryproj.repos.UserList" %>
<%
    String user_name=request.getParameter("user_name");
    String user_surname=request.getParameter("user_surname");
    String user_city=request.getParameter("user_city");
    String user_address=request.getParameter("user_address");
    UserList user_database = UserList.getUserList();
    user_database.insert(new User(user_database.getSize(), user_name,user_surname, user_city, user_address, 0));
    response.sendRedirect("/Library/display/adding.jsp");
%>

<html>
<head>
    <title></title>
</head>
<h1></h1>
<body>
</body>
</html>
