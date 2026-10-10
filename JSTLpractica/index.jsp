<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%><c:set var="titulo" value="Portada"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>

<main class="lienzo">

    <section class="hero">
        <h1>Ejercicios</h1>
    </section>

    <section class="rejilla">

        <a class="tarjeta" href="#ejercicio1" data-bs-toggle="modal">
            <div class="tarjeta-cuerpo">
                <h3>Ejercicio 1</h3>
            </div>
        </a>

        <a class="tarjeta" href="ejercicios/ejercicio2/index.jsp">
            <div class="tarjeta-cuerpo">
                <h3>Ejercicio 2</h3>
            </div>
        </a>

        <a class="tarjeta" href="ejercicios/ejercicio3/index.jsp">
            <div class="tarjeta-cuerpo">
                <h3>Ejercicio 3</h3>
            </div>
        </a>

        <a class="tarjeta" href="ejercicios/ejercicio4/index.jsp">
            <div class="tarjeta-cuerpo">
                <h3>Ejercicio 4</h3>
            </div>
        </a>

        <a class="tarjeta" href="ejercicios/ejercicio5/index.jsp">
            <div class="tarjeta-cuerpo">
                <h3>Ejercicio 5</h3>
            </div>
        </a>

        <a class="tarjeta" href="ejercicios/ejercicio6/index.jsp">
            <div class="tarjeta-cuerpo">
                <h3>Ejercicio 6</h3>
            </div>
        </a>

        <a class="tarjeta" href="ejercicios/ejercicio7/index.jsp">
            <div class="tarjeta-cuerpo">
                <h3>Ejercicio 7</h3>
            </div>
        </a>

        <a class="tarjeta" href="ejercicios/ejercicio8/index.jsp">
            <div class="tarjeta-cuerpo">
                <h3>Ejercicio 8</h3>
            </div>
        </a>

        <a class="tarjeta" href="ejercicios/ejercicio9/index.jsp">
            <div class="tarjeta-cuerpo">
                <h3>Ejercicio 9</h3>
            </div>
        </a>

    </section>
</main>

<div class="modal fade" id="ejercicio1" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Ejercicio 1</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Cerrar"></button>
            </div>
            <div class="modal-body">
                <ul class="lista-limpia">
                    <li>Cadena de caracteres: <strong><c:out value="1+2+3"/></strong></li>
                    <li>Suma de valores: <strong><c:out value="${1+2+3}"/></strong></li>
                </ul>
            </div>
        </div>
    </div>
</div>

<%@ include file="/WEB-INF/jspf/pie.jspf" %>
