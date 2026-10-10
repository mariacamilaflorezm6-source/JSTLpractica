<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%><c:set var="titulo" value="Ejercicio 8 - Resultado"/>
<c:if test="${empty param.delimText}">
<c:redirect url="index.jsp">
<c:param name="error" value="Debe llenar el campo Texto con delimitador"/>
</c:redirect>
</c:if>
<c:if test="${empty param.delim}">
<c:redirect url="index.jsp">
<c:param name="error" value="Debe llenar el campo Delimitador"/>
</c:redirect>
</c:if>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>

<main class="lienzo">

    <a class="miga" href="index.jsp">&larr; Volver al formulario</a>

    <div class="resultado">
        <div class="caja">
            <div class="sello">&#10003;</div>
            <h1 class="titulo-pagina text-center" style="margin-top:0"><span>Tus tokens</span></h1>
            <div class="pastillas" style="justify-content:center">
                <c:forTokens items="${param.delimText}" delims="${param.delim}" var="myToken">
                    <span class="pastilla pastilla-dato"><c:out value="${myToken}"/></span>
                </c:forTokens>
            </div>
            <div class="acciones" style="justify-content:center">
                <a class="boton" href="index.jsp">Separar otro texto</a>
            </div>
        </div>
    </div>

</main>

<%@ include file="/WEB-INF/jspf/pie.jspf" %>
