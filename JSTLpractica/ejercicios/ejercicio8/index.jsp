<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%><c:set var="titulo" value="Ejercicio 8 - Separar texto (tokens)"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>

<main class="lienzo">

    <a class="miga" href="${pageContext.request.contextPath}/index.jsp">&larr; Volver a los ejercicios</a>
    <h1 class="titulo-pagina"><span>Ejercicio 8</span> - Separar texto (tokens)</h1>

    <div class="resultado">
        <div class="caja">
            <h2 class="caja-titulo">Formulario</h2>
            <c:if test="${not empty param.error}">
                <div class="aviso aviso-error">
                    <span>&#9888;</span>
                    <span><c:out value="${param.error}"/></span>
                </div>
            </c:if>
            <form role="form" name="tokens" action="ResultTokens.jsp" method="POST">
                <div class="campo">
                    <label for="delimText">Ingrese el texto a separar:</label>
                    <input type="text" id="delimText" name="delimText" placeholder="Ej: pera,manzana,uva" required>
                </div>
                <div class="campo">
                    <label for="delim">Ingrese los delimitadores:</label>
                    <input type="text" id="delim" name="delim" placeholder="Ej: ," required>
                </div>
                <div class="acciones">
                    <input type="submit" class="boton" value="Separar">
                </div>
            </form>
        </div>
    </div>
</main>

<%@ include file="/WEB-INF/jspf/pie.jspf" %>
