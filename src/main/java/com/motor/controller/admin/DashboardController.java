package com.motor.controller.admin;

import com.google.gson.Gson;
import com.motor.model.Product;
import com.motor.model.User;
import com.motor.service.IOrderService;
import com.motor.service.IProductService;
import com.motor.service.IUserService;
import com.motor.service.impl.OrderServiceImpl;
import com.motor.service.impl.ProductServiceImpl;
import com.motor.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;


@WebServlet(urlPatterns = {"/admin/dashboard"})
public class DashboardController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    IOrderService orderService = new OrderServiceImpl();
    IUserService userService = new UserServiceImpl();
    IProductService productService = new ProductServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // thiết lập tiếng Việt
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");

        int countCustomer = userService.countCustomer();
        int countSeller = userService.countSeller();
        long countOrder = orderService.countNotCancelled();
        long orderMoneyTotal = orderService.orderMoneyTotal();
        long countProduct = productService.count();
        List<User> topCustomer = orderService.findTopCustomer();
        List<User> topSeller = orderService.findTopSeller();
        List<Product> topSelling = productService.findTopSelling();

        int year = Calendar.getInstance().get(Calendar.YEAR);
        Gson gson = new Gson();
        List<Long> revenue = new ArrayList<>();
        List<Integer> orderCount = new ArrayList<>();
        for (int month = 1; month <= 12; month++) {
            revenue.add(orderService.getRevenueInMonth(month, year));
            orderCount.add(orderService.countOrderInMonth(month, year));
        }

        req.setAttribute("orderCount", gson.toJson(orderCount));
        req.setAttribute("revenue", gson.toJson(revenue));

        req.setAttribute("topSelling", topSelling);
        req.setAttribute("countProduct", countProduct);
        req.setAttribute("topSeller", topSeller);
        req.setAttribute("topCustomer", topCustomer);
        req.setAttribute("orderMoneyTotal", orderMoneyTotal);
        req.setAttribute("countOrder", countOrder);
        req.setAttribute("countCustomer", countCustomer);
        req.setAttribute("countSeller", countSeller);
        req.setAttribute("active", 1);
        req.getRequestDispatcher("/views/admin/dashboard.jsp").forward(req, resp);
    }
}

