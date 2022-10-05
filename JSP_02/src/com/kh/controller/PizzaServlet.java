package com.kh.controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "PizzaServlet", value = "/PizzaServlet")
public class PizzaServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
    public int getPrice(int pizza,int[] topping,int[] side){
        int price=0;
        switch (pizza){
            case 1:price+=5000;break;
            case 2:price+=6000; break;
            case 3:case 4:price+=7000;break;
            case 5:price+=8000;break;
        }

        for (int i = 0; i < topping.length; i++) {
            switch (topping[i]){
                case 0:break;
                case 1:price+= 1000; break;
                case 2:price+= 1600; break;
                case 3: case 4: case 5:price+= 2000; break;
                case 6:price+= 3000; break;
            }
        }

        for (int i = 0; i < side.length; i++) {
            switch (side[i]){
                case 0:break;
                case 1: price+=9000;break;
                case 2: price+=4900;break;
                case 3: price+=4000;break;
                case 4: price+=3500;break;
                case 5: price+=3000;break;
                case 6: case 7: price+=1500;break;
                case 8: price+=500;break;
                case 9: price+=300;break;
                case 10: case 11: price+=100;break;
            }
        }
        return price;
    }
    public String getPizzaString(int num){
        String pizza="";
        switch (num){
            case 1:pizza="치즈피자";break;
            case 2:pizza="콤비네이션피자";break;
            case 3:pizza="포테이토피자";break;
            case 4:pizza="고구마피자";break;
            case 5:pizza="불고기피자";break;
        }
        return pizza;
    }
    public String getToppingString(int[] topping_){
        StringBuffer topping=new StringBuffer();
        if(topping_.length==0){
            topping.append("없습니다.");
        }
        for (int i = 0; i < topping_.length; i++) {
            switch (topping_[i]){
                case 0:topping.append("없습니다.");break;
                case 1:topping.append("고구마무스");break;
                case 2:topping.append("콘크림무스");break;
                case 3:topping.append("파인애플토핑");break;
                case 4:topping.append("치즈토핑");break;
                case 5:topping.append("치즈크러스트");break;
                case 6:topping.append("치즈바이트");break;
            }
            if(i!=topping_.length-1){
                topping.append(",");
            }
        }
        return topping.toString();
    }
    protected String getSideString(int side_[]){
        StringBuffer side=new StringBuffer();
        if(side_.length==0){
            side.append("없습니다.");
        }
        for (int i = 0; i < side_.length; i++) {
            switch (side_[i]){
                case 0:side.append("없습니다.");break;
                case 1:side.append("오븐구이통닭");break;
                case 2:side.append("치킨스틱&윙");break;
                case 3:side.append("치즈오븐스파게티");break;
                case 4:side.append("새우링&웨지감자");break;
                case 5:side.append("갈릭포테이토");break;
                case 6:side.append("콜라");break;
                case 7:side.append("사이다");break;
                case 8:side.append("갈릭소스");break;
                case 9:side.append("피클");break;
                case 10:side.append("핫소스");break;
                case 11:side.append("파마산 치즈가루");break;
            }
            if(i!=side_.length-1){
                side.append(",");
            }
        }
        return side.toString();
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int pizza_=Integer.parseInt(request.getParameter("pizza"));
        String[] topping__=request.getParameterValues("topping");
        int[] topping_;
        if(topping__==null) {
            topping_=new int[1];
            topping_[0]=0;
        }else{
            topping_=new int[topping__.length];
            for (int i = 0; i < topping__.length; i++) {
                topping_[i]=Integer.parseInt(topping__[i]);
            }
        }
        String[] side__=request.getParameterValues("side");
        int[] side_;

        if(side__!=null) {
            side_ = new int[side__.length];
            for (int i = 0; i < side_.length; i++) {
                side_[i] = Integer.parseInt(side__[i]);
            }
        }else{
            side_=new int[1];
            side_[0]=0;
        }
        int price=getPrice(pizza_,topping_,side_);
        String pizza=getPizzaString(pizza_);
        String topping = getToppingString(topping_);
        String side=getSideString(side_);

        RequestDispatcher view=request.getRequestDispatcher("views/PizzaPayment.jsp");
        request.setAttribute("pizza",pizza);
        request.setAttribute("price",price);
        request.setAttribute("side",side);
        request.setAttribute("topping",topping);
        view.forward(request,response);
        view.include(request,response);
    }
}
