<%-- 
    Document   : update_task
    Created on : 11 May 2025, 9:24:19 PM
    Author     : KATLEHO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Task Status Page</title>
    </head>
    <body>
        <h1>Update task status</h1>
        <p>
            Enter id and status below:
        </p>
        <form action="UpdateTaskStatusServlet.do" method="POST">
            <table>
                <tr>
                    <td>ID: </td>
                    <td><input type="text" name="id"/></td>
                </tr>
                <tr>
                    <td>Task status: </td>
                    <td>
                        <select name="status">
                            <option value="TO_DO">To Do</option>
                            <option value="IN_PROGRESS">In Progress</option>
                            <option value="DONE">Done</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="UPDATE STATUS"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
