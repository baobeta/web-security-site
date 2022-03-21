package com.motor.controller.web;

import com.motor.model.Category;
import com.motor.model.Order;
import com.motor.model.User;
import com.motor.service.ICategoryService;
import com.motor.service.IOrderService;
import com.motor.service.impl.CategoryServiceImpl;
import com.motor.service.impl.OrderServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/home/order"})
public class OrderController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    IOrderService orderService = new OrderServiceImpl();
    ICategoryService categoryService = new CategoryServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // thiết lập tiếng Việt
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");

        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("loginedUser");
        List<Order> orders = orderService.findAllByUser(user.getId());
        List<Category> listCate= categoryService.findAll();
        req.setAttribute("AllCate",listCate);
        req.setAttribute("orders", orders);
        req.setAttribute("active", 2);
        req.getRequestDispatcher("/views/web/order.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // TODO Auto-generated method stub
        super.doPost(req, resp);
    }
}
