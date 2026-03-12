package controller;

import dao.HeaderDAO;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/history")
public class HistoryServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,HttpServletResponse response)
            throws ServletException,IOException{

        request.setAttribute("list", HeaderDAO.getAllHeaders());

        request.getRequestDispatcher("history.jsp")
                .forward(request,response);
    }
}