package com.motor.model;

import com.motor.service.IRoleService;
import com.motor.service.impl.RoleServiceImpl;

public class User {
    private int id;
    private String username;
    private String password;
    private String fullname;
    private String mail;
    private String phone;
    private int role_id;
    private String image;

    public User() {
    }

    public User(int id, String username, String password, String fullname, String mail, String phone, int role_id, String image) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.fullname = fullname;
        this.mail = mail;
        this.phone = phone;
        this.role_id = role_id;
        this.image = image;
    }

    IRoleService roleService = new RoleServiceImpl();

    public String getRoleName() {
        return roleService.findOne(role_id).getName();
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getfullname() {
        return fullname;
    }

    public void setfullname(String fullname) {
        this.fullname = fullname;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getRole_id() {
        return role_id;
    }

    public void setRole_id(int role_id) {
        this.role_id = role_id;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", fullname='" + fullname + '\'' +
                ", mail='" + mail + '\'' +
                ", phone='" + phone + '\'' +
                ", role_id=" + role_id +
                ", image='" + image + '\'' +
                '}';
    }
}
