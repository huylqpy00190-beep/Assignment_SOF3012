<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="pageTitle" value="Cập Nhật Tài Khoản"/>
<jsp:include page="Layout/header.jsp"/>

<div class="row justify-content-center">
    <div class="col-md-8">
        <div class="card shadow">
            <div class="card-header bg-success text-white text-center">
                <h3 class="mb-0">EDIT PROFILE</h3>
            </div>
            <div class="card-body">
                <form action="${pageContext.request.contextPath}/edit-profile" method="post">
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
                            <label for="password">PASSWORD?</label>
                            <input type="password" class="form-control" id="password" name="password" required value="${sessionScope.user.password}">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6 form-group">
                            <label for="fullname">FULLNAME?</label>
                            <input type="text" class="form-control" id="fullname" name="fullname" required value="${sessionScope.user.fullname}">
                        </div>
                        <div class="col-md-6 form-group">
                            <label for="email">EMAIL ADDRESS?</label>
                            <input type="email" class="form-control" id="email" name="email" required value="${sessionScope.user.email}">
                        </div>
                    </div>

                    <button type="submit" class="btn btn-warning btn-lg float-right mt-3" style="background-color: #f07f2a; border: none;">Update</button>
                </form>
            </div>
        </div>
    </div>
</div>

<jsp:include page="Layout/footer.jsp"/>