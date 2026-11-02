class Manager
{
  int id;
  String name;
  String department;

  Manager(this.id, this.name, this.department)
  {
  }

  void displayInfo()
  {
    print("--- Manager Info ---");
    print("Manager ID: $id");
    print("Name: $name");
    print("Department: $department");
  }
}