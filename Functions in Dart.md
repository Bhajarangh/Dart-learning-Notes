## Functions in Dart:

A **function** is a block of code that does a specific task.

**Syntax:**

```dart
returnType functionName(parameters) {
  // code
  return value;
}
```

**Example:**

```dart
String name(){
    return "bhajarangh";
}

void main() {
    print(name());
}

/* O/P: bhajarangh*/
```

**Types of Functions:**

They are different types of functions present in dart, some of them are:

1. **Normal Function**

These functions are normal functions.. like we use them generally 

Example:

```dart
void sayHello() {
  print("Hello!");
}
```

2. Function with Return Type

In the functions we use `return` keyword 

```dart
String name(){
    return "bhajarangh";
}

void main() {
    print(name());   // bhajarangh
}
```

3. Arrow Function

It is a **short way** to write a function **that returns a single expression**.

Syntax:

```dart
returnType functionName(parameters) => expression;
```

Example:

```dart
int square(int x) => x * x;

void main() {
    print(square(5));
}
```

Explanation,

above  `int square(int x) => x * x;` Can be written as 

```dart
int square(int x) {   // int square(int x) => x * x;
    return x * x;
}

void main() {
    print(square(5));
}
```

### How do We Use/ have access to a function in dart?

- we can access / call a function like as a method in java!! (Almost Same)

If we write a function outside a class (like below example), we **don't need the object** to access that function, we can access it **directly by its Name.**

Example: 

```dart
void show(){
    print("From show method");
}

void main() {
    show();  // we calling function directly with name.
}
```

Same For return as well, 

```dart
String show(){
    return "From show method with return value!";
}

void main() {
    print(show());
}
```

**What If, if we need to call function which is present inside the class?**

- To have the access of function inside the class, then we have to use the object.

Example: (  With **`return`** keyword)

```dart
class A{
    String show(){
    return "From show method inside the class with return keyword";
    }
}

void main() {
    A obj = new A();  // as like in java, we create an object using new keyword.
    print(obj.show()); // above we are just returning the value, here we are printing it
}
```

Example:  (  Without **`return`** keyword)

```dart
class A{
    void show(){
    print("From show method inside the class without return keyword");
    }
}

void main() {
    A obj = new A();
    obj.show();
}
```
