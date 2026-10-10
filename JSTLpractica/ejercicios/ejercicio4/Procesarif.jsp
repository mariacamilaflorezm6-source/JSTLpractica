<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%><c:set var="titulo" value="Ejercicio 4 - Resultado"/>
<c:if test="${empty param.nombre}">
<c:redirect url="index.jsp">
<c:param name="error" value="Nombre obligatorio"/>
</c:redirect>
</c:if>
<c:if test="${empty param.apellido1}">
<c:redirect url="index.jsp">
<c:param name="error" value="Primer apellido obligatorio"/>
</c:redirect>
</c:if>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>

<main class="lienzo">

    <a class="miga" href="index.jsp">&larr; Volver al formulario</a>

    <div class="resultado">
        <div class="caja">
            <div class="sello">&#10003;</div>
            <h1 class="titulo-pagina text-center" style="margin-top:0"><span>Datos validados</span></h1>
            <div class="lista-datos">
                <div class="dato">
                    <span class="rotulo">Nombre</span>
                    <span class="valor"><c:out value="${param.nombre}"/></span>
                </div>
                <div class="dato">
                    <span class="rotulo">Primer apellido</span>
                    <span class="valor"><c:out value="${param.apellido1}"/></span>
                </div>
                <div class="dato">
                    <span class="rotulo">Segundo apellido</span>
                    <span class="valor"><c:out value="${empty param.apellido2 ? '(vacio)' : param.apellido2}"/></span>
                </div>
            </div>
            <div class="acciones" style="justify-content:center">
                <a class="boton" href="index.jsp">Escribir otros datos</a>
            </div>
        </div>
    </div>

</main>

<%@ include file="/WEB-INF/jspf/pie.jspf" %>
