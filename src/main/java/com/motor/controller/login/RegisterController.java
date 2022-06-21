package com.motor.controller.login;

import com.motor.model.User;
import com.motor.service.IUserService;
import com.motor.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;



@WebServlet("/register")
public class RegisterController extends HttpServlet {
    IUserService userService = new UserServiceImpl();
    public void doAction(HttpServletRequest request, HttpServletResponse response) {
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
            return;
        }

        // ...
    }


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // thiết lập tiếng Việt
        doAction(req, resp);
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");
        resp.setHeader("X-Content-Type-Options", "nosniff");
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
