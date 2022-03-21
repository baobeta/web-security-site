package com.motor.controller.web;

import com.motor.model.Category;
import com.motor.model.Product;
import com.motor.service.*;
import com.motor.service.impl.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet(urlPatterns = {"/home/category"})
public class CategoryController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    IProductService productService = new ProductServiceImpl();
    ICategoryService categoryService = new CategoryServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // thiết lập tiếng Việt
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");

        String cid = req.getParameter("cid");

        int cId = Integer.parseInt(cid);



        Category cate = categoryService.findOne(cId);

        List<Product> productByCate = productService.findAllByCategory(cId);
        List<Category> listCate= categoryService.findAll();

        List<Product> list3 = productService.getTop3Product();

        req.setAttribute("list3", list3);

        req.setAttribute("productCate", productByCate);
        req.setAttribute("AllCate",listCate);
        req.setAttribute("cid",cId);
        req.setAttribute("cate",cate);

        req.getRequestDispatcher("/views/web/category.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // TODO Auto-generated method stub
        super.doPost(req, resp);
    }
}

