<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%><c:set var="titulo" value="Ejercicio 7 - Recorrer un rango"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>

<main class="lienzo">

    <a class="miga" href="${pageContext.request.contextPath}/index.jsp">&larr; Volver a los ejercicios</a>
    <h1 class="titulo-pagina"><span>Ejercicio 7</span> - Recorrer un rango</h1>

    <div class="resultado">
        <div class="caja">
            <h2 class="caja-titulo">Numeros del 1 al 24 de dos en dos</h2>
            <div class="lista-datos">
                <c:forEach begin="1" end="24" step="2" var="hour" varStatus="status">
                    <div class="dato">
                        <span class="rotulo">
                            <c:if test="${status.first}">
                                <span class="pastilla">Estoy en uno</span>
                            </c:if>
                            <c:if test="${status.count == 5}">
                                <span class="pastilla">Estoy en la iteracion numero 5</span>
                            </c:if>
                        </span>
                        <span class="valor"><c:out value="${hour}"/></span>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</main>

<%@ include file="/WEB-INF/jspf/pie.jspf" %>
