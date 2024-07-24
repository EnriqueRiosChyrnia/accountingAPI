package backend.model;

import jakarta.persistence.*;
import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import java.time.LocalDateTime;

@Entity
@Table(name = "modelos_asientos_detalles")
public class ModeloAsientoDetalle {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @CreationTimestamp
    @Column(nullable = false, updatable = false, columnDefinition = "timestamp(0) without time zone")
    @ColumnDefault("CURRENT_TIMESTAMP")
    private LocalDateTime createdAt = LocalDateTime.now();

    @UpdateTimestamp
    @Column(nullable = false, columnDefinition = "timestamp(0) without time zone")
    @ColumnDefault("CURRENT_TIMESTAMP")
    private LocalDateTime updatedAt = LocalDateTime.now();


    @Column(nullable = false)
    @ColumnDefault("false")
    private Boolean deleted = false;

    @Column(nullable = false, length = 255)
    private String tipoCuenta;

    @ManyToOne
    @JoinColumn(name = "id_modeloAsiento", nullable = false)
    private ModeloAsiento modeloAsiento;

    @ManyToOne
    @JoinColumn(name = "id_cuenta", nullable = false)
    private Cuenta cuenta;


    //Creacion por defecto.
    @PrePersist
    protected void onCreate() {
        if (deleted == null) {
            deleted = false;
        }
    }

    // Getters y setters


    public Long getId() {
        return id;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public LocalDateTime getUpdatedAt() {
        return updatedAt;
    }

    public Boolean getDeleted() {
        return deleted;
    }

    public String getTipoCuenta() {
        return tipoCuenta;
    }

    public ModeloAsiento getModeloAsiento() {
        return modeloAsiento;
    }

    public Cuenta getCuenta() {
        return cuenta;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }

    public void setUpdatedAt(LocalDateTime updatedAt) {
        this.updatedAt = updatedAt;
    }

    public void setDeleted(Boolean deleted) {
        this.deleted = deleted;
    }

    public void setTipoCuenta(String tipoCuenta) {
        this.tipoCuenta = tipoCuenta;
    }

    public void setModeloAsiento(ModeloAsiento modeloAsiento) {
        this.modeloAsiento = modeloAsiento;
    }

    public void setCuenta(Cuenta cuenta) {
        this.cuenta = cuenta;
    }
}

