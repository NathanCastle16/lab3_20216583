<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
    <title>Formulario empleado</title>
</head>
<body>

<h1>
    <c:choose>
        <c:when test="${employee != null}">Editar empleado</c:when>
        <c:otherwise>Crear empleado</c:otherwise>
    </c:choose>
</h1>

<form action="${pageContext.request.contextPath}/employee/save" method="post">

    <c:if test="${employee != null}">
        <input type="hidden" name="employeeId" value="${employee.employeeId}">
    </c:if>

    <label>Nombre completo:</label>
    <input type="text" name="fullNameEmployee"
           value="${employee.fullNameEmployee}" required>
    <br>

    <label>Email:</label>
    <input type="email" name="email"
           value="${employee.email}" required>
    <br>

    <label>Teléfono:</label>
    <input type="text" name="phoneNumber"
           value="${employee.phoneNumber}">
    <br>

    <label>Fecha de contratación:</label>
    <input type="date" name="hireDate"
           value="${employee.hireDate}" required>
    <br>

    <label>Puesto:</label>
    <select name="jobId" required>
        <c:forEach var="job" items="${listaJobs}">
            <option value="${job.jobId}"
                <c:if test="${employee != null && employee.jobId == job.jobId}">
                    selected
                </c:if>>
                ${job.jobTitle}
            </option>
        </c:forEach>
    </select>
    <br>

    <label>Salario:</label>
    <input type="number" step="0.01" name="salary"
           value="${employee.salary}" required>
    <br>

    <label>Comisión:</label>
    <input type="number" step="0.01" name="commissionPct"
           value="${employee.commissionPct}">
    <br>

    <label>ID Manager:</label>
    <input type="number" name="managerId"
           value="${employee.managerId}">
    <br>

    <label>ID Departamento:</label>
    <input type="number" name="departmentId"
           value="${employee.departmentId}">
    <br>

    <button type="submit">Guardar</button>
    <a href="${pageContext.request.contextPath}/home">Cancelar</a>

</form>

</body>
</html>
