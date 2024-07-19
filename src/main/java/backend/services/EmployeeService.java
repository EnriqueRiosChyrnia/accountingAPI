package backend.services;
import backend.model.Employee;
import backend.repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;

import java.util.List;
@Service
public class EmployeeService {
    @Autowired
    private EmployeeRepository employeeRepository;

    public Employee save(@RequestBody Employee employee) {
        return employeeRepository.save(employee);
    }

    public Employee findById(@PathVariable Long id) {
        return employeeRepository.findById(id).orElse(null);
    }

    public List<Employee> getAll() {
        return employeeRepository.findAll();
    }
}
