package com.motor.controller.web;

import com.motor.model.Order;
import com.motor.model.OrderDetail;
import com.motor.model.OrderStatus;
import com.motor.model.User;
import com.motor.service.IOrderDetailService;
import com.motor.service.IOrderService;
import com.motor.service.IOrderStatusService;
import com.motor.service.IUserService;
import com.motor.service.impl.OrderDetailServiceImpl;
import com.motor.service.impl.OrderServiceImpl;
import com.motor.service.impl.OrderStatusServiceImpl;
import com.motor.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/home/orderview")
public class OrderviewController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    IOrderService orderService = new OrderServiceImpl();
    IOrderDetailService orderDetailService = new OrderDetailServiceImpl();
    IOrderStatusService orderStatusService = new OrderStatusServiceImpl();
    IUserService userService = new UserServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // thiết lập tiếng Việt
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");

        List<OrderStatus> orderStatuses = orderStatusService.findAll();
        Order order = new Order();
        User seller = new User();

        List<OrderDetail> ordersDetails = null;
        long total = 0;


        String action = req.getParameter("action");
        String ac = action == null ? "" : action;
        if (ac.equals("view")) {
            int id = Integer.parseInt(req.getParameter("id"));
            order = orderService.findOne(id);
            seller = userService.findOne(order.getSeller_id());

            ordersDetails = orderDetailService.findAllByOrderId(order.getId());
            for (OrderDetail od : ordersDetails) {
                total +=  od.getQuantity() * (long)od.getUnit_price();
            }
        } else if (ac.equals("")) {
            resp.sendRedirect("orders");
            return;
        }
        req.setAttribute("seller", seller);
        req.setAttribute("ordersDetails", ordersDetails);
        req.setAttribute("total", total);
        req.setAttribute("order", order);
        req.setAttribute("orderStatuses", orderStatuses);
        req.setAttribute("active", 9);
        req.getRequestDispatcher("/views/web/orderview.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // thiết lập tiếng Việt
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");

        int id = Integer.parseInt(req.getParameter("id"));
        int status = Integer.parseInt(req.getParameter("status"));
        Order o = new Order();
        o.setStatus(status);
        o.setId(id);
        orderService.updateStatus(o);
        resp.sendRedirect("orders?msg=" + "Change order status successfully");
    }
}
