package com.motor.controller.web;

import com.motor.model.CartItems;
import com.motor.model.Product;
import com.motor.service.*;
import com.motor.service.impl.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;


@WebServlet(urlPatterns = {"/home/cart-add"})
public class CartAddController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    IProductService productService = new ProductServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // thiết lập tiếng Việt
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");




        String pId = req.getParameter("pId");
        String quantity = req.getParameter("quantity");

        Product product = productService.findOne(Integer.parseInt(pId));

        CartItems cartItem = new CartItems();
        cartItem.setQuantity(Integer.parseInt(quantity));
        cartItem.setUnitprice(product.getPrice());
        cartItem.setPid(product);

        HttpSession httpSession = req.getSession();
        Object obj = httpSession.getAttribute("cart");

        if (obj == null) {
            Map<Integer, CartItems> map = new HashMap<Integer, CartItems>();
            map.put(cartItem.getPid().getId(), cartItem);
            httpSession.setAttribute("cart", map);
        } else {
            Map<Integer, CartItems> map = extracted(obj);
            CartItems existedCartItem = map.get(Integer.valueOf(pId));
            if (existedCartItem == null) {
                map.put(product.getId(), cartItem);
            } else {
                existedCartItem.setQuantity(existedCartItem.getQuantity() + Integer.parseInt(quantity));
            }

            httpSession.setAttribute("cart", map);
        }

        resp.sendRedirect(req.getContextPath() + "/home/cart");
    }

    @SuppressWarnings("unchecked")
    private Map<Integer, CartItems> extracted(Object obj) {
        return (Map<Integer, CartItems>) obj;
    }
}

