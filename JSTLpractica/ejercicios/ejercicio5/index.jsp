<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%><c:set var="titulo" value="Ejercicio 5 - Condiciones multiples"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>

<main class="lienzo">

    <a class="miga" href="${pageContext.request.contextPath}/index.jsp">&larr; Volver a los ejercicios</a>
    <h1 class="titulo-pagina"><span>Ejercicio 5</span> - Condiciones multiples</h1>

    <div class="resultado">
        <div class="caja">
            <h2 class="caja-titulo">Formulario</h2>
            <form role="form" name="lenguaje" action="ProcesarC2.jsp" method="POST">
                <div class="campo">
                    <label for="lenguaje">Cual es tu lenguaje de programacion favorito?</label>
                    <select name="lenguaje" id="lenguaje">
                        <option value="">--Seleccionar un Lenguaje</option>
                        <option value="Java">Java</option>
                        <option value="C++">C++</option>
                        <option value="Perl">Perl</option>
                    </select>
                </div>
                <div class="acciones">
                    <input type="submit" class="boton" value="Enviar">
                </div>
            </form>
        </div>
    </div>
</main>

<%@ include file="/WEB-INF/jspf/pie.jspf" %>
