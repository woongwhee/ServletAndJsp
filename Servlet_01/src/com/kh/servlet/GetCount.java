package com.kh.servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "GetCount", value = "/GetCount")
public class GetCount extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        PrintWriter out=resp.getWriter();
        String ctn_=req.getParameter("cnt");
        int cnt=0;
        if(ctn_!=null&&!ctn_.equals("")){//기본값을 넣어줘 값이 null이들어오는걸 방지할수잇따.
            cnt=Integer.parseInt(ctn_);
        }else{
            cnt=100;
        }
        for (int i = 0; i < cnt; i++) {
            out.println((i+1)+": 안녕서블릿!!<br>");
        }//http://localhost:8070/Servlet01/GetCount?cnt=5를 실행하면 5개가 출력된다!
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
