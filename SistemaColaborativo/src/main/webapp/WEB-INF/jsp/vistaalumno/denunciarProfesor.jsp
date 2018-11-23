
<%-- 
    Document   : denunciarProfesor
    Created on : 19/11/2018, 03:03:27 PM
    Author     : jrivera
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<jsp:include page='headerProfesores.jsp'>
    <jsp:param name="title" value="Denuncia alumno"/>
</jsp:include>
<div class="box1">
    <h3 class="section-heading">Tus profesores: </h3>
    <p><i>Da click en el profesor para denunciarlo</i></p><br>
    <c:forEach items="${profesorLista}" var="item">
        <pre>
             <li><a href="${pageContext.request.contextPath}/alumno/denunciarAA?id=${item.getPk_id_usuario()}"> ${item.getNombreC()} </a></li>
        </pre>
    </c:forEach>
</div>
<%@include file='footer.jsp'%>
