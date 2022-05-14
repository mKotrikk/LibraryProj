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

    User returningUser = userList.getUserById(user_id);
    Book returningBook = bookList.getBookById(book_id);

    if (returningBook == null || returningUser == null) {
        response.sendRedirect("/Library/exceptions/invalidId.jsp");
    } else {

        if (returningUser != returningBook.getBorrower() || !returningBook.returnBook()) {
            response.sendRedirect("/Library/exceptions/cannotReturn.jsp");
        } else {
            returningUser.returnBook(returningBook.getId());
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
