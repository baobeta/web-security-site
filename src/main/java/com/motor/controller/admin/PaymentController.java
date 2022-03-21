package com.motor.controller.admin;


import com.motor.model.Payment;
import com.motor.service.IPaymentService;
import com.motor.service.impl.PaymentServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet("/admin/payments")
public class PaymentController extends HttpServlet {
    IPaymentService paymentService = new PaymentServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // thiết lập tiếng Việt
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");
        List<Payment> payments = paymentService.findAll();

        String action = req.getParameter("action");
        String ac = action == null ? "" : action;
        if (ac.equals("delete")) {
            int id = Integer.parseInt(req.getParameter("id"));
            paymentService.delete(id);
            resp.sendRedirect("payments");
            return;
        }
        req.setAttribute("payments", payments);
        req.setAttribute("active", 6);
        req.getRequestDispatcher("/views/admin/payment.jsp").forward(req, resp);
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
            paymentService.update(new Payment(Integer.parseInt(id_str), name));
        else
            paymentService.insert(new Payment(id, name));


        resp.sendRedirect("payments");
    }
}
