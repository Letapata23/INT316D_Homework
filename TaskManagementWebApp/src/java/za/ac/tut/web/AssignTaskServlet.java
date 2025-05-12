/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.ejb.bl.EmployeeFacadeLocal;
import za.ac.tut.entities.Employee;
import za.ac.tut.entities.Task;

/**
 *
 * @author KATLEHO
 */
public class AssignTaskServlet extends HttpServlet {
    @EJB
    private EmployeeFacadeLocal efl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        String fullName = request.getParameter("fullName");
        String taskTitle = request.getParameter("taskTitle");
        String taskDescription = request.getParameter("taskDescription");
        String status = request.getParameter("status");
        
        Employee employee = createEmployee(id, fullName, taskTitle, taskDescription, status);
        efl.create(employee);
        
        request.setAttribute("fullName", fullName);
        request.setAttribute("id", id);
        
        RequestDispatcher disp = request.getRequestDispatcher("assign_task_outcome.jsp");
        disp.forward(request, response);
    }

    private Employee createEmployee(Long id, String fullName, String taskTitle, String taskDescription, String status) {
        Task t = new Task();
        t.setTitle(taskTitle);
        t.setDescription(taskDescription);
        t.setStatus(status);
        
        Employee e = new Employee();
        e.setEmployeeID(id);
        e.setFullName(fullName);
        e.setTask(t);
        
        return e;
    }
}
