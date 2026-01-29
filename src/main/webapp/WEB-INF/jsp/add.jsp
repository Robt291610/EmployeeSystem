<%@include file="common/header.jsp"%>

<%@include file="common/nav.jsp"%>

<div class="container">
    <div class="text-center" style="margin: 30px">
        <h3>Add Employee</h3>
    </div>
    <form>
        <div class="mb-3">
            <label for="name" class="form-label">Email address</label>
            <input type="text" class="form-control" id="name" required>
        </div>
        <div class="mb-3">
            <label for="department" class="form-label">department</label>
            <input type="text" class="form-control" id="department">
        </div>
        <div class="mb-3">
            <label for="salary" class="form-label">salary</label>
            <input type="text" class="form-control" id="salary">
        </div>
        <div class="text-center">
            <button type="submit" class="btn btn-warning btn-sm me-3">Add</button>
            <a href="/employee" class="btn btn-danger btn-sm">Turn back</a>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>

<%@include file="common/footer.jsp"%>