package backend.controller;

import backend.model.Ejercicio;
import backend.services.EjercicioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/ejercicios")
public class EjercicioController {
    @Autowired
    private EjercicioService ejercicioService;

    @PostMapping
    public Ejercicio save(@RequestBody Ejercicio object) {
        return ejercicioService.save(object);
    }

    // Maneja solicitudes GET para obtener un Ejercicio por ID
    @GetMapping("/{id}")
    public ResponseEntity<Ejercicio> findById(@PathVariable Long id) {
        Ejercicio object_Found = ejercicioService.findById(id);
        return object_Found != null ? ResponseEntity.ok(object_Found) : ResponseEntity.notFound().build();
    }

    // Maneja solicitudes GET para obtener todos los Ejercicios
    @GetMapping("/")
    public List<Ejercicio> findAll() {
        return ejercicioService.findAll();
    }

    //Actualizamos
    @PutMapping("/{id}")
    public ResponseEntity<Ejercicio> update(@PathVariable Long id, @RequestBody Ejercicio object) {
        Ejercicio updated = ejercicioService.update(id, object);
        return updated != null ? ResponseEntity.ok(updated) : ResponseEntity.notFound().build();
    }


    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteById(@PathVariable Long id) {
        try {
            ejercicioService.deleteById(id);
            return ResponseEntity.noContent().build(); // 204 No Content
        } catch (RuntimeException e) {
            return ResponseEntity.notFound().build(); // 404 Not Found
        }
    }
}
