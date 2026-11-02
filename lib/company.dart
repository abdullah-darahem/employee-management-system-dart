import 'employee.dart';
import 'manager.dart';

class Company
{
  String name;
  Manager manager;
  List<Employee> employees = []; 

  Company(this.name, this.manager)
  {
  }

  void addEmployee(Employee newEmployee)
  {
    for (Employee emp in employees)
    {
      if (emp.id == newEmployee.id)
      {
        print("Error: This employee is already existing in the company!");
        return; 
      }
    }

    employees.add(newEmployee);
    print("Success: Employee '${newEmployee.name}' added successfully.");
  }

  void removeEmployee(int id)
  {
    for (Employee emp in employees)
    {
      if (emp.id == id)
      {
        employees.remove(emp);
        print("Success: Employee '${emp.name}' has been removed.");
        return; 
      }
    }

    print("Error: Employee with ID ($id) does not exist in the company!");
  }

  void displayEmployees()
  {
    if (employees.isEmpty)
    {
      print("No employees registered in this company yet.");
      return;
    }

    for (Employee emp in employees)
    {
      emp.displayInfo();
    }
  }
}