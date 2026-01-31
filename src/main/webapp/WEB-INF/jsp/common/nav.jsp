<%--application url
this will generate the url in a dynamic form
application.contextPath comes from application.properties--%>
<c:set var="initUrl">
    <c:url value="${application.contextPath}/" />
</c:set>

<%--you will set the path in the value itself--%>

<c:set var="addUrl">
    <c:url value="${application.contextPath}/add"/>
</c:set>



<div class="container">
    <nav class="navbar navbar-expand-lg bg-primary" data-bs-theme="light">
        <div class="container-fluid">
            <a class="navbar-brand" href="${initUrl}">Employee System</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-link active" aria-current="page" href="${initUrl}">Home</a>
                    <a class="nav-link" href="${addUrl}">Add employee</a>
                </div>
            </div>
        </div>
    </nav>
</div>

