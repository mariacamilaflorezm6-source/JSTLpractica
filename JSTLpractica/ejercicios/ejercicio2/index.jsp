<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%><c:set var="titulo" value="Ejercicio 2 - Datos de un formulario"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>

<main class="lienzo">

    <a class="miga" href="${pageContext.request.contextPath}/index.jsp">&larr; Volver a los ejercicios</a>
    <h1 class="titulo-pagina"><span>Ejercicio 2</span> - Datos de un formulario</h1>

    <div class="resultado">
        <div class="caja">
            <h2 class="caja-titulo">Formulario</h2>
            <c:if test="${not empty param.error}">
                <div class="aviso aviso-error">
                    <span>&#9888;</span>
                    <span><c:out value="${param.error}"/></span>
                </div>
            </c:if>
            <form role="form" name="persona" action="ProcesarC.jsp" method="POST">
                <div class="campo">
                    <label for="nombre">Ingrese su nombre:</label>
                    <input type="text" id="nombre" name="nombre" placeholder="Nombre" required>
                </div>
                <div class="campo">
                    <label for="apellido1">Ingrese su primer apellido:</label>
                    <input type="text" id="apellido1" name="apellido1" placeholder="Primer apellido" required>
                </div>
                <div class="campo">
                    <label for="apellido2">Ingrese su segundo apellido:</label>
                    <input type="text" id="apellido2" name="apellido2" placeholder="Segundo apellido">
                </div>
                <div class="acciones">
                    <input type="submit" class="boton" value="Enviar datos">
                </div>
            </form>
        </div>
    </div>
</main>

<%@ include file="/WEB-INF/jspf/pie.jspf" %>
