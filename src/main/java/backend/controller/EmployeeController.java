package backend.controller;

import backend.model.Employee;
import backend.services.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@RestController
@RequestMapping("/employees")
public class EmployeeController {
    private final EmployeeService service;

    //@Autowired
    //private EmployeeService service;
    /*  Constructor Injection:
    *   Constructor injection has several advantages,
    * including making the dependencies of your class explicit,
    * ensuring immutability,
    * and making your code easier to test.
    * */
    @Autowired
    public EmployeeController(EmployeeService service) {
    this.service = service;
    }

    @GetMapping
    public List<Employee> getAllEmployees() { return service.getAll();}



}

