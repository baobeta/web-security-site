package com.motor.controller.admin;

import com.motor.model.Category;
import com.motor.service.ICategoryService;
import com.motor.service.impl.CategoryServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet("/admin/categories")
public class CategoryController extends HttpServlet {
    ICategoryService categoryService = new CategoryServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // thiết lập tiếng Việt
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");
        List<Category> categories = categoryService.findAll();

        String action = req.getParameter("action");
        String ac = action == null ? "" : action;
        if (ac.equals("delete")) {
            int id = Integer.parseInt(req.getParameter("id"));
            categoryService.delete(id);
            resp.sendRedirect("categories");
            return;
        }
        req.setAttribute("categories", categories);
        req.setAttribute("active", 5);
        req.getRequestDispatcher("/views/admin/category.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // thiết lập tiếng Việt
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");

        int id = 0;
        String id_str = req.getParameter("id");
        String name = req.getParameter("name");
        if (id_str != null)
            categoryService.update(new Category(Integer.parseInt(id_str), name));
        else
            categoryService.insert(new Category(id, name));


        resp.sendRedirect("categories");
    }
}
