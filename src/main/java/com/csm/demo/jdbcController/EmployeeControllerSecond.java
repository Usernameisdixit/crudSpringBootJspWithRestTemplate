package com.csm.demo.jdbcController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

import com.csm.demo.model.Employee;

@Controller
@RequestMapping("/employee-ui")
public class EmployeeControllerSecond {

    private final RestTemplate restTemplate;

    @Autowired
    public EmployeeControllerSecond(RestTemplate restTemplate) {
        this.restTemplate = restTemplate;
    }

    @GetMapping("/{id}")
    public String getEmployee(Model model, @PathVariable Long id) {
        Employee employee = restTemplate.getForObject("http://localhost:8585/employees/" + id, Employee.class);
        model.addAttribute("employee", employee);
        return "employee-details";
    }

    @GetMapping("/add")
    public String showAddForm(Model model) {
        model.addAttribute("employee", new Employee());
        return "add-employee";
    }

    @PostMapping("/add")
    public String addEmployee(@ModelAttribute Employee employee) {
        restTemplate.postForEntity("http://localhost:8585/employees", employee, Employee.class);
        return "redirect:/employee-ui";
    }

    @GetMapping("/update/{id}")
    public String showUpdateForm(Model model, @PathVariable Long id) {
        Employee employee = restTemplate.getForObject("http://localhost:8585/employees/" + id, Employee.class);
        model.addAttribute("employee", employee);
        return "update-employee";
    }

    @PostMapping("/update/{id}")
    public String updateEmployee(@PathVariable Long id, @ModelAttribute Employee employee) {
        restTemplate.put("http://localhost:8585/employees/" + id, employee);
        return "redirect:/employee-ui";
    }

    @GetMapping("/delete/{id}")
    public String deleteEmployee(@PathVariable Long id) {
        restTemplate.delete("http://localhost:8585/employees/" + id);
        return "redirect:/employee-ui";
    }

    @GetMapping
    public String getAllEmployees(Model model) {
        Employee[] employees = restTemplate.getForObject("http://localhost:8585/employees", Employee[].class);
        model.addAttribute("employees", employees);
        //System.out.println("hi");
        return "employee-list";
    }
}
