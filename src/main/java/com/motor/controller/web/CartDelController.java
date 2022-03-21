package com.motor.controller.web;

import com.motor.model.CartItems;
import com.motor.model.Product;
import com.motor.service.IProductService;
import com.motor.service.impl.ProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Map;


@WebServlet(urlPatterns = {"/home/cart-remove"})
public class CartDelController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    IProductService productService = new ProductServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // thiết lập tiếng Việt
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");



        String pId = req.getParameter("pId");


        Product product = productService.findOne(Integer.parseInt(pId));

        CartItems cartItem = new CartItems();


        cartItem.setPid(product);

        HttpSession httpSession = req.getSession();
        Object obj = httpSession.getAttribute("cart");// Doc tu Session ra

        if (obj != null) {
            @SuppressWarnings("unchecked")
            Map<Integer, CartItems> map = (Map<Integer, CartItems>) obj; // ep ve kieu cua no
            // Xoa san pham trong map
            map.remove(Integer.parseInt(pId));
            // Cap nhat lai Session
            httpSession.setAttribute("cart", map);
        }
        resp.sendRedirect(req.getContextPath() + "/home/cart");
    }


}

