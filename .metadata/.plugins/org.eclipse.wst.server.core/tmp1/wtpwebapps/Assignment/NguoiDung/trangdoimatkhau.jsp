<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="pageTitle" value="Đổi mật khẩu"/>
<jsp:include page="Layout/header.jsp"/>

<div class="row justify-content-center">
    <div class="col-md-8">
        <div class="card shadow">
            <div class="card-header bg-warning text-dark text-center">
                <h3 class="mb-0">CHANGE PASSWORD [cite: 727]</h3>
            </div>
            <div class="card-body">
                <form action="${pageContext.request.contextPath}/change-password" method="post">
                    <c:if test="${not empty requestScope.error}">
                        <div class="alert alert-danger">${requestScope.error}</div>
                    </c:if>
                    <c:if test="${not empty requestScope.success}">
                        <div class="alert alert-success">${requestScope.success}</div>
                    </c:if>

                    <div class="row">
                        <div class="col-md-6 form-group">
                            <label for="username">USERNAME?</label>
                            <input type="text" class="form-control" id="username" name="username" readonly value="${sessionScope.user.username}">
                        </div>
                        <div class="col-md-6 form-group">
                            <label for="currentPassword">CURRENT PASSWORD?</label>
                            <input type="password" class="form-control" id="currentPassword" name="currentPassword" required>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6 form-group">
                            <label for="newPassword">NEW PASSWORD?</label>
                            <input type="password" class="form-control" id="newPassword" name="newPassword" required>
                        </div>
                        <div class="col-md-6 form-group">
                            <label for="confirmNewPassword">CONFIRM NEW PASSWORD?</label>
                            <input type="password" class="form-control" id="confirmNewPassword" name="confirmNewPassword" required>
                        </div>
                    </div>

                    <button type="submit" class="btn btn-warning btn-lg float-right mt-3" style="background-color: #f07f2a; border: none;">Change</button>
                </form>
            </div>
        </div>
    </div>
</div>

<jsp:include page="Layout/footer.jsp"/>