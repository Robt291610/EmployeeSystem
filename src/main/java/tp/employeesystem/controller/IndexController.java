package tp.employeesystem.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import tp.employeesystem.domain.Employee;
import tp.employeesystem.service.EmployeeService;

import java.util.List;

@Controller
public class IndexController {
    private static final Logger logger = LoggerFactory.getLogger(IndexController.class);

    @Autowired
    private EmployeeService employeeService;

    @RequestMapping(value="/", method = RequestMethod.GET)
    public String start(ModelMap model) {
        List<Employee> employees = employeeService.findAll();
        employees.forEach(employee -> logger.info(employee.toString()));
        //share model to the view
        model.put("employees", employees);
        return "index";
    }
}
