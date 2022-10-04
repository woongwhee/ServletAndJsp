package com.kh.servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "add", value = "/add")
public class add extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String x_=request.getParameter("x");
        String y_=request.getParameter("y");
        int x=0;
        int y=0;
        if(x_!=null&&!x_.equals("")){
            x=Integer.parseInt(x_);
        }
        if(y_!=null&&!y_.equals("")){
            y=Integer.parseInt(y_);
        }
        response.getWriter().println(x+y);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
