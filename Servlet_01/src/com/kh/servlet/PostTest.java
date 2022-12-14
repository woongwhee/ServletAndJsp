package com.kh.servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "PostTest", value = "/PostTest.do")
public class PostTest extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");
        String title=req.getParameter("title");
        String content=req.getParameter("content");
        String pwd=req.getParameter("passWord");
        String Box=req.getParameter("void");
        PrintWriter out=resp.getWriter();
        out.println("제목 : "+title);
        out.println("내용 : "+content);
        out.println("비밀번호 : "+pwd);
        out.println("빈상자 : "+Box);
        // 순수 servlet으로 코딩을하면 화면을 담당하는문구와 얻어오는 문구가 같이 담기게된다.
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
