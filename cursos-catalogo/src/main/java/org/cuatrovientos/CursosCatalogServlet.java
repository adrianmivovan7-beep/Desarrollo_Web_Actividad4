package org.cuatrovientos;

import java.io.IOException;
import java.util.List;

import org.cuatrovientos.curso.Cursos;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/cursos")
public class CursosCatalogServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Cursos> cursos = List.of(
                new Cursos(1, "Desarrollo web", "Creación de páginas y aplicaciones web.", 18, 25, "Tecnología"),
                new Cursos(2, "Java desde cero", "Fundamentos de programación con Java.", 20, 20, "Programación"),
                new Cursos(3, "Bases de datos", "Diseño y consultas con SQL.", 12, 20, "Tecnología"),
                new Cursos(4, "Ciberseguridad básica", "Buenas prácticas para proteger sistemas.", 9, 15, "Seguridad"),
                new Cursos(5, "Diseño de interfaces", "Principios de diseño y experiencia de usuario.", 15, 18,
                        "Diseño"));

        request.setAttribute("cursos", cursos);

        request.getRequestDispatcher("/WEB-INF/views/cursos-catalog.jsp")
                .forward(request, response);
    }
}
