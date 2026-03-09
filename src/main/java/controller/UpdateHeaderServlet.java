package controller;

import dao.HeaderDAO;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/update")

public class UpdateHeaderServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,HttpServletResponse response)
            throws IOException{

        int id=Integer.parseInt(request.getParameter("id"));

        String note=request.getParameter("note");

        HeaderDAO.updateNote(id,note);

        response.sendRedirect("history");
    }
}