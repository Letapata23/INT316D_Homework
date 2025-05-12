<%-- 
    Document   : assign_task
    Created on : 11 May 2025, 9:39:11 PM
    Author     : KATLEHO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Assign Task Page</title>
    </head>
    <body>
        <h1>Assign task to employee</h1>
        <p>
            Enter the details below:
        </p>
        <form action="AssignTaskServlet.do" method="POST">
            <table>
                <tr>
                    <td>Employee ID: </td>
                    <td><input type="text" name="id"/></td>
                </tr>
                <tr>
                    <td>Full name: </td>
                    <td><input type="text" name="fullName"/></td>
                </tr>
                <tr>
                    <td>Task title: </td>
                    <td><input type="text" name="taskTitle"/></td>
                </tr>
                <tr>
                    <td>Task description: </td>
                    <td>
                        <textarea name="taskDescription"></textarea>
                    </td>
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
                    <td><input type="submit" value="ASSIGN TASK"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
