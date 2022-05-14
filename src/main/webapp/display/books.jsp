<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Books Database</title>
</head>


<body>

<h1> Book Database </h1>
<a href="../index.jsp">Back</a>
<br/>
<%= com.example.libraryproj.repos.BookList.getBookList().toString()%>
</body>
</html>