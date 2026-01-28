package tp.employeesystem.service;

import tp.employeesystem.domain.Employee;

import java.util.List;

public interface IEmployeeService {

    public List<Employee> findAll();
    public Employee getById(Integer id);
    public void save(Employee employee);
    public void deleteById(Integer id);
}
