/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
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

/**
 *
 * @author Letap
 */
public class RemoveEmployeeServlet extends HttpServlet {

    @EJB
    private EmployeeFacadeLocal efl;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long empId = Long.valueOf(request.getParameter("emp_id"));
        
        if(efl.find(empId) != null){
            efl.remove(efl.find(empId));
        }
        else{
            // Throw exception
        }
        
        RequestDispatcher disp = request.getRequestDispatcher("remove_employee_outcome.jsp");
        disp.forward(request, response);
    }

}
