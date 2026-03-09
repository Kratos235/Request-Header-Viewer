package controller;

import dao.HeaderDAO;
import model.Header;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/edit")
public class EditHeaderServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));

        // Simple lookup of the header in memory using existing DAO list
        List<Header> headers = HeaderDAO.getAllHeaders();
        Header target = null;
        for (Header h : headers) {
            if (h.getId() == id) {
                target = h;
                break;
            }
        }

        if (target == null) {
            response.sendRedirect(request.getContextPath() + "/history");
            return;
        }

        request.setAttribute("header", target);
        RequestDispatcher rd = request.getRequestDispatcher("edit.jsp");
        rd.forward(request, response);
    }
}

