package com.motor.controller.admin;


import com.motor.model.Role;
import com.motor.model.User;
import com.motor.service.IRoleService;
import com.motor.service.IUserService;
import com.motor.service.impl.RoleServiceImpl;
import com.motor.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/admin/useredit")
public class UserEditController extends HttpServlet {
    IUserService userService = new UserServiceImpl();
    IRoleService roleService = new RoleServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // thiết lập tiếng Việt
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");


        List<Role> roles = roleService.findAll();
        User user = new User();

        String action = req.getParameter("action");
        String ac = action == null ? "" : action;

        if (ac.equals("edit")) {
            int id = Integer.parseInt(req.getParameter("id"));
            user = userService.findOne(id);
        }
        req.setAttribute("action", action);
        req.setAttribute("user", user);
        req.setAttribute("roles", roles);
        req.setAttribute("active", 3);
        req.getRequestDispatcher("/views/admin/user_edit.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // thiết lập tiếng Việt
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");

        String action = req.getParameter("action");

        int role = Integer.parseInt(req.getParameter("role"));
        int id = Integer.parseInt(req.getParameter("id"));

        String fullname = req.getParameter("fullname");
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String mail = req.getParameter("mail");
        String phone = req.getParameter("phone");
        String image = req.getParameter("image");

        User user = new User(id, username, password, fullname, mail, phone, role, image);

//        System.out.println(user);
        String msg;

        if (action.equals("edit")) {
            userService.update(user);
            msg = "Update user successfully";
        } else {
            userService.insert(user);
            msg = "Add user successfully";
        }
        resp.sendRedirect("users?msg=" + msg);

    }
}
