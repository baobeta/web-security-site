package com.motor.controller.login;

import com.motor.model.User;
import com.motor.service.IUserService;
import com.motor.service.impl.UserServiceImpl;
import com.motor.util.EmailUtils;
import com.motor.util.PasswordGeneratorUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/forget")
public class ForgetPasswordController extends HttpServlet {
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
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doAction(req, resp);
        String email = req.getParameter("email");

        User existingEmail = userService.findOneWithEmail(email);
        String errorMessage;
        if (existingEmail == null){
            errorMessage = "Email does not match any accounts";
        }else{
            errorMessage = "Please check your email for a new password";
            String newPassword = PasswordGeneratorUtils.generate(20);
            existingEmail.setPassword(newPassword);
            userService.updatePassword(existingEmail);
            EmailUtils mailSender = new EmailUtils(email);
            mailSender.sendMail("Please change your password after login.\n" +
                    "Your password is: " + newPassword  );
        }
        resp.sendRedirect("login?errorMessage=" + errorMessage);
    }
}
