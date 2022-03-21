package com.motor.controller.seller;


import com.motor.model.Product;
import com.motor.model.User;
import com.motor.service.IProductService;
import com.motor.service.impl.ProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;


@WebServlet(urlPatterns = {"/seller/product"})
public class ProductController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    //    @Inject
    IProductService productService = new ProductServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // thiết lập tiếng Việt
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");

        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("loginedUser");

        String action = req.getParameter("action");
        String ac = action == null ? "" : action;
        if (ac.equals("delete")) {
            int id = Integer.parseInt(req.getParameter("id"));
            if (productService.findOne(id).getSeller_id() == user.getId())
                productService.delete(id);
            resp.sendRedirect("product?msg=" + "Delete product successfully");
            return;
        }
        List<Product> products = productService.findAllBySeller(user.getId());
        req.setAttribute("products", products);
        req.setAttribute("active", 4);
        req.getRequestDispatcher("/views/seller/product.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("post called");
    }

}

