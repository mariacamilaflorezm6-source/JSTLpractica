<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%><c:set var="titulo" value="Ejercicio 3 - Variables y ambitos"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>

<main class="lienzo">

    <a class="miga" href="${pageContext.request.contextPath}/index.jsp">&larr; Volver a los ejercicios</a>
    <h1 class="titulo-pagina"><span>Ejercicio 3</span> - Variables y ambitos</h1>

    <div class="resultado">
        <div class="caja">
            <h2 class="caja-titulo">Formulario</h2>
            <c:if test="${not empty param.error}">
                <div class="aviso aviso-error">
                    <span>&#9888;</span>
                    <span><c:out value="${param.error}"/></span>
                </div>
            </c:if>
            <form role="form" name="persona" action="set1.jsp" method="POST">
                <div class="campo">
                    <label for="nombre">Ingrese su nombre:</label>
                    <input type="text" id="nombre" name="nombre" placeholder="Nombre" required>
                </div>
                <div class="campo">
                    <label for="apellido">Ingrese su apellido:</label>
                    <input type="text" id="apellido" name="apellido" placeholder="Apellido" required>
                </div>
                <div class="acciones">
                    <input type="submit" class="boton" value="Guardar con c:set">
                </div>
            </form>
        </div>
    </div>
</main>

<%@ include file="/WEB-INF/jspf/pie.jspf" %>
