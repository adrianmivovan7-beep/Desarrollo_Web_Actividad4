package org.cuatrovientos.curso;

public class Cursos {
    private int id;
    private String nombre;
    private String descripcion;
    private int participantes;
    private int plazas;
    private String categoria;

    public Cursos(int id, String nombre, String descripcion, int participantes, int plazas, String categoria) {
        this.id = id;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.participantes = participantes;
        this.plazas = plazas;
        this.categoria = categoria;
    }

    public int getId() { return id; }
    public String getNombre() { return nombre; }
    public String getDescripcion() { return descripcion; }
    public int getParticipantes() { return participantes; }
    public int getPlazas() { return plazas; }
    public String getCategoria() { return categoria; }

    public int getPlazasDisponibles() {
        return plazas - participantes;
    }
}