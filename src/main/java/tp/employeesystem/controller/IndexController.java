package tp.employeesystem.controller;

import jakarta.servlet.http.HttpServletRequest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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

    @RequestMapping(value ="add", method = RequestMethod.GET)
    public String showAdd(){
        return "add";
    }

    @RequestMapping(value="add", method=RequestMethod.POST)
    public String add(@ModelAttribute("employeeForm") Employee employee, HttpServletRequest request){
        logger.info("add employee " + employee.toString());
        employeeService.save(employee);
        return "redirect:/";
    };

    @RequestMapping(value="edit", method = RequestMethod.GET)
    public String showEdit(@RequestParam int id, ModelMap model) {
        Employee employee = employeeService.getById(id);
        logger.info("edit employee " + employee.toString());
        model.put("employee", employee);
        return "edit";
    }

    @RequestMapping(value="delete", method = RequestMethod.GET)
    public String showdelete(@RequestParam int id, ModelMap model) {
        Employee employee = employeeService.getById(id);
        logger.info("delete employee " + employee.toString());
        model.put("employee", employee);
        return "delete";
    }

    @RequestMapping(value="/edit", method=RequestMethod.POST)
    public String edit(@ModelAttribute("employeeForm") Employee employee){
        logger.info("employee you will edit" + employee.toString());
        employeeService.save(employee);
        //Reload the page /
        return "redirect:/";
    }

    @RequestMapping(value="/delete" , method=RequestMethod.POST)
    public String delete(@ModelAttribute("EmployeeForm") Employee employee){
        logger.info("delete employee " + employee.toString());
        employeeService.deleteById(employee.getId());
        return "redirect:/";
    }
}
