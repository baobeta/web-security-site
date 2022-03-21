package com.motor.controller.admin;

import com.motor.model.Order;
import com.motor.model.User;
import com.motor.service.IOrderService;
import com.motor.service.impl.OrderServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/admin/orders"})
public class OrderController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    IOrderService orderService = new OrderServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // thiết lập tiếng Việt
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");

        List<Order> orders = orderService.findAll();

        req.setAttribute("orders", orders);
        req.setAttribute("active", 8);
        req.getRequestDispatcher("/views/admin/order.jsp").forward(req, resp);
    }
}
