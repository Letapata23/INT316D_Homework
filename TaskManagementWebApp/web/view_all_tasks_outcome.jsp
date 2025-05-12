<%-- 
    Document   : view_all_tasks_outcome
    Created on : 12 May 2025, 19:17:34
    Author     : Letap
--%>

<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entities.Task"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>View All Tasks Outcome</h1>
        <%
            List<Task> tasks = (List<Task>) request.getAttribute("tasks");
        %>
        <p>
            <%
                for(Task task: tasks){
            %>
            Task Title: <%=task.getTitle()%><br/>
            Task Description: <%=task.getDescription()%><br/><br/>
            <%
                }
            %>
        </p>
        <p>
            Please click <a href="employee_menu.jsp">here</a> to go back to the menu page or <a href="index.html">here</a> to the main page.
        </p>
    </body>
</html>
