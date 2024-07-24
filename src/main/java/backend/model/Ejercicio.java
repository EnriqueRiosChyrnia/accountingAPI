package backend.model;


import jakarta.persistence.*;
import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import java.time.LocalDate;
import java.time.LocalDateTime;


@Entity
@Table(name = "ejercicios")
public class Ejercicio {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    /*DEFAULT CURRENT_TIMESTAMP,
     *  CURRENT_TIMESTAMP es una función de PostgreSQL que devuelve la fecha
     *  y hora actuales del servidor. Si no se proporciona un valor
     *  explícito al insertar una nueva fila,  se usará la fecha
     * y hora actuales por defecto.
     * */
    @CreationTimestamp
    @Column(nullable = false, updatable = false, columnDefinition = "timestamp(0) without time zone")
    @ColumnDefault("CURRENT_TIMESTAMP") //
    private LocalDateTime createdAt;


    @UpdateTimestamp
    @Column(nullable = false, updatable = false, columnDefinition = "timestamp(0) without time zone")
    @ColumnDefault("CURRENT_TIMESTAMP")
    private LocalDateTime updatedAt;

    @Column(name = "nombre", length = 255, nullable = false)
    private String nombre;

    @Column(name = "fecha_inicio", nullable = false)
    private LocalDate fechaInicio;

    @Column(name = "fecha_fin", nullable = false)
    private LocalDate fechaFin;


    @Column(name = "estado", nullable = false)
    @ColumnDefault("true")
    private Boolean estado;


    /*
     * Utilizar el Valor Predeterminado con el @PrePersist
     * utilizar el método @PrePersist para inicializar campos
     * antes de que el objeto sea persistido en la base de datos:
     *
     * --Es para automatizar EL ESTADO a true.
     * */

    @PrePersist
    protected void onCreate() {
        if (estado == null) {
            estado = true;
        }
    }


    public void setEstado(Boolean estado) {
        this.estado = estado;
    }

    public void setFechaFin(LocalDate fechaFin) {
        this.fechaFin = fechaFin;
    }

    public void setFechaInicio(LocalDate fechaInicio) {
        this.fechaInicio = fechaInicio;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setUpdatedAt(LocalDateTime updatedAt) {
        this.updatedAt = updatedAt;
    }

    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getId() {
        return id;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public LocalDateTime getUpdatedAt() {
        return updatedAt;
    }

    public String getNombre() {
        return nombre;
    }

    public LocalDate getFechaInicio() {
        return fechaInicio;
    }

    public LocalDate getFechaFin() {
        return fechaFin;
    }

    public Boolean getEstado() {
        return estado;
    }
}


