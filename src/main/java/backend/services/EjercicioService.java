package backend.services;

import backend.model.Ejercicio;
import backend.repository.EjercicioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class EjercicioService {
    @Autowired
    private EjercicioRepository ejercicioRepository;


    public Ejercicio save(Ejercicio ejercicio) {
        return ejercicioRepository.save(ejercicio);
    }

    // Encuentra un Ejercicio por ID, solo si el estado es verdadero
    public Ejercicio findById(Long id) {
        return ejercicioRepository.findById(id)
                .filter(Ejercicio::getEstado) // Filtra por estado verdadero
                .orElse(null);
    }

    // Encuentra todos los Ejercicios, solo aquellos cuyo estado es verdadero
    public List<Ejercicio> findAll() {
        return ejercicioRepository.findAll()
                .stream()
                .filter(Ejercicio::getEstado) // Filtra por estado verdadero
                .collect(Collectors.toList());
    }

    public Ejercicio update(Long id, Ejercicio object) {
        if (!ejercicioRepository.existsById(id)) {
            return null; // No se encontró el Ejercicio para actualizar
        }

        // Obtener el Ejercicio existente
        Ejercicio existing = ejercicioRepository.findById(id).orElse(null);

        if (existing == null) {
            return null; // O lanza una excepción si prefieres

        }

        // Actualiza solo los campos que no son nulos
        if (object.getNombre() != null) {
            existing.setNombre(object.getNombre());
        }
        if (object.getFechaInicio() != null) {
            existing.setFechaInicio(object.getFechaInicio());
        }
        if (object.getFechaFin() != null) {
            existing.setFechaFin(object.getFechaFin());
        }
        if (object.getEstado() != null) {
            existing.setEstado(object.getEstado());
        }
        //Actualizamos fecha de odificacion

        existing.setUpdatedAt(LocalDateTime.now());

        return ejercicioRepository.save(existing);
    }

    public Ejercicio deleteById(Long id) {

        if (!ejercicioRepository.existsById(id)){
        return null;
    }

    Ejercicio Existing = ejercicioRepository.findById(id).orElse(null);
    Existing.setEstado(false);
    return ejercicioRepository.save(Existing);
    }



}
