package com.motor.controller.admin;


import com.motor.model.Product;
import com.motor.service.IProductService;
import com.motor.service.impl.ProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet("/admin/products")
public class ProductController extends HttpServlet {
    IProductService productService = new ProductServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // thiết lập tiếng Việt
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");
        List<Product> products = productService.findAll();

        String action = req.getParameter("action");
        String ac = action == null ? "" : action;
        if (ac.equals("delete")) {
            int id = Integer.parseInt(req.getParameter("id"));
            productService.delete(id);
            resp.sendRedirect("products");
            return;
        }
        req.setAttribute("products", products);
        req.setAttribute("active", 7);
        req.getRequestDispatcher("/views/admin/product.jsp").forward(req, resp);
    }
}
