<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Database</title>
</head>


<body>

<h1> User Database </h1>
<a href="../index.jsp">Back</a>
<br><br>
 Id | Name | Surname| City | Address | Borrowed books
<br><br>
<%= com.example.libraryproj.repos.UserList.getUserList().toString()%>
</body>
</html>