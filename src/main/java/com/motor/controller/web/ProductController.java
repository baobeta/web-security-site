package com.motor.controller.web;

import com.motor.model.Brand;
import com.motor.model.Category;
import com.motor.model.Product;
import com.motor.model.User;
import com.motor.service.*;
import com.motor.service.impl.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet(urlPatterns = {"/home/product"})
public class ProductController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    IProductService productService = new ProductServiceImpl();
    ICategoryService categoryService = new CategoryServiceImpl();
    IBrandService brandService = new BrandServiceImpl();
    IUserService userService = new UserServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // thiết lập tiếng Việt
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");

        String pid = req.getParameter("pid");

//        int productId = Integer.parseInt(pid);


        Product product = productService.findOneById(pid);
        User seller = userService.findOne(product.getSeller_id());
        List<Product> listTopProducts = productService.findAll();
        List<Product> list3 = productService.getTop3Product();
        List<Category> listCate= categoryService.findAll();

        Category cate = categoryService.findOne(product.getCategory_id());

        Brand brand = brandService.findOne(product.getBrand_id());
        req.setAttribute("list3", list3);

        req.setAttribute("Topproducts", listTopProducts);
        req.setAttribute("detail", product);
        req.setAttribute("seller", seller);
        req.setAttribute("AllCate",listCate);
        req.setAttribute("cate",cate);
        req.setAttribute("brand",brand);

        req.getRequestDispatcher("/views/web/product.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // TODO Auto-generated method stub
        super.doPost(req, resp);
    }
}

