class Animal {
  String color = "Brown";
}

class Dog extends Animal {
  void printColor() {
    print(super.color); // Accessing parent class variable
  }
}

void main() {
  Dog d = Dog();
  d.printColor(); // Output: Brown
}
