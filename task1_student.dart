//Задание 1. Класс Student dart run task1_student.dart
class Student {
  String name;
  int age;
  double averagePoint;

  Student(this.name, this.age, this.averagePoint);

  void printInfo() {
    print('Студент: $name, возраст: $age, средний балл: $averagePoint');
  }

  bool isExcellent() {
    return averagePoint >= 4.5;
  }
}

void main() {
  Student student1 = Student('Азамат', 17, 4.8);
  Student student2 = Student('Манап', 15, 4.2);
  Student student3 = Student('Алина', 16, 4.9);

  student1.printInfo();
  print('Отличник: ${student1.isExcellent()}');

  student2.printInfo();
  print('Отличник: ${student2.isExcellent()}');

  student3.printInfo();
  print('Отличник: ${student3.isExcellent()}');
}
