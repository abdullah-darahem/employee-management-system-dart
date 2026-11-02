import 'address.dart';
import 'employee.dart';

class Developer extends Employee
{
  String programmingLanguage;
  int experienceYears;

  Developer( super.id, super.name, super.salary, super.address , this.programmingLanguage, this.experienceYears)
  {
  }

  @override
  double calculateBonus()
  {
    double baseBonus = salary * 0.10;
    double experienceBonus = experienceYears * 500.0;
    return baseBonus + experienceBonus;
  }

  @override
  void displayInfo()
  {
    super.displayInfo(); 
    print("Role: Developer");
    print("Language: $programmingLanguage");
    print("Experience: $experienceYears years");
    print("Bonus: \$${calculateBonus()}");
  }
}