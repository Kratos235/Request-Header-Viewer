package controller;

import dao.HeaderDAO;
import model.Header;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.*;

@WebServlet("/HeaderServlet")
public class HeaderServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,HttpServletResponse response)
            throws ServletException,IOException{

        Map<String,String> headerMap=new HashMap<>();

        Enumeration<String> headers=request.getHeaderNames();

        String ip=request.getRemoteAddr();

        while(headers.hasMoreElements()){

            String name=headers.nextElement();
            String value=request.getHeader(name);

            headerMap.put(name,value);

            HeaderDAO.saveHeader(new Header(0,name,value,ip,""));
        }

        request.setAttribute("headers",headerMap);

        request.getRequestDispatcher("headers.jsp").forward(request,response);
    }
}