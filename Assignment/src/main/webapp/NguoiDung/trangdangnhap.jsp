<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="pageTitle" value="Đăng Nhập"/>
<jsp:include page="Layout/header.jsp"/>

<div class="row justify-content-center">
    <div class="col-md-5">
        <div class="card shadow">
            <div class="card-header bg-primary text-white text-center">
                <h3 class="mb-0">LOGIN</h3>
            </div>
            <div class="card-body">
                <form action="${pageContext.request.contextPath}/login" method="post">
                    <c:if test="${not empty requestScope.error}">
                        <div class="alert alert-danger">${requestScope.error}</div>
                    </c:if>
                    <c:if test="${not empty requestScope.success}">
                        <div class="alert alert-success">${requestScope.success}</div>
                    </c:if>

                    <div class="form-group">
                        <label for="username">USERNAME?</label>
                        <input type="text" class="form-control" id="username" name="username" required value="${cookie.user.value}" placeholder="Tên đăng nhập">
                    </div>
                    <div class="form-group">
                        <label for="password">PASSWORD?</label>
                        <input type="password" class="form-control" id="password" name="password" required value="${cookie.pass.value}" placeholder="Mật khẩu">
                    </div>

                    <div class="form-group form-check">
                        <input type="checkbox" class="form-check-input" id="remember" name="remember" ${not empty cookie.user ? 'checked' : ''}>
                        <label class="form-check-label" for="remember">REMEMBER ME?</label>
                    </div>

                    <button type="submit" class="btn btn-danger btn-block btn-lg mt-4" style="background-color: #f07f2a; border: none;">Login</button>

                    <div class="mt-3 text-center">
                        <a href="${pageContext.request.contextPath}/forgot-password" class="card-link">Forgot Password?</a> |
                        <a href="${pageContext.request.contextPath}/registration" class="card-link">Registration</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<jsp:include page="Layout/footer.jsp"/>