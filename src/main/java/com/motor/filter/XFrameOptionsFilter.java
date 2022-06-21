package com.motor.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
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
        response.setHeader("X-Content-Type-Options", "response.setHeader(\"Set-Cookie\", \"key=value; HttpOnly; SameSite=strict\")");
        response.setHeader("Set-Cookie", "key=value; HttpOnly; SameSite=strict");
        filterChain.doFilter(servletRequest, response);
    }

    @Override
    public void init(FilterConfig filterConfig) {
    }

    @Override
    public void destroy() {
    }

}