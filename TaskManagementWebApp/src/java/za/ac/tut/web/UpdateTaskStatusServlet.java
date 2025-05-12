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

/**
 *
 * @author KATLEHO
 */
public class UpdateTaskStatusServlet extends HttpServlet {
    @EJB
    private EmployeeFacadeLocal efl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        String status = request.getParameter("status");
        
        Employee emp = createEmployee(id, status);
        efl.edit(emp);
        
        RequestDispatcher disp = request.getRequestDispatcher("update_task_outcome.jsp");
        disp.forward(request, response);
    }

    private Employee createEmployee(Long id, String status) {
        Employee e = efl.find(id);
        e.getTask().setStatus(status);
        return e;
    }
}
