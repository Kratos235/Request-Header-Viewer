package controller;

import dao.HeaderDAO;
import model.Header;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/edit")
public class EditHeaderServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id;
        try {
            id = Integer.parseInt(request.getParameter("id"));
        } catch (NumberFormatException e) {
            response.sendRedirect(request.getContextPath() + "/history");
            return;
        }

        Header target = HeaderDAO.getHeaderById(id);

        if (target == null) {
            response.sendRedirect(request.getContextPath() + "/history");
            return;
        }

        request.setAttribute("header", target);
        RequestDispatcher rd = request.getRequestDispatcher("edit.jsp");
        rd.forward(request, response);
    }
}

