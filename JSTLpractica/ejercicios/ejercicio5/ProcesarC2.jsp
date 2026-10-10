<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%><c:set var="titulo" value="Ejercicio 5 - Resultado"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>

<main class="lienzo">

    <a class="miga" href="index.jsp">&larr; Volver al formulario</a>

    <div class="resultado">
        <div class="caja">
            <div class="sello">&#63;</div>
            <h1 class="titulo-pagina text-center" style="margin-top:0"><span>Resultado</span></h1>

            <div class="aviso aviso-info" style="justify-content:center">
                <c:choose>
                    <c:when test="${param.lenguaje == 'Java'}">
                        <span>El rey de los lenguajes orientados a objetos</span>
                    </c:when>
                    <c:when test="${param.lenguaje == 'C++'}">
                        <span>Ideal para aprender</span>
                    </c:when>
                    <c:when test="${param.lenguaje == 'Perl'}">
                        <span>Lenguaje de scripting muy potente</span>
                    </c:when>
                    <c:otherwise>
                        <span>No se selecciono ninguno</span>
                    </c:otherwise>
                </c:choose>
            </div>

            <div class="acciones" style="justify-content:center">
                <a class="boton" href="index.jsp">Elegir otro lenguaje</a>
            </div>
        </div>
    </div>

</main>

<%@ include file="/WEB-INF/jspf/pie.jspf" %>
