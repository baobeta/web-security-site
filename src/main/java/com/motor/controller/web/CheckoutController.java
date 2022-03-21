package com.motor.controller.web;


import com.motor.model.*;
import com.motor.service.*;
import com.motor.service.impl.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;


@WebServlet(urlPatterns = {"/home/checkout"})
public class CheckoutController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    IProductService productService = new ProductServiceImpl();
    IOrderService orderService = new OrderServiceImpl();
    IOrderDetailService orderServiceDetail = new OrderDetailServiceImpl();
    ICategoryService categoryService = new CategoryServiceImpl();
    IUserService userService = new UserServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // thiết lập tiếng Việt
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");


        String txt1 = req.getParameter("txt");


        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("loginedUser");


        User userInfo = userService.findOne((user.getId()));
        req.setAttribute("user", userInfo);
        List<Category> listCate= categoryService.findAll();

        List<Product> list3 = productService.getTop3Product();
        List<Product> listS = productService.searchByProductName(txt1);
        req.setAttribute("list3", list3);
        req.setAttribute("txtS", txt1);
        req.setAttribute("listAll", listS);
        req.setAttribute("AllCate",listCate);


        req.getRequestDispatcher("/views/web/checkout.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // thiết lập tiếng Việt
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");

        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("loginedUser");

        int id = 22;

        String phone = req.getParameter("phone");
        String address = req.getParameter("address");
        String receiver = req.getParameter("receiver");
        int pay = Integer.parseInt(req.getParameter("pay"));
        int status =1;

        Date now = new Date();
        Timestamp date = new Timestamp(now.getTime());

        int uid = user.getId();

        Order oder = new Order(id, uid, 2, date,
                phone, address, receiver, pay, status);

        orderService.insert(oder);

        int oid =(int) orderService.getLastId();



        OrderDetail detail = new OrderDetail(1,1, 80000000, 2,oid);
        orderServiceDetail.insert(detail);



        resp.sendRedirect("/home/order");


    }

}

