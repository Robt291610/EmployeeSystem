package tp.employeesystem.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import tp.employeesystem.domain.Employee;

public interface IEmployeeRepository extends JpaRepository<Employee,Integer> {
}
