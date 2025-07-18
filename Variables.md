### **Dart - Variables**

- variables helps to **store the data with some particular name**, whenever we need that data we **can refer that data** with just **variable name.**

Syntax

```dart
type variable_name;
```

**We can declare multiple variables of the same type as follows,**

```dart

type variable1_name, variable2_name, variable3_name, ....variableN_name;
```

### **Types of Variables in Dart**

- Dart supports  **3 main** different types of variables depending on **how their values behave** during runtime. They are:

1. **Static Variables (Explicit Type)**
- We tell Dart **exactly what type** the variable is (like `int`, `String`, etc.).
- Type is **fixed, we** Cannot change the type later.

Example:

```dart
int age = 25;
String name = "Bannu";    // **Static Variables** 
double height = 5.8;
```

2. **Dynamic Variables**

- The variable's **type is decided at runtime**. You don’t declare its type.

Syntax

```dart
dynamic value = 10;       // Can change to any type later
```

Example

```dart
void main()
{
        // Assigning value to geek variable
        dynamic geek = "Bhajarangh";
    
        // Printing variable geek
        print(geek);
    
        // Reassigning the data to variable and printing it
        geek = 3.14157;
        print(geek);
        print("The type is ${geek.runtimeType}");  // .runtimeType helps to know the type.
}
```

1. **Final and Const Variables**

Both are used for **constant values** (cannot be changed once set).
****

**Final :** Value is set **once** at runtime. Can be assigned from functions, API, etc.

```dart
final num = 20;
num = 25; // ❌ Error: Can't assign to a final variable
```

const: Value must be **known at compile-time,** Completely constant, even before the app runs.

```dart
const pi = 3.14159;
const name = "Bannu";
```

**Summary Table**

| Type | Can Change Type? | Value Set When? | Reassignable? | Example |
| --- | --- | --- | --- | --- |
| Static | ❌ No | Compile-time | ✅ Yes | `int a = 10;` |
| Dynamic (`var`) | ❌ No (after first value) | Run-time | ✅ Yes | `var name = "Bannu";` |
| Dynamic (`dynamic`) | ✅ Yes | Run-time | ✅ Yes | `dynamic x = 10;` |
| `final` | ❌ No | Run-time | ❌ No | `final date = DateTime.now();` |
| `const` | ❌ No | Compile-time | ❌ No | `const pi = 3.14;` |
