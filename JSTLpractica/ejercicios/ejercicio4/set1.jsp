<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%><c:set var="titulo" value="Uso de c:set"/>
<jsp:useBean id="persona" class="java.util.HashMap" scope="page"/>

<c:set var="saludo" value="Hola, este texto se guardo con c:set"/>
<c:set var="total" value="${10 * 4 + 2}"/>
<c:set var="mensaje">Este valor viene del cuerpo de la etiqueta</c:set>
<c:set var="colorRequest" value="azul" scope="request"/>
<c:set var="colorSession" value="verde" scope="session"/>
<c:set target="${persona}" property="nombre" value="Maria Camila"/>
<c:set target="${persona}" property="apellido" value="Florez Martinez"/>

<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>

<main class="lienzo">

    <a class="miga" href="index.jsp">&larr; Volver al formulario</a>
    <h1 class="titulo-pagina"><span>Uso de c:set</span> en sus cuatro formas</h1>

    <div class="caja">
        <div class="table-responsive">
            <table class="tabla">
                <thead>
                    <tr>
                        <th style="width:60px">#</th>
                        <th style="width:190px">Atributos</th>
                        <th style="width:270px">Codigo</th>
                        <th>Resultado</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>var, value</td>
                        <td><code>&lt;c:set var="saludo" value="Hola..."/&gt;</code></td>
                        <td><strong><c:out value="${saludo}"/></strong></td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>var, value (expresion)</td>
                        <td><code>&lt;c:set var="total" value="&#36;{10 * 4 + 2}"/&gt;</code></td>
                        <td><strong><c:out value="${total}"/></strong></td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>var, cuerpo de la etiqueta</td>
                        <td><code>&lt;c:set var="mensaje"&gt;Texto...&lt;/c:set&gt;</code></td>
                        <td><strong><c:out value="${mensaje}"/></strong></td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>var, value, scope</td>
                        <td>
                            <code>&lt;c:set var="colorRequest" value="azul" scope="request"/&gt;</code><br>
                            <code>&lt;c:set var="colorSession" value="verde" scope="session"/&gt;</code>
                        </td>
                        <td>
                            <span class="pastilla">request</span> <c:out value="${requestScope.colorRequest}"/><br>
                            <span class="pastilla">session</span> <c:out value="${sessionScope.colorSession}"/>
                        </td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>target, property, value</td>
                        <td>
                            <code>&lt;c:set target="&#36;{persona}" property="nombre" value="Maria Camila"/&gt;</code><br>
                            <code>&lt;c:set target="&#36;{persona}" property="apellido" value="Florez Martinez"/&gt;</code>
                        </td>
                        <td><strong><c:out value="${persona.nombre} ${persona.apellido}"/></strong></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="acciones" style="justify-content:center">
            <a class="boton" href="index.jsp">Volver al formulario</a>
        </div>
    </div>

</main>

<%@ include file="/WEB-INF/jspf/pie.jspf" %>
