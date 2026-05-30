<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
    <title>Empleados</title>
</head>
<body>

<h1>Lista de empleados</h1>

<a href="${pageContext.request.contextPath}/employee/create">
    Crear empleado
</a>

<table border="1">
    <thead>
    <tr>
        <th>ID</th>
        <th>Nombre completo</th>
        <th>Email</th>
        <th>Teléfono</th>
        <th>Fecha contratación</th>
        <th>Puesto</th>
        <th>Salario</th>
        <th>Acciones</th>
    </tr>
    </thead>

    <tbody>
    <c:forEach var="emp" items="${listaEmployees}">
        <tr>
            <td>${emp.employeeId}</td>
            <td>${emp.fullNameEmployee}</td>
            <td>${emp.email}</td>
            <td>${emp.phoneNumber}</td>
            <td>${emp.hireDate}</td>
            <td>${emp.jobTitle}</td>
            <td>${emp.salary}</td>
            <td>
                <a href="${pageContext.request.contextPath}/employee/edit?id=${emp.employeeId}">
                    Editar
                </a>

                <form action="${pageContext.request.contextPath}/employee/delete" method="post" style="display:inline;">
                    <input type="hidden" name="id" value="${emp.employeeId}">
                    <button type="submit">Borrar</button>
                </form>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>
