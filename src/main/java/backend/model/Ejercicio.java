package backend.model;


import jakarta.persistence.*;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedBy;

import java.time.LocalDate;
import java.time.LocalDateTime;


@Entity
@Table(name = "ejercicios")
public class Ejercicio {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @CreatedDate
    @Column(name = "createdAt", nullable = false, updatable = false)
    private LocalDateTime createdAt;

    @LastModifiedBy
    @Column(name = "updatedAt" , nullable = false )
    private LocalDateTime updatedAt;

    @Column(name="nombre", length = 255, nullable = false)
    private String nombre;

    @Column(name="fecha_inicio", nullable= false)
    private LocalDate fechaInicio;

    @Column(name = "fecha_fin", nullable= false)
    private LocalDate fechaFin;

    @Column(name = "estado", nullable= false)
    private Boolean estado;
/*
* Utilizar el Valor Predeterminado con el @PrePersist
        * utilizar el método @PrePersist para inicializar campos
        * antes de que el objeto sea persistido en la base de datos:
        *
        * --Es para automatizar la fecha de creacion y actualizacion.
* */
    @PrePersist
    protected void onCreate() {
        if (createdAt == null) {
            createdAt = LocalDateTime.now();
        }
        if (updatedAt == null) {
            updatedAt = LocalDateTime.now();
        }

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


/*
*
* Table ejercicios {
  id          Int       [pk, increment]
  createdAt   DateTime  [default: `now()`]
  updatedAt   DateTime  [default: `now()`, note: 'updatedAt']
  nombre      String    [note: 'VarChar(255)']
  estado      String    [default: 'ACTIVO']
  fechaInicio DateTime  [note: 'fecha_inicio']
  fechaFin    DateTime  [note: 'fecha_fin']

  Note: 'ejercicios'
}
* */