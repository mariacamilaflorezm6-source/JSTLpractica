<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jspf/conexion.jspf" %>
<c:set var="titulo" value="Ejercicio 9 - Base de datos"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>

<main class="lienzo">

    <a class="miga" href="${pageContext.request.contextPath}/index.jsp">&larr; Volver a los ejercicios</a>
    <h1 class="titulo-pagina"><span>Ejercicio 9</span> - Guardar en la base de datos</h1>

    <div class="resultado">
        <div class="caja">
            <h2 class="caja-titulo">Datos personales</h2>
            <c:if test="${not empty param.error}">
                <div class="aviso aviso-error">
                    <span>&#9888;</span>
                    <span><c:out value="${param.error}"/></span>
                </div>
            </c:if>
            <form role="form" name="persona" action="Procesarinfo.jsp" method="POST">
                <div class="campo">
                    <label for="nombres">Ingrese su nombre:</label>
                    <input type="text" id="nombres" name="nombres" placeholder="Nombre" required>
                </div>
                <div class="campo">
                    <label for="apellido1">Ingrese su primer apellido:</label>
                    <input type="text" id="apellido1" name="apellido1" placeholder="Primer apellido" required>
                </div>
                <div class="campo">
                    <label for="apellido2">Ingrese su segundo apellido:</label>
                    <input type="text" id="apellido2" name="apellido2" placeholder="Segundo apellido" required>
                </div>
                <div class="campo">
                    <label for="edad">Ingrese su edad:</label>
                    <input type="number" min="1" max="120" step="1" id="edad" name="edad" placeholder="Edad" required>
                </div>
                <div class="acciones">
                    <input type="submit" class="boton" value="Guardar y ver tabla">
                </div>
            </form>
        </div>
    </div>
</main>

<%@ include file="/WEB-INF/jspf/pie.jspf" %>
