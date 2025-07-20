## S**tatic** keyword in Dart!

Static concept is same as in java, but we  **cannot mark a class as `static`**.

- Instead, if we want a class that behaves like a static class (i.e., only contains static methods or constants), you just:
    - **Create a regular class**
    - And use only **`static` methods**  inside it.
- we don't object to have a access of static variable / functions, we can directly access with just class name.
- In **Dart**, `static` is **only allowed inside a class**. You **cannot use `static` at the top-level** (outside any class or function). Like

```dart
static int n = 20;  // NOT POSSIBLE.

void main() {
  print(n);
}
```

### How do we **access Static variables /  function** (with return & without return), as follows:

- we **don't any object** to access static, we can **directly access with class name.**

```dart
class A {
    static int variable = 20;
    
    static void show(){
        print("From static show method");
    }
    
    static String run(){
        return "From static run method ";
    }
}

void main() {

// we dont need objects to access static, we just need class name
    
    print(A.variable); // we used className
    A.show();     // directly by using class name.
    print(A.run());
}

/*

20
From static show method
From static run method

*/
```
