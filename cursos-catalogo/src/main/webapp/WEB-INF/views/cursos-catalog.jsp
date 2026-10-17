<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
        <!DOCTYPE html>
        <html lang="es">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Catálogo de cursos</title>
            <link rel="stylesheet" href="${pageContext.request.contextPath}/css/estilos.css">
        </head>

        <body>
            <%@ include file="header.jsp" %>
                <main class="contenedor">
                    <h2>Catálogo de cursos</h2>
                    <c:choose>
                        <c:when test="${not empty cursos}">
                            <div class="tabla-contenedor">
                                <table>
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Curso</th>
                                            <th>Descripción</th>
                                            <th>Categoría</th>
                                            <th>Participantes</th>
                                            <th>Plazas</th>
                                            <th>Disponibilidad</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="curso" items="${cursos}">
                                            <tr>
                                                <td>
                                                    <c:out value="${curso.id}" />
                                                </td>
                                                <td>
                                                    <c:out value="${curso.nombre}" />
                                                </td>
                                                <td>
                                                    <c:out value="${curso.descripcion}" />
                                                </td>
                                                <td>
                                                    <c:out value="${curso.categoria}" />
                                                </td>
                                                <td>
                                                    <c:out value="${curso.participantes}" />
                                                </td>
                                                <td>
                                                    <c:out value="${curso.plazas}" />
                                                </td>
                                                <td>
                                                    <c:if test="${curso.plazasDisponibles > 0}">
                                                        <span class="disponible">Plazas disponibles:
                                                            <c:out value="${curso.plazasDisponibles}" />
                                                        </span>
                                                    </c:if>
                                                    <c:if test="${curso.plazasDisponibles <= 0}">
                                                        <span class="completo">Completo</span>
                                                    </c:if>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </c:when>
                        <c:otherwise>
                            <p class="aviso">No hay cursos disponibles en este momento.</p>
                        </c:otherwise>
                    </c:choose>
                </main>
                <%@ include file="footer.jsp" %>
        </body>

        </html>