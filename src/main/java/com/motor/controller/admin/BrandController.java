package com.motor.controller.admin;

import com.motor.model.Brand;
import com.motor.service.IBrandService;
import com.motor.service.impl.BrandServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet("/admin/brands")
public class BrandController extends HttpServlet {
    IBrandService brandService = new BrandServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // thiết lập tiếng Việt
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");
        List<Brand> brands = brandService.findAll();

        String action = req.getParameter("action");
        String ac = action == null ? "" : action;
        if (ac.equals("delete")) {
            int id = Integer.parseInt(req.getParameter("id"));
            brandService.delete(id);
            resp.sendRedirect("brands");
            return;
        }
        req.setAttribute("brands", brands);
        req.setAttribute("active", 4);
        req.getRequestDispatcher("/views/admin/brand.jsp").forward(req, resp);
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
            brandService.update(new Brand(Integer.parseInt(id_str), name));
        else
            brandService.insert(new Brand(id, name));


        resp.sendRedirect("brands");
    }
}
