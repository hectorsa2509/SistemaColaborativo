<%-- 
    Document   : DenunciarAlumno
    Created on : 19/11/2018, 12:28:39 PM
    Author     : jrivera
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<jsp:include page='headerProfesores.jsp'>
    <jsp:param name="title" value="Denuncia alumno"/>
</jsp:include>
<div class="box1">
    <h3 class="section-heading">Tus alumnos: </h3>
    <p><i>Da click en el alumno para denunciarlo</i></p><br>
    <c:forEach items="${alumnoLista}" var="item">
        <pre>
             <li><a href="${pageContext.request.contextPath}/profesor/denunciarPP?id=${item.getPk_id_usuario()}"> ${item.getNombreC()} </a></li>
        </pre>
    </c:forEach>
</div>
<%@include file='footer.jsp'%>
