package com.motor.security;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class SecurityConfig {

    public static final String ROLE_ADMIN = "ADMIN";
    public static final String ROLE_SELLER = "SELLER";
    public static final String ROLE_CUSTOMER = "CUSTOMER";

    // String: Role
    // List<String>: urlPatterns.
    private static final Map<String, List<String>> mapConfig = new HashMap<>();

    static {
        init();
    }

    private static void init() {

        // Cấu hình cho vai trò "ADMIN".
        List<String> adminUrlPattern = new ArrayList<>();
        adminUrlPattern.add("/admin");
        adminUrlPattern.add("/admin/dashboard");
        adminUrlPattern.add("/admin/users");
        adminUrlPattern.add("/admin/useredit");
        adminUrlPattern.add("/admin/brands");
        adminUrlPattern.add("/admin/categories");
        adminUrlPattern.add("/admin/payments");
        adminUrlPattern.add("/admin/products");
        adminUrlPattern.add("/admin/productedit");
        adminUrlPattern.add("/admin/orders");
        adminUrlPattern.add("/admin/orderview");


        mapConfig.put(ROLE_ADMIN, adminUrlPattern);

        // Cấu hình cho vai trò "SELLER".
        List<String> sellerUrlPattern = new ArrayList<>();
        sellerUrlPattern.add("/seller/dashboard");
        sellerUrlPattern.add("/seller/order");
        sellerUrlPattern.add("/seller/orderview");
        sellerUrlPattern.add("/seller/product");
        sellerUrlPattern.add("/seller/productedit");
        sellerUrlPattern.add("/seller/userinfo");
        mapConfig.put(ROLE_SELLER, sellerUrlPattern);

        // Cấu hình cho vai trò "CUSTOMER".
        List<String> cusUrlPattern = new ArrayList<>();
        cusUrlPattern.add("/home/checkout");
        cusUrlPattern.add("/home/userinfo");
        cusUrlPattern.add("/home/oder");
        mapConfig.put(ROLE_CUSTOMER, cusUrlPattern);
    }

    public static Set<String> getAllAppRoles() {
        return mapConfig.keySet();
    }

    public static List<String> getUrlPatternsForRole(String role) {
        return mapConfig.get(role);
    }

}
