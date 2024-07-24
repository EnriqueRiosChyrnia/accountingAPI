package backend.model;

import jakarta.persistence.*;
import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import java.time.LocalDateTime;

@Entity
@Table(name = "cuenta")
public class Cuenta {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @CreationTimestamp
    @Column(name = "createdAt", nullable = false, updatable = false, columnDefinition = "timestamp(0) without time zone")
    @ColumnDefault("CURRENT_TIMESTAMP")
    private LocalDateTime createdAt;

    @UpdateTimestamp
    @Column(name = "updatedAt", nullable = false, columnDefinition = "timestamp(0) without time zone")
    @ColumnDefault("CURRENT_TIMESTAMP")
    private LocalDateTime updatedAt;

    @Column(name = "deleted", nullable = false)
    @ColumnDefault("false")
    private Boolean deleted;

    @Column(name = "nombre", length = 255)
    private String nombre;

    @Column(name = "codigo", length = 255)
    private String codigo;

    @Column(name = "imputable", nullable = false)
    private Boolean imputable;

    @ManyToOne
    @JoinColumn(name = "id_cuentaPadre", nullable = true)
    private Cuenta cuentaPadre;


    //Creacion por defecto.
    @PrePersist
    protected void onCreate() {
        if (deleted == null) {
            deleted = false;
        }
    }

}
