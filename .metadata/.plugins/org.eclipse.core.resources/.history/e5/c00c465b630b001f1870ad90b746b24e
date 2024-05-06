<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Aplicacion de gestion de usuarios</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
 integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
    <header>
        <nav class="navbar-expand-md navbar-dark" style="background-color: tomato;">
            <div>
                <a href="#" class="navbar-brand">Gestion de usuarios</a>
            </div>
            <ul class="navbar-nav">
                <li><a href="<%=request.getContextPath()%>/list" class="nav-link">Usuarios</a></li>
            </ul>
        </nav>
    </header>
    <br>
    <div class="container col-md-5">
        <div class="card">
            <div class="card-body">
                <c:if test="${usuario != null}">
                    <form action="update" method="post">
                </c:if>
                <c:if test="${usuario == null}">
                    <form action="insert" method="post">
                </c:if>

                <caption>
                    <h2>
                        <c:if test="${usuario != null}">
                            Editar usuario
                        </c:if>
                        <c:if test="${usuario == null}">
                            Crear usuario
                        </c:if>
                    </h2>
                </caption>

                <c:if test="${usuario != null}">
                    <input type="hidden" name="id" value="${usuario.id}"/>
                </c:if>

                <fieldset class="form-group">
                    <label>Nombre de usuario</label> 
                    <c:if test="${usuario != null}">
                        <input type="text" value="${usuario.nombre}" class="form-control" name="nombre" required>
                    </c:if>
                    <c:if test="${usuario == null}">
                        <input type="text" class="form-control" name="nombre" required>
                    </c:if>
                </fieldset>

                <fieldset class="form-group">
                    <label>Email del usuario</label> 
                    <c:if test="${usuario != null}">
                        <input type="text" value="${usuario.email}" class="form-control" name="email" >
                    </c:if>
                    <c:if test="${usuario == null}">
                        <input type="text" class="form-control" name="email" >
                    </c:if>
                </fieldset>
                
                <fieldset class="form-group">
                    <label>Pais de usuario</label> 
                    <c:if test="${usuario != null}">
                        <input type="text" value="${usuario.pais}" class="form-control" name="pais" >
                    </c:if>
                    <c:if test="${usuario == null}">
                        <input type="text" class="form-control" name="pais" >
                    </c:if>
                </fieldset>

                <button type="submit" class="btn btn-success">Enviar</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
