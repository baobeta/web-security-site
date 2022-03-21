package com.motor.controller.seller;

import com.google.gson.Gson;
import com.motor.model.Product;
import com.motor.model.User;
import com.motor.service.IOrderService;
import com.motor.service.IProductService;
import com.motor.service.impl.OrderServiceImpl;
import com.motor.service.impl.ProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;


@WebServlet(urlPatterns = {"/seller/dashboard"})
public class DashboardController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    IProductService productService = new ProductServiceImpl();
    IOrderService orderService = new OrderServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // thiết lập tiếng Việt
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");

        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("loginedUser");

        List<Product> topSelling = productService.findTopSellingOfSeller(user.getId());
        int totalOrder = orderService.countBySeller(user.getId());
        long orderMoneyTotal = orderService.orderMoneyTotalBySeller(user.getId());
        long orderMoneyAverages = orderService.orderMoneyAveragesBySeller(user.getId());
        List<User> users = orderService.findUserBySeller(user.getId());

        int year = Calendar.getInstance().get(Calendar.YEAR);
        Gson gson = new Gson();
        List<Long> revenue = new ArrayList<>();
        List<Integer> orderCount = new ArrayList<>();
        for (int month = 1; month <= 12; month++) {
            revenue.add(orderService.getRevenueBySellerInMonth(user.getId(), month, year));
            orderCount.add(orderService.countOrderBySellerInMonth(user.getId(), month, year));
        }

        req.setAttribute("orderCount", gson.toJson(orderCount));
        req.setAttribute("revenue", gson.toJson(revenue));
        req.setAttribute("users", users);
        req.setAttribute("orderMoneyAverages", orderMoneyAverages);
        req.setAttribute("orderMoneyTotal", orderMoneyTotal);
        req.setAttribute("totalOrder", totalOrder);
        req.setAttribute("topSelling", topSelling);
        req.setAttribute("active", 1);
        req.getRequestDispatcher("/views/seller/dashboard.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // TODO Auto-generated method stub
        super.doPost(req, resp);
    }
}

