<%@page import="java.io.*,java.util.*,java.text.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">   
    </head>
    <body>
        <%

            String name=(String)session.getAttribute("uname");

            Date creationTime=(Date)session.getAttribute("creationTime");
            Date currrentTime=Calendar.getInstance().getTime();
            
            long difference = currrentTime.getTime() - creationTime.getTime();

            long diffSeconds = difference / 1000 % 60;
            long diffMinutes = difference / (60 * 1000) % 60;
            long diffHours = difference / (60 * 60 * 1000) % 24;
            long diffDays = difference / (24 * 60 * 60 * 1000);
            
            out.println("<p style='text-align:center;font-size:18px;'>Thank You <span style='font-size:23px;font-weight:bolder'>" + name + "</span> and the total duration used is <span style='font-weight:bolder;font-size:23px;'>" + diffHours + " hr : " + diffMinutes + " min : " + diffSeconds + " sec </span></p>");
            
            session.removeAttribute("uname");
            session.removeAttribute("creationTime");

        %>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    </body>
</html>
