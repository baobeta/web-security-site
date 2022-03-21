package com.motor.controller.login;

import com.motor.model.User;
import com.motor.service.IUserService;
import com.motor.service.impl.UserServiceImpl;
import com.motor.util.EmailUtils;
import com.motor.util.PasswordGeneratorUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/forget")
public class ForgetPasswordController extends HttpServlet {
    IUserService userService = new UserServiceImpl();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
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
