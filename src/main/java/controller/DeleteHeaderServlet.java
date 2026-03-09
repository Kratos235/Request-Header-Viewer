package controller;

import dao.HeaderDAO;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/delete")

public class DeleteHeaderServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request,HttpServletResponse response)
            throws IOException{

        int id=Integer.parseInt(request.getParameter("id"));

        HeaderDAO.deleteHeader(id);

        response.sendRedirect("history");
    }
}