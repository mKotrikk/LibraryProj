<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Library</title>
</head>
<body>

<h1>
    <%= "Library" %>
</h1>

<a href="display/adding.jsp">Add to lists</a>
<br><br>
<a href="display/books.jsp">List of all books</a>
<br>
<a href="display/users.jsp">List of all users</a>
<br><br><br>
<form action="actions/borrowing.jsp" method="post">
    <fieldset>
        <legend>Borrow a book:</legend>
        User Id:<br>
        <input type="number" name="user_id" required maxlength="5"><br><br>
        Book Id:<br>
        <input type="number" name="book_id" required maxlength="5"><br><br>
        <input type="submit" value="Borrow">
    </fieldset>
</form>


<form action="actions/returning.jsp" method="post">
    <fieldset>
        <legend>Return a book:</legend>
        User Id:<br>
        <input type="number" name="user_id" required maxlength="5"><br><br>
        Book Id:<br>
        <input type="number" name="book_id" required maxlength="5"><br><br>
        <input type="submit" value="Return">
    </fieldset>
</form>

</body>
</html>