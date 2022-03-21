package com.motor.controller.login;

import com.motor.model.User;
import com.motor.service.IUserService;
import com.motor.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;



@WebServlet("/register")
public class RegisterController extends HttpServlet {
    IUserService userService = new UserServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // thiết lập tiếng Việt
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");

        int role = Integer.parseInt(req.getParameter("role_id"));

        String fullname = req.getParameter("fullname");
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String mail = req.getParameter("email");
        String phone = req.getParameter("phone");
        String image = req.getParameter("image");

        User user1 = new User(-1, username, password, fullname, mail, phone, role, image);

//        System.out.println(user1);

        User existingUsername = userService.findOneWithUsername(username);
        User existingEmail = userService.findOneWithEmail(mail);
        String errorMessage;
        if (existingUsername != null) {
            errorMessage = "Username already exists";
        } else if (existingEmail != null) {
            errorMessage = "Email already exists";
        } else {
            userService.insert(user1);
            errorMessage = "Account successfully created";
        }
        resp.sendRedirect("login?errorMessage=" + errorMessage);
    }
}
