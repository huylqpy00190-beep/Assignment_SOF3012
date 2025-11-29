<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="pageTitle" value="Quên Mật Khẩu"/>
<jsp:include page="Layout/header.jsp"/>

<div class="row justify-content-center">
    <div class="col-md-5">
        <div class="card shadow">
            <div class="card-header bg-info text-white text-center">
                <h3 class="mb-0">FORGOT PASSWORD [cite: 717]</h3>
            </div>
            <div class="card-body">
                <form action="${pageContext.request.contextPath}/forgot-password" method="post">
                    <c:if test="${not empty requestScope.error}">
                        <div class="alert alert-danger">${requestScope.error}</div>
                    </c:if>
                    <c:if test="${not empty requestScope.success}">
                        <div class="alert alert-success">${requestScope.success}</div>
                    </c:if>

                    <div class="form-group">
                        <label for="username">USERNAME?</label>
                        <input type="text" class="form-control" id="username" name="username" required value="${param.username}">
                    </div>
                    <div class="form-group">
                        <label for="email">EMAIL?</label>
                        <input type="email" class="form-control" id="email" name="email" required value="${param.email}">
                    </div>

                    <button type="submit" class="btn btn-info btn-lg float-right mt-3">Retrieve</button>
                </form>
            </div>
        </div>
    </div>
</div>

<jsp:include page="Layout/footer.jsp"/>