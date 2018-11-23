<%-- 
    Document   : denunciaProfesor
    Created on : 19/11/2018, 03:03:12 PM
    Author     : jrivera
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page='headerProfesores.jsp'>
    <jsp:param name="title" value="Denuncia profesor"/>
</jsp:include>
<div algin="center">
    <div class="mdl-cell mdl-cell--3-col mdl-cell--4-col-tablet mdl-cell--4-col-phone mdl-card mdl-shadow--3dp center-block" style="width:500px">
        <div class="mdl-card__title" style="background-color:#66b04f;" >
            <h4 class="mdl-card__title-text" style='color:white;'>Realiza tu denuncia</h4>
        </div>
        <div class="mdl-card__supporting-text">
            <span class="mdl-typography--font-light mdl-typography--subhead">
                Estas a punto de denunciar a un usuario, recuerda que tu explicación será revisada
                por la Administración del sitio, así que se lo más claro posible con tu
                denuncia, la denuncia es innamovible, una vez realizada, y de proceder, 
                la persona denunciada recibirá su denuncia correspondiente, si ha acumulado
                3 denuncias, y han sido aprobadas, el denunciado será dado de baja del sitio,
                el usuario ya no tendrá alguna relación de asesorado contigo.
            </span>
        </div>
        <form method="POST" enctype="multipart/form-data" action="${pageContext.request.contextPath}/alumno/realizaDenunciaA">
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                <input class="mdl-textfield__input" type="text" id="costo" value="${nombreDenunciado}" readonly>
                <label class="mdl-textfield__label" >Profesor</label>
            </div>
            <input type="hidden" id ="ida" value="${idDenunciado}">
            <div class = "mdl-textfield mdl-js-textfield">
                <label class="mdl-textfield__label">Explicanos tu situación: </label>
                <textarea class="mdl-textfield_input" id ="exp" >
                </textarea>
            </div>
            <div class="mdl-card__actions" style="padding-bottom:30px;">
                <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" style="background-color:#66b04f;width:70%;">
                    Denunciar
                </button>
            </div>
        </form>
    </div>
</div>
<%@include file='footer.jsp'%>
