package controller;

import dao.HeaderDAO;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/clearAll")
public class ClearAllServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException {

        HeaderDAO.deleteAllHeaders();

        response.sendRedirect("history");
    }
}
