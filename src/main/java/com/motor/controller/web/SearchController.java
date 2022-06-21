package com.motor.controller.web;

import com.motor.model.Category;
import com.motor.model.Product;
import com.motor.service.*;
import com.motor.service.impl.*;
import org.apache.commons.text.StringEscapeUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet(urlPatterns = {"/home/search"})
public class SearchController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    IProductService productService = new ProductServiceImpl();
    ICategoryService categoryService = new CategoryServiceImpl();

    public void doAction(HttpServletRequest request, HttpServletResponse response) throws IOException {
        // get the CSRF cookie
        String csrfCookie = null;
        for (Cookie cookie : request.getCookies()) {
            if (cookie.getName().equals("csrf")) {
                csrfCookie = cookie.getValue();
            }
        }

        // get the CSRF form field
        String csrfField = request.getParameter("csrf");

        // validate CSRF
        if (csrfCookie == null || csrfField == null || !csrfCookie.equals(csrfField)) {
            try {
                response.sendError(401);
            } catch (IOException e) {
                // ...
            }
            response.sendRedirect("/error");
            return;
        }

        // ...
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        doAction(req,resp);
        // thiết lập tiếng Việt
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");
        String txt1 = req.getParameter("txt");
        resp.setHeader("X-Content-Type-Options", "nosniff");
//        String txt1 = StringEscapeUtils.escapeHtml4(req.getParameter("txt"));

        List<Category> listCate= categoryService.findAll();

        List<Product> list3 = productService.getTop3Product();
        List<Product> listS = productService.searchByProductName(txt1);
        req.setAttribute("list3", list3);
        req.setAttribute("txtS", txt1);
        req.setAttribute("listAll", listS);
        req.setAttribute("AllCate",listCate);

        req.getRequestDispatcher("/views/web/search.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // TODO Auto-generated method stub
        super.doPost(req, resp);
    }
}

