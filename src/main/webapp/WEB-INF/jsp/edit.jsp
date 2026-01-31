<%@include file="common/header.jsp"%>

<%@include file="common/nav.jsp"%>

<div class="container">
    <div class="text-center" style="margin: 30px">
        <h3>Edit Employee</h3>
    </div>
    <form action="${editUrl}" modelAttribute="employeeForm" method="post">
        <imput type="hidden" name="id" value="${employee.id}"/>
        <div class="mb-3">
            <label for="name" class="form-label">Name</label>
            <input type="text" class="form-control" id="name" name="name" required value="${employee.name}">
        </div>
        <div class="mb-3">
            <label for="epartment" class="form-label">Department</label>
            <input type="text" class="form-control" id="department" name="department" value="${employee.department}">
        </div>
        <div class="mb-3">
            <label for="salary" class="form-label">Salary</label>
            <input type="text" class="form-control" id="salary" name="salary" value="${employee.salary}">
        </div>
        <div class="text-center">
            <button type="submit" class="btn btn-warning btn-sm me-3">Edit</button>
            <a href="${initUrl}" class="btn btn-danger btn-sm">Turn back</a>
        </div>
<%--        <button type="submit" class="btn btn-primary">Submit</button>--%>
    </form>
</div>

<%@include file="common/footer.jsp"%>