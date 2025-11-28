<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="video" value="${requestScope.videoDetail}"/>

<c:set var="pageTitle" value="${video.title}"/>
<jsp:include page="Layout/header.jsp"/>

<div class="row">
    <div class="col-md-8">
        <div class="embed-responsive embed-responsive-16by9 mb-3">
            <iframe class="embed-responsive-item"
                    src="https://www.youtube.com/embed/${video.youtubeId}?autoplay=1"
                    allowfullscreen></iframe>
        </div>

        <h2 class="mt-3">${video.title}</h2>
        <p>${video.description}</p>

        <div class="mt-4">
            <a href="${empty sessionScope.user ? pageContext.request.contextPath.concat('/login') : pageContext.request.contextPath.concat('/like?id=').concat(video.id)}" class="btn btn-danger mr-2">
                <i class="fas fa-heart"></i> Like
            </a>
            <a href="${empty sessionScope.user ? pageContext.request.contextPath.concat('/login') : pageContext.request.contextPath.concat('/share?id=').concat(video.id)}" class="btn btn-info">
                <i class="fas fa-share-alt"></i> Share
            </a>
        </div>
    </div>

    <div class="col-md-4">
        <h4 class="mb-3">Tiểu phẩm mà bạn đã xem</h4>
        <div class="list-group">
            <c:forEach var="historyVideo" items="${historyVideos}" end="4">
                <a href="${pageContext.request.contextPath}/detail?id=${historyVideo.id}" class="list-group-item list-group-item-action d-flex align-items-center mb-2 shadow-sm">
                    <img src="${historyVideo.poster}" alt="${historyVideo.title}" style="width: 50px; height: 50px; object-fit: cover; margin-right: 10px;">
                    <span class="text-truncate">${historyVideo.title}</span>
                </a>
            </c:forEach>
            <c:if test="${empty historyVideos}">
                <p class="text-muted">Chưa có tiểu phẩm nào được xem.</p>
            </c:if>
        </div>
    </div>
</div>

<jsp:include page="Layout/footer.jsp"/>