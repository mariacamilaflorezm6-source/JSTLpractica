<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%><c:set var="titulo" value="Ejercicio 3 - Uso de c:set"/>
<c:if test="${empty param.nombre}">
<c:redirect url="index.jsp">
<c:param name="error" value="Debe llenar el campo Nombre"/>
</c:redirect>
</c:if>
<c:if test="${empty param.apellido}">
<c:redirect url="index.jsp">
<c:param name="error" value="Debe llenar el campo Apellido"/>
</c:redirect>
</c:if>

<c:set var="nombreCompleto" value="${param.nombre} ${param.apellido}"/>
<c:set var="longitudNombre" value="${param.nombre.length()}"/>
<c:set var="mensaje">Este valor viene del cuerpo de la etiqueta c:set</c:set>
<c:set var="variableDePagina" scope="page" value="Se guarda en la pagina"/>
<c:set var="variableDeRequest" scope="request" value="Se guarda en el request"/>
<c:set var="variableDeSesion" scope="session" value="Se guarda en la sesion"/>
<c:set var="variableDeAplicacion" scope="application" value="Se guarda en la aplicacion"/>

<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>

<main class="lienzo">

    <a class="miga" href="index.jsp">&larr; Volver al formulario</a>
    <h1 class="titulo-pagina"><span>Ejercicio 3</span> - Uso de c:set</h1>

    <div class="caja">
        <div class="table-responsive">
            <table class="tabla">
                <thead>
                    <tr>
                        <th style="width:60px">#</th>
                        <th style="width:230px">Atributos usados</th>
                        <th>Resultado</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>var, value</td>
                        <td><strong><c:out value="${nombreCompleto}"/></strong></td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>var, value (expresion)</td>
                        <td>El nombre tiene <strong><c:out value="${longitudNombre}"/></strong> caracteres</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>var, cuerpo de la etiqueta</td>
                        <td><c:out value="${mensaje}"/></td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>var, value, scope</td>
                        <td>
                            <span class="pastilla">page</span>
                            <c:out value="${pageScope.variableDePagina}"/><br>
                            <span class="pastilla">request</span>
                            <c:out value="${requestScope.variableDeRequest}"/><br>
                            <span class="pastilla">session</span>
                            <c:out value="${sessionScope.variableDeSesion}"/><br>
                            <span class="pastilla">application</span>
                            <c:out value="${applicationScope.variableDeAplicacion}"/>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="acciones" style="justify-content:center">
            <a class="boton" href="index.jsp">Volver al formulario</a>
        </div>
    </div>

</main>

<%@ include file="/WEB-INF/jspf/pie.jspf" %>
