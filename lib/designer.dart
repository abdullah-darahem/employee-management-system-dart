import 'address.dart';
import 'employee.dart';

class Designer extends Employee
{
  String designTool;
  int projectsCount;

Designer(super.id, super.name, super.salary, super.address, this.designTool, this.projectsCount)
  {
  }

  @override
  double calculateBonus()
  {
    double baseBonus = salary * 0.08;
    double projectBonus = projectsCount * 300.0;
    return baseBonus + projectBonus;
  }

  @override
  void displayInfo()
  {
    super.displayInfo(); 
    print("Role: Designer");
    print("Design Tool: $designTool");
    print("Completed Projects: $projectsCount");
    print("Bonus: \$${calculateBonus()}");
  }
}
