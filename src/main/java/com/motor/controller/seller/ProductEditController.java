package com.motor.controller.seller;

import com.motor.model.Brand;
import com.motor.model.Category;
import com.motor.model.Product;
import com.motor.model.User;
import com.motor.service.IBrandService;
import com.motor.service.ICategoryService;
import com.motor.service.IProductService;
import com.motor.service.impl.BrandServiceImpl;
import com.motor.service.impl.CategoryServiceImpl;
import com.motor.service.impl.ProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/seller/productedit"})
public class ProductEditController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    //	@Inject
    IProductService productService = new ProductServiceImpl();
    ICategoryService categoryService = new CategoryServiceImpl();
    IBrandService brandService = new BrandServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // thiết lập tiếng Việt
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");

        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("loginedUser");

        Product product = new Product();


        String action = req.getParameter("action");
        String ac = action == null ? "" : action;

        if (ac.equals("edit")) {
            int id = Integer.parseInt(req.getParameter("id"));
            product = productService.findOne(id);
            if (product.getSeller_id() != user.getId())
                product = new Product();
        }

        List<Category> categories = categoryService.findAll();
        List<Brand> brands = brandService.findAll();

        req.setAttribute("action", action);
        req.setAttribute("product", product);
        req.setAttribute("categories", categories);
        req.setAttribute("brands", brands);
        req.setAttribute("active", 5);
        req.getRequestDispatcher("/views/seller/product_edit.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // thiết lập tiếng Việt
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");

        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("loginedUser");

        String action = req.getParameter("action");
        String name = req.getParameter("name");
        String description = req.getParameter("description");
        int price = Integer.parseInt(req.getParameter("price"));
        int amount = Integer.parseInt(req.getParameter("amount"));
        int categories = Integer.parseInt(req.getParameter("categories"));
        int brand = Integer.parseInt(req.getParameter("brand"));
        int status = Integer.parseInt(req.getParameter("status"));
        int id = Integer.parseInt(req.getParameter("id"));
        int seller_id = user.getId();
        String image = req.getParameter("image");
        Product product = new Product(id, name, price, description,
                image, categories, seller_id, amount, status, brand);

        String msg;

        if (action.equals("edit")) {
            productService.update(product);
            msg = "Update product successfully";
        } else {
            productService.insert(product);
            msg = "Add product successfully";
        }
        resp.sendRedirect("product?msg=" + msg);


    }
}
