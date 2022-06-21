package com.motor.controller.login;

import com.motor.model.User;
import com.motor.service.IUserService;
import com.motor.service.impl.UserServiceImpl;
import com.motor.util.AppUtils;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/login")
public class LoginController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    IUserService userService = new UserServiceImpl();

    public LoginController() {
        super();
    }
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
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doAction(request, response);
        response.setHeader("X-Content-Type-Options", "nosniff");
        RequestDispatcher dispatcher //
                = request.getServletContext().getRequestDispatcher("/decorators/login.jsp");

        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doAction(request, response);
        response.setHeader("X-Content-Type-Options", "nosniff");

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        User userAccount = userService.login(username, password);

        if (userAccount == null) {
            String errorMessage = "Invalid Username or Password";
            request.setAttribute("errorMessage", errorMessage);
            RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/decorators/login.jsp");
            dispatcher.forward(request, response);
            return;
        }

        AppUtils.storeLoginedUser(request.getSession(), userAccount);

        int redirectId = -1;
        try {
            redirectId = Integer.parseInt(request.getParameter("redirectId"));
        } catch (Exception e) {
            System.out.println();
        }
        String requestUri = AppUtils.getRedirectAfterLoginUrl(request.getSession(), redirectId);
        if (requestUri != null) {
            response.sendRedirect(requestUri);
        } else {
            response.sendRedirect("index.jsp");
        }
    }
}
