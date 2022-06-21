package com.motor.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebFilter("/*")
public class XFrameOptionsFilter implements Filter{


    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse,
                         FilterChain filterChain)
            throws IOException, ServletException {
        // TODO Auto-generated method stub

        HttpServletResponse response = (HttpServletResponse) servletResponse;
        response.addHeader("X-Frame-Options", "DENY");
        response.addHeader("X-Content-Type-Options", "nosniff");
        response.addHeader("Set-Cookie","HttpOnly");
        response.addHeader("Content-Security-Policy","default-src 'self'");
        Cookie cookie = new Cookie("SameSite","strict");
        Cookie cookie1 = new Cookie("key","value");
        Cookie cookie2 = new Cookie("SameSite","lax");
        response.addCookie(cookie);
        response.addCookie(cookie1);
        response.addCookie(cookie2);
        filterChain.doFilter(servletRequest, response);
    }

    @Override
    public void init(FilterConfig filterConfig) {
    }

    @Override
    public void destroy() {
    }

}