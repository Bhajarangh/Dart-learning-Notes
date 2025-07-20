## **OOPs Concepts in Dart!**

Dart is an object-oriented language — just like Java 

### **1. Class**

- **Class is a blueprint** to create objects. It helps holds **properties (variables)** and **methods (functions)**.

Syntax

```dart
class ClassName{
// code
}
```

### **2. Object**

- Object is An **instance** of a class, We use it to access class members.
- we use `new`keyword to create an object.

Syntax

```dart
ClassName objectName = new ClassName();
```

Example:

```dart
class A{
    String name = "Bannu";
}

void main() {
  A obj = new A();      // obj is an object of class A.
  print(obj.name);
}
```

### **3. Encapsulation**

- We Can keep Variables private in dart using  `_` (underscore), we can Use **getters/setters** to access them safely.

Example:

```dart
class A{
    String _name = "Bhajarangh";   // Private Variable (we can't access out of this class)
    
    String GetName(){     // GetName(), is a public method.
        return _name;
    }
}
void main() {
    
  A obj = new A();
  print(obj.GetName());  // now we can access the private variable using public function/ method!
  
}
```

### 4. Polymorphism

- One function behaves **differently in different classes**.

Example:

```dart
class A{
    void code(){       // same function but different output
        print("I'm Coding");
    }
}

class B extends A{
    void code(){
        print("I'm Coding but ffrom class B");
    }
}

void main() {
  A obj = new B();  // here we created object for class B, Hence its print code() from class B
  obj.code();
}
```

### **5. Abstraction**

- Its Helps to Hide the complex logic, and it will only shows the important things.
- we can do this by Using **`abstract` classes**.

```dart
abstract class A{
    void code();   // only method declaration
}

class B extends A{
    void code(){
        print("This method is in abstract class A");
    }
}

void main() {
  A obj = new B();
  obj.code();
}
```

- We **can’t create an object** for abstract class, but **we can use the reference** abstract class.

### **6. Inheritance**

- Inheritance is one of the most important concepts in OOPs , in which One class **inherits** from another by using `extends` keyword.

Example:

```dart
class A{
    void show(){
        print("From show method");
    }
}

class B extends A{
    void run(){
        print("From run method");
    }
}

void main() {
    
    B obj = new B();  // we created an object for class B, But we call function which is in class A
    obj.show();
    
}
```

**Types of Inheritance**

1. **Single Inheritance:** This inheritance occurs when a class inherits a single-parent class.
2. **Multi-Level Inheritance:** This inheritance occurs when a class inherits from another class, which is already derived from a parent class..
3. **Hierarchical Inheritance:** Multiple child classes inherit from a common parent class.

> *NOTE: Dart **does not support multiple inheritance** directly. This means a class cannot inherit from more than one parent class*
> 

**Can we use use both `extends` and `implements` keyword - YES!!**

- The **correct way to overcome the limitation of multiple inheritance in Dart** using `extends` and `implements` together. 👍

Example:

```dart
abstract class A{
    void run();
}

abstract class C{
    void code();
}

class B extends A implements C{
    void run(){
        print("running");
    }
    
    void code(){
        print("coding");
    }
}

void main() {
  B obj = new B();
  obj.run();   // running
  obj.code();   // coding..
}
```

### **`implements`Keyword!**

Dart **does not have a separate `interface` keyword** like Java or C#.

👉 Instead, **every class in Dart can be used as an interface** using the `implements` keyword.

- That means you can use an `abstract class` **as an interface**.

Example:

```dart
abstract class A{
    void run();
}

abstract class C{
    void code();
}

abstract class Z{
    void sleep();
}

class B implements A, C, Z{  // can Implement multiple interfaces
    void run(){
        print("running");
    }
    
    void code(){
        print("coding");
    }
    
    void sleep(){
        print("sleeping ");
    }
}

void main() {
  B obj = new B();
  obj.sleep();  // sleeping
  obj.run();  // running
  obj.code();  // coding
}
```

- One of the solution to overcome  **multiple inheritance Problem in dart!**

**About `extends` & `implements`!**

| Keyword | Purpose | Notes |
| --- | --- | --- |
| `extends` | Inherit from **one** superclass | Can use/override concrete methods too |
| `implements` | Implement multiple interfaces | Must provide all method definitions |

### **Is There any Other way to Overcome This multiple inheritance Problem(Like what if we have Many Classes)?**

To overcome this problem, Dart’s introduced an concept called **Mixins.**

- Mixins allow you to reuse code from multiple classes **without inheritance**.

Example:

```dart
mixin A {
    void learn(){
        print("learning..");
    }
}
mixin B{
    void code(){
        print("coding..");
    }
}

class C with A, B {  // we use a mixin only by mixing it into a class using the with keyword.
    void build(){
        print("Building..");
    }
}

void main() {
  C obj = new C();
  obj.learn(); // learning..
  obj.code();   // coding..
  obj.build();  // Building..
}
```

**We cannot** create an object of a `mixin` in Dart. Because 

> **`*mixin` is not a class — it's a special kind of code reuse unit meant to be mixed into other classes, not instantiated on its own.***
> 
- **Mixins in Dart do not have constructors.**
- **Both `implements` and `mixins` are valid solutions to overcome the multiple inheritance limitation in Dart.**
