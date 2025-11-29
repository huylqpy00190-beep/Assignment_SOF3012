<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="pageTitle" value="Quáº£n LÃ½ NgÆ°á»i Sá»­ Dá»¥ng"/>
<jsp:include page="Layout/header.jsp"/>

<c:set var="user" value="${requestScope.userSelected}"/>

<ul class="nav nav-tabs" id="userTab" role="tablist">
    <li class="nav-item">
        <a class="nav-link active" id="edition-tab" data-toggle="tab" href="#edition" role="tab">USER EDITION</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" id="list-tab" data-toggle="tab" href="#list" role="tab">USER LIST</a>
    </li>
</ul>

<div class="tab-content border border-top-0 p-3" id="userTabContent">

    <div class="tab-pane fade show active" id="edition" role="tabpanel">
        <form action="${pageContext.request.contextPath}/admin/users" method="post">
            <div class="row">
                <div class="col-md-6 form-group">
                    <label>USERNAME?</label>
                    <input type="text" name="username" class="form-control" required value="${user.username}" ${not empty user.username ? 'readonly' : ''}>
                </div>
                <div class="col-md-6 form-group">
                    <label>PASSWORD?</label>
                    <input type="password" name="password" class="form-control" placeholder="Để trống nếu không đổi mật khẩu">
                </div>
            </div>

            <div class="row">
                <div class="col-md-6 form-group">
                    <label>FULLNAME?</label>
                    <input type="text" name="fullname" class="form-control" required value="${user.fullname}">
                </div>
                <div class="col-md-6 form-group">
                    <label>EMAIL ADDRESS?</label>
                    <input type="email" name="email" class="form-control" required value="${user.email}">
                </div>
            </div>

            <div class="form-group d-flex align-items-center">
                <label class="mr-3">ROLE?</label>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="admin" id="adminRadio" value="true" ${user.admin ? 'checked' : ''}>
                    <label class="form-check-label" for="adminRadio">Admin</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="admin" id="userRadio" value="false" ${!user.admin ? 'checked' : ''}>
                    <label class="form-check-label" for="userRadio">User</label>
                </div>
            </div>

            <div class="btn-group mt-3 float-right">
                <button formaction="${pageContext.request.contextPath}/admin/users/update" class="btn btn-warning" ${empty user.username ? 'disabled' : ''}>Update</button>
                <button formaction="${pageContext.request.contextPath}/admin/users/delete" class="btn btn-danger" ${empty user.username ? 'disabled' : ''}>Delete</button>
                <a href="${pageContext.request.contextPath}/admin/users" class="btn btn-info">Reset</a>
            </div>
        </form>
    </div>

    <div class="tab-pane fade" id="list" role="tabpanel">
        <div class="table-responsive">
            <table class="table table-bordered table-hover">
                <thead class="thead-dark">
                    <tr>
                        <th>Username</th>
                        <th>Password</th>
                        <th>Fullname</th>
                        <th>Email</th>
                        <th>Role</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="u" items="${usersList}">
                        <tr>
                            <td>${u.username}</td>
                            <td>******</td>
                            <td>${u.fullname}</td>
                            <td>${u.email}</td>
                            <td>${u.admin ? 'Admin' : 'User'}</td>
                            <td>
                                <a href="${pageContext.request.contextPath}/admin/users?action=edit&id=${u.username}" class="btn btn-sm btn-primary">Edit</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <div class="d-flex justify-content-between align-items-center mt-3">
            <span>${totalUsers} users</span>
            <nav aria-label="Page navigation">
                <ul class="pagination pagination-sm mb-0">
                    <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/admin/users?page=1" title="Trang đầu [|<]">[<]</a></li>
                    <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/admin/users?page=${currentPage - 1}" title="Trang trước [<<]">&lt;&lt;</a></li>
                    <li class="page-item disabled"><span class="page-link">${currentPage}</span></li>
                    <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/admin/users?page=${currentPage + 1}" title="Trang sau [>>]">&gt;&gt;</a></li>
                    <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/admin/users?page=${totalPages}" title="Trang cuối [>|]">[>]</a></li>
                </ul>
            </nav>
        </div>
    </div>
</div>

<jsp:include page="Layout/footer.jsp"/>