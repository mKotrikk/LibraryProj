<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding</title>
</head>
<body>
<a href="../index.jsp">Back</a><br><br>
<form action="../actions/user_process.jsp" method="post">
  <fieldset>
    <legend>User information:</legend>
    Name:<br>
    <input type="text" name="user_name" required maxlength="15"><br><br>
    Surname:<br>
    <input type="text" name="user_surname" required maxlength="15"><br><br>
    City:<br>
    <input type="text" name="user_city" required maxlength="15"><br><br>
    Address:<br>
    <input type="text" name="user_address" required maxlength="20"><br><br>
    <input type="submit" value="Add user">
  </fieldset>
</form>

<form action="../actions/book_process.jsp" method="post">
  <fieldset>
    <legend>Book information:</legend>
    Name:<br>
    <input type="text" name="book_name" required maxlength="30"><br><br>
    Author:<br>
    <input type="text" name="book_author" required maxlength="30"><br><br>
    <input type="submit" value="Add book">
  </fieldset>
</form>

</body>
</html>
