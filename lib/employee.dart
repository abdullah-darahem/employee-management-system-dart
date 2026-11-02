import 'address.dart';

abstract class Employee
{
  int id;
  String name;
  double salary;
  Address address;

  Employee(this.id, this.name, this.salary, this.address)
  {
    if (this.salary < 0)
    {
      this.salary = 0.0;
      print("Salary cannot be negative!");
    }
  }

  double calculateBonus();

  void displayInfo()
  {
    print("ID: $id");
    print("Name: $name");
    print("Salary: \$$salary");
    print("Address: ${address.buildingNumber}, ${address.street}, ${address.city}");
  }
}