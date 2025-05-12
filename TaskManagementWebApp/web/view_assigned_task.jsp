<%-- 
    Document   : view_assigned_task
    Created on : 11 May 2025, 9:03:08 PM
    Author     : KATLEHO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Assigned Task Page</title>
    </head>
    <body>
        <h1>View assigned task</h1>
        <p>
            Enter employee id to view assigned task
        </p>
        <form action="ViewAssignedTaskServlet.do" method="POST">
            <table>
                <tr>
                    <td>ID: </td>
                    <td><input type="text" name="id"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="VIEW TASK"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
