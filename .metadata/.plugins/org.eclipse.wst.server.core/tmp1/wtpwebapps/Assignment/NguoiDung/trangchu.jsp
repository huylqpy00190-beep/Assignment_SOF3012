<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="pageTitle" value="Trang Chủ"/>
<jsp:include page="Layout/header.jsp"/>
<%@ page isELIgnored="false" %>
<div class="row">
    <div class="col-12">
        <h2 class="mb-4">Tiểu Phẩm Hot (Xếp theo Views)</h2>
    </div>

    <c:forEach var="video" items="${videos}" begin="0" end="5">
        <div class="col-md-4 mb-4">
            <div class="card h-100 shadow-sm">
                <a href="${pageContext.request.contextPath}/detail?id=${video.id}" class="text-decoration-none">
                    <img src="${video.poster}" class="card-img-top" alt="${video.title}" style="height: 200px; object-fit: cover;">
                </a>
                <div class="card-body">
                    <h5 class="card-title text-truncate">
                        <a href="${pageContext.request.contextPath}/detail?id=${video.id}" class="text-dark">${video.title}</a>
                    </h5>
                    <div class="d-flex justify-content-between mt-3">
                        <a href="${empty sessionScope.user ? pageContext.request.contextPath.concat('/login') : pageContext.request.contextPath.concat('/like?id=').concat(video.id)}" class="btn btn-outline-danger btn-sm">
                            <i class="fas fa-heart"></i> Like
                        </a>
                        <a href="${empty sessionScope.user ? pageContext.request.contextPath.concat('/login') : pageContext.request.contextPath.concat('/share?id=').concat(video.id)}" class="btn btn-outline-info btn-sm">
                            <i class="fas fa-share-alt"></i> Share
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </c:forEach>
</div>

<nav aria-label="Page navigation" class="mt-4">
    <ul class="pagination justify-content-center">
        <li class="page-item ${param.page == 1 ? 'disabled' : ''}">
            <a class="page-link" href="${pageContext.request.contextPath}/home?page=1" title="Trang Äáº§u [|<]">[<]</a>
        </li>
        <li class="page-item ${param.page == 1 ? 'disabled' : ''}">
            <a class="page-link" href="${pageContext.request.contextPath}/home?page=${param.page - 1}" title="Trang trÆ°á»c [<<]">&lt;&lt;</a>
        </li>
        <li class="page-item disabled"><span class="page-link">${param.page}</span></li>
        <li class="page-item ${param.page == totalPages ? 'disabled' : ''}">
            <a class="page-link" href="${pageContext.request.contextPath}/home?page=${param.page + 1}" title="Trang sau [>>]">&gt;&gt;</a>
        </li>
        <li class="page-item ${param.page == totalPages ? 'disabled' : ''}">
            <a class="page-link" href="${pageContext.request.contextPath}/home?page=${totalPages}" title="Trang cuá»i [>|]">[>]</a>
        </li>
    </ul>
</nav>

<jsp:include page="Layout/footer.jsp"/>