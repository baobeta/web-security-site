package com.motor.controller.web;

import com.motor.model.Product;
import com.motor.service.IProductService;
import com.motor.service.impl.ProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;


@WebServlet(urlPatterns = {"/home/load"})
public class LoadMoreController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    IProductService productService = new ProductServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // thiết lập tiếng Việt
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");

        //tam thoi load ra 3 san pham truoc

        String amount = req.getParameter("exits");
        int iamount = Integer.parseInt(amount);
        List<Product> list = productService.getNext3Product(iamount);


        PrintWriter out = resp.getWriter();
        for (Product o : list) {
            out.println("<div class=\"product col-md-4 col-sm-6 col-xs-12\" name=\"product\">\n" +
                    "                <div class=\"product-item\">\n" +
                    "                  <div class=\"pi-img-wrapper\">\n" +
                    "                    <img src=\""+o.getImage()+"\" width=\"200\" height=\"120 \" alt=\\"+o.getName()+"\">\n" +
                    "                    <div>\n" +
                    "                      <a href=\""+o.getImage()+"\" class=\"btn btn-default fancybox-button\">Zoom</a>\n" +
                    "                      <a href=\"/home/product?pid="+o.getId()+"\" class=\"btn btn-default fancybox-fast-view\">View</a>\n" +
                    "                    </div>\n" +
                    "                  </div>\n" +
                    "                  <h3><a href=\"/home/product?pid="+o.getId()+"\">"+o.getName()+"</a></h3>\n" +
                    "                  <div class=\"pi-price\">"+o.getPrice()+" VNĐ</div>\n" +
                    "                </div>\n" +
                    "              </div>");
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // TODO Auto-generated method stub
        super.doPost(req, resp);
    }
}

