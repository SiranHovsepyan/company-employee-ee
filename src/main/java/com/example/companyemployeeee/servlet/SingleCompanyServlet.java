package com.example.companyemployeeee.servlet;

import com.example.companyemployeeee.manager.CompanyManager;
import com.example.companyemployeeee.manager.EmployeeManager;
import com.example.companyemployeeee.model.Company;
import com.example.companyemployeeee.model.Employee;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/singleCompany")

public class SingleCompanyServlet extends HttpServlet {
    private CompanyManager companyManager = new CompanyManager();
    private EmployeeManager employeeManager = new EmployeeManager();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Company companyById = companyManager.getCompanyById(id);
        if (companyById == null) {
            resp.sendRedirect("/companies");
        } else {
           List<Employee> employeeList= employeeManager.getByCompanyId(id);
           req.setAttribute("company",companyById);
           req.setAttribute("employees",employeeList);
           req.getRequestDispatcher("/WEB-INF/singleCompany.jsp").forward(req,resp);
        }

    }
}
