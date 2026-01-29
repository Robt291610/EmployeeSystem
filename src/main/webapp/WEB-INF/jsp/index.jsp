<%@include file="common/header.jsp"%>

<%@include file="common/nav.jsp"%>

<div class="container">
    <div class="text-center" style="margin: 30px">
        <h3>Employee System</h3>
    </div>

    <div class="container">
        <table class="table table-striped table-hover table-bordered align-middle">
            <thead class="table-dark text-center">
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Name</th>
                <th scope="col">Department</th>
                <th scope="col">Salary</th>
            </tr>
            </thead>
            <tbody>
            <%--            this line will show data in the table--%>
            <%--            employees var is like that because of the controller--%>
            <c:forEach var="employee" items="${employees}">
                <tr>
                    <th scope="row">${employee.id}</th>
                    <td>${employee.name}</td>
                    <td>${employee.department}</td>
                    <td>
                        <fmt:setLocale value="en_US"/>
                        <fmt:formatNumber type="currency" value="${employee.salary}"/>
                            <%--                            ${employee.salary}--%>
                    </td>
                </tr>
            </c:forEach>

            </tbody>
        </table>
    </div>
</div>

<%@include file="common/footer.jsp"%>


