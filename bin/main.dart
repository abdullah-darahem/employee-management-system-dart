import '../lib/address.dart';
import '../lib/company.dart';
import '../lib/designer.dart';
import '../lib/developer.dart';
import '../lib/manager.dart';

void main()
{
  print("================ 1. Creating Addresses ================");
  Address devAddress = Address("Cairo", "El-Tahrir Street", 15);
  Address desAddress = Address("Giza", "El-Ahram Street", 42);

  print("\n================ 2. Creating Manager ================");
  Manager teamManager = Manager(101, "Eng. Mahmoud", "Tech & Innovation");
  teamManager.displayInfo();


  print("\n================ 3. Creating Employees ================ ");
  Developer flutterDev = Developer(1,"Abdullah",12000.0,devAddress,"Flutter & Dart",3);

  Designer uiDesigner = Designer(2,"Omar",11000.0,desAddress,"Figma",6);

  print("\n================ 4. Creating Company & Adding Employees ================ ");
  Company techCompany = Company("CodeCrafters Hub", teamManager);

  techCompany.addEmployee(flutterDev);
  techCompany.addEmployee(uiDesigner);

  print("\n================ Testing Business Rule: Duplicate Addition ================");
  techCompany.addEmployee(flutterDev);

  print("\n================ 5. Displaying All Company Employees ================");
  techCompany.displayEmployees();

  print("\n================ Testing Business Rule: Removing Employees ================");
  techCompany.removeEmployee(999);

  techCompany.removeEmployee(1);

  print("\n================ 6. Displaying Company Employees After Removal ================");
  techCompany.displayEmployees();
}