<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jspf/conexion.jspf" %>
<c:set var="titulo" value="Ejercicio 9 - Tabla de empleados"/>
<c:if test="${empty param.nombres}">
<c:redirect url="index.jsp">
<c:param name="error" value="Debe llenar el campo Nombre"/>
</c:redirect>
</c:if>
<c:if test="${empty param.apellido1}">
<c:redirect url="index.jsp">
<c:param name="error" value="Debe llenar el campo Primer apellido"/>
</c:redirect>
</c:if>
<c:if test="${empty param.apellido2}">
<c:redirect url="index.jsp">
<c:param name="error" value="Debe llenar el campo Segundo apellido"/>
</c:redirect>
</c:if>
<c:if test="${empty param.edad}">
<c:redirect url="index.jsp">
<c:param name="error" value="Debe llenar el campo Edad"/>
</c:redirect>
</c:if>

<c:set var="nombres" value="${param.nombres}"/>
<c:set var="apellido1" value="${param.apellido1}"/>
<c:set var="apellido2" value="${param.apellido2}"/>
<c:set var="edad" value="${param.edad}"/>

<sql:update var="insertar" dataSource="${empleados}">
    insert into empleados (nombres, apellido1, apellido2, edad)
    values (?, ?, ?, CAST(? AS INTEGER))
    <sql:param value="${nombres}"/>
    <sql:param value="${apellido1}"/>
    <sql:param value="${apellido2}"/>
    <sql:param value="${edad}"/>
</sql:update>

<sql:query var="result" scope="request" dataSource="${empleados}">
    select * from empleados;
</sql:query>

<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>

<main class="lienzo">

    <a class="miga" href="index.jsp">&larr; Volver al formulario</a>
    <h1 class="titulo-pagina"><span>Tabla</span> de empleados</h1>

    <div class="caja">
        <div class="table-responsive">
            <table class="tabla">
                <thead>
                    <tr>
                        <th style="width:90px">Id</th>
                        <th>Nombre</th>
                        <th>Apellidos</th>
                        <th style="width:100px">Edad</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="fila" items="${result.rows}">
                        <tr>
                            <td><c:out value="${fila.id}"/></td>
                            <td><c:out value="${fila.nombres}"/></td>
                            <td><c:out value="${fila.apellido1}"/> <c:out value="${fila.apellido2}"/></td>
                            <td><c:out value="${fila.edad}"/></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <div class="acciones" style="justify-content:center">
            <a class="boton" href="index.jsp">Registrar otra persona</a>
        </div>
    </div>

</main>

<%@ include file="/WEB-INF/jspf/pie.jspf" %>
