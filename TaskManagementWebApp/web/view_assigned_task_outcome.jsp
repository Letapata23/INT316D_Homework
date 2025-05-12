<%-- 
    Document   : view_assigned_task_outcome
    Created on : 11 May 2025, 9:13:28 PM
    Author     : KATLEHO
--%>

<%@page import="za.ac.tut.entities.Employee"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Assigned Task Outcome Page</title>
    </head>
    <body>
        <h1>View assigned task outcome</h1>
        <%
            Employee e  = (Employee)request.getAttribute("emp");
            String name = e.getFullName();
            Long id = e.getId();
            String title = e.getTask().getTitle();
            String description = e.getTask().getDescription();
        %>
        <p>
            <b><%=name%></b> [<b><%=id%></b>] you have been assigned:
        </p>
        <table>
            <tr>
                <td>Title: </td>
                <td><%=title%></td>
            </tr>
            <tr>
                <td>Description: </td>
                <td><%=description%></td>
            </tr>
        </table>
        <p>
            Please click <a href="employee_menu.jsp">here</a> to go back to the menu page or <a href="index.html">here</a> to the main page.
        </p>
    </body>
</html>
