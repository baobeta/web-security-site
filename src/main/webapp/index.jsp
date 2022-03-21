<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:choose>
    <c:when test="${sessionScope.loginedUser.role_id == 1}">
        <c:redirect url="/admin/dashboard"/>
    </c:when>
    <c:when test="${sessionScope.loginedUser.role_id == 2}">
        <c:redirect url="/seller/dashboard"/>
    </c:when>
    <c:otherwise>
        <c:redirect url="/home"/>
    </c:otherwise>
</c:choose>