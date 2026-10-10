<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%><c:set var="titulo" value="Ejercicio 6 - Manejar errores"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>

<main class="lienzo">

    <a class="miga" href="${pageContext.request.contextPath}/index.jsp">&larr; Volver a los ejercicios</a>
    <h1 class="titulo-pagina"><span>Ejercicio 6</span> - Manejar errores</h1>

    <c:set var="valor" value="0"/>
    <c:catch var="error01">
        <c:set var="valor" value="${param.parametro + 0}"/>
    </c:catch>

    <div class="resultado">
        <div class="caja">
            <h2 class="caja-titulo">Prueba los tres botones</h2>

            <c:if test="${not empty error01}">
                <div class="aviso aviso-error">
                    <span>&#9888;</span>
                    <span>Se produjo un error: <c:out value="${error01}"/></span>
                </div>
            </c:if>
            <c:if test="${empty error01 and valor ne 0}">
                <div class="aviso aviso-ok">
                    <span>&#10003;</span>
                    <span>Valor recibido: <strong><c:out value="${valor}"/></strong></span>
                </div>
            </c:if>
            <c:if test="${empty error01 and valor eq 0}">
                <div class="aviso aviso-info">
                    <span>&#8505;</span>
                    <span>No se envio ningun parametro, asi que la variable se queda en 0.</span>
                </div>
            </c:if>

            <div class="acciones">
                <form role="form">
                    <input type="hidden" name="parametro" value="prueba">
                    <input type="submit" class="boton" value="Enviar 'prueba'">
                </form>
                <form role="form">
                    <input type="hidden" name="parametro" value="1234">
                    <input type="submit" class="boton" value="Enviar '1234'">
                </form>
                <form role="form">
                    <input type="submit" class="boton boton-sec" value="No enviar el parametro">
                </form>
            </div>
        </div>
    </div>
</main>

<%@ include file="/WEB-INF/jspf/pie.jspf" %>
