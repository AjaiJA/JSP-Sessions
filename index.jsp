<%@page import="java.io.*,java.util.*,java.text.*" %>
<%
    String name=(String)session.getAttribute("uname");
    if(name!=null){
        response.sendRedirect("./ex5.jsp");
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
</head>
<body>
    <form method="POST" style="max-width:30%;margin:auto;" action="ex5.jsp">
        <input style="text-align:center;" type="text" name="username" />
        <button class="btn waves-effect waves-light" type="submit" name="enter">Enter</button>
    </form>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</body>
</html>