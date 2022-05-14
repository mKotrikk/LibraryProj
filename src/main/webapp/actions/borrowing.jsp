<%@ page import="com.example.libraryproj.repos.BookList" %>
<%@ page import="com.example.libraryproj.repos.UserList" %>
<%@ page import="com.example.libraryproj.data.User" %>
<%@ page import="com.example.libraryproj.data.Book" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    int user_id = Integer.parseInt(request.getParameter("user_id"));
    int book_id = Integer.parseInt(request.getParameter("book_id"));

    BookList bookList = BookList.getBookList();
    UserList userList = UserList.getUserList();

    User borrowingUser = userList.getUserById(user_id);
    Book borrowedBook = bookList.getBookById(book_id);

    if (borrowedBook == null || borrowingUser == null) {
        response.sendRedirect("/Library/exceptions/invalidId.jsp");
    } else {

        if (!borrowedBook.borrow(borrowingUser)) {
            response.sendRedirect("/Library/exceptions/cannotBorrow.jsp");
        } else {
            borrowingUser.borrow(borrowedBook);
            response.sendRedirect("/Library");
        }
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
