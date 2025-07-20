## Constructor in Dart!

- **Constructor** is a special function in a class that **runs automatically when you create an object,** we don't **need to call the object,**  just we **need to create an object!**

Example:

```dart
class A{
    A(){
        print("hey, this is Constructor");
    }
}

void main() {
    A obj = new A(); // we just created an object, but not called!
}
```

Above example is **Default Constructor**, what if, we need Parameterized Constructor?

- **Parameterized Constructor** is nothing but we need to pass some parameters, like below!

```dart
class A{
    String? name; // ? because input can be the "null"
    
    A(name){    // we are passing parameters here!
        print("hey, His name is ${name}");
    }
}

void main() {
    A obj = new A("Bannnnnnu");  // we are passing the values of parameters here
}
```

- we use `?` because we are saying to compiler that entered value can be null

> *Hey compiler,  the value can be null please accept it.*
> 
- we can take how many parameters we need , s below

```dart
class A{
    String? name;
    int? n;
    
    A(name, n){
        print("hey, His name is ${name} and age is ${n}" );
    }
}

void main() {
    A obj = new A("Bannnnnnu", 21);
}
```

### `super` Keyword

- Use `super` to **access something from the parent class** (like a variable or method).

Example:

```dart
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
```

> *Note: The `super()` keyword in Dart **only works** when a class **extends another class** (i.e., when there is **inheritance**).*
> 
> - It Must be **first I**n the subclass constructor (First line only!)

### `this` keyword

- `this` means **"this current object's..."**
- To avoid confusion, we Use it when the **variable names inside the constructor and class are same**, If variable names are different, `this` is not needed.

Example:

```dart
class Student {
  String name;

  Student(this.name) {
    print(name);
  }
}

void main() {
  Student obj  = new Student("bannu");
}
```

| Concept | Meaning | Example |
| --- | --- | --- |
| `Constructor` | Special method that runs when object is created | `Person(String name)` |
| `this` | Refers to current object | `this.name = name` |
| `super` | Refers to parent class property or method | `super.color` |
