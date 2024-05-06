<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Aplicación de gestión de usuarios</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<style>
    body {
        background-color: #f8f9fa;
    }

    header {
        background-color: #343a40;
        color: #fff;
        padding: 15px 0;
    }

    header .navbar-brand {
        font-size: 1.5rem;
    }

    .container {
        margin-top: 20px;
    }

    .card {
        border: none;
        border-radius: 15px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    .card-body {
        padding: 30px;
    }

    h2 {
        color: tomato;
    }

    .form-group {
        margin-bottom: 20px;
    }

    label {
        font-weight: bold;
    }

    .btn-success {
        background-color: tomato;
        border-color: tomato;
    }

    .btn-success:hover {
        background-color: #ff5733;
        border-color: #ff5733;
    }
</style>
</head>
<body>
    <header>
        <nav class="navbar-expand-md navbar-dark">
            <div class="container">
                <a href="#" class="navbar-brand">Gestión de usuarios</a>
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
                    <input type="hidden" name="id" value="${usuario.id}" />
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
                        <input type="text" value="${usuario.email}" class="form-control" name="email">
                    </c:if>
                    <c:if test="${usuario == null}">
                        <input type="text" class="form-control" name="email">
                    </c:if>
                </fieldset>

                <fieldset class="form-group">
                    <label>País de usuario</label>
                    <c:if test="${usuario != null}">
                        <input type="text" value="${usuario.pais}" class="form-control" name="pais">
                    </c:if>
                    <c:if test="${usuario == null}">
                        <input type="text" class="form-control" name="pais">
                    </c:if>
                </fieldset>

                <button type="submit" class="btn btn-success">Enviar</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
