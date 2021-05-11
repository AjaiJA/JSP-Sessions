<%-- 
    Document   : ex5
    Created on : 29 Apr, 2021, 11:34:08 PM
    Author     : AJAI J A
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">   
    </head>
    <body>
        <% Date creationTime = Calendar.getInstance().getTime(); 
            session.setAttribute("creationTime",creationTime);
        %>
        <nav>
            <div class="nav-wrapper">
            <p>Creation Time : <% out.println(session.getAttribute("creationTime")); %></p>
            <ul id="nav-mobile" class="right hide-on-med-and-down">
                <li>    
                    <form method="POST" action="logout.jsp">
                        <button class="btn waves-effect deep-orange accent-3 waves-light" type="submit" name="logout">Log out</button>
                    </form>
                </li>
            </ul>
            </div>
        </nav>
        <div class="card-panel">
            <blockquote>
                <%
                    String name=request.getParameter("username");
                    session.setAttribute("uname",name);
                    out.println("<h5 style='text-align:center'>Hello " + session.getAttribute("uname")+"</h5>"); 
                %>
            </blockquote>
        </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    </body>
</html>
