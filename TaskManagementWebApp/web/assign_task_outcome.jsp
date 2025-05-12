<%-- 
    Document   : assign_task_outcome
    Created on : 11 May 2025, 9:49:23 PM
    Author     : KATLEHO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Assign Task Outcome Page</title>
    </head>
    <body>
        <h1>Assign task outcome</h1>
        <%
            String fullName = (String)request.getAttribute("fullName");
            Long id = (Long)request.getAttribute("id");
        %>
        <p>
            <b><%=fullName%></b> [<b><%=id%></b>] has been persisted into the database.
            Please click <a href="manager_menu.jsp">here</a> to go back to the menu page or <a href="index.html">here</a> to the main page.
        </p>
    </body>
</html>
