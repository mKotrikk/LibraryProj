<%@ page import="com.example.libraryproj.repos.BookList" %>
<%@ page import="com.example.libraryproj.data.Book" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String book_name = request.getParameter("book_name");
  String book_author = request.getParameter("book_author");
  BookList book_database = BookList.getBookList();
  book_database.insert(new Book(book_database.getSize(), book_name, book_author));
  response.sendRedirect("/Library/display/adding.jsp");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
