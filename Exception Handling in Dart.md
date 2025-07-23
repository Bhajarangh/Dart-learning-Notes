## **Exception Handling in Dart**

- An **exception** is a problem/error that happens **while the program is running** — like dividing by zero, or converting a string that can't be a number
- We use **exception handling** to catch and manage these errors safely — and keep the app running.

1. **Using a try-on block**
- `on` is used when you know exactly what error may occur.

Syntax:

```dart
try { 
       // program that might throw an exception 
}  
on Exception1 { 
       // code for handling exception 1
}  
catch Exception2 { 
      // code for handling exception 2
}
```

Example:

```dart
void main() {
    String geek = "Bhajarangh";
    try {
        int result = int.parse(geek);
    } on FormatException {       // we know exactly what is the error.
        print('Hey bro, I cant convert int to String');
    }
}
```

2. **Using a try-catch block**
- `catch (e)` is used when you don’t know the exact type of error, It catches **any e**xception and stores it in **`e`**



```dart
void main() {
    String geek = "Bhajarangh";  // variable geek has a String
    try{    // we are trying to divide a String with zer (0)
        var geek2 = geek ~/ 0;  // ~/ is integer division in Dart.
        print(geek2);
    }
    catch(e){
        print(e);
    }
}
```

Hence, dividing an String with number is not possible, but we try to do that , it may throw an exception, so we kept that condition in try - catch block.

Example -2

```dart
void main() {
    
    int n = 20;

    try{
        int number = n ~/2;
        print(number);
        
    }
    catch(e){
        print("The error in this case is: {$e}");
    }
}
```

In above example, there is no error, so try block will be printed.

Example-3

```dart
void main() {
    
    int n = 20;

    try{
        int number = n ~/0;
        print(number);
        
    }
    catch(e){
        print("The error in this case is: {$e}");
    }
}
```

In above example, there is an error but we dont want to stop the program execution so `catch` block will be printed

3. **Using a try-catch-finally block**
- No matter whatever you write in finally block, it should be executed (rrespective of error in the code. )



Example:

```dart
void main() {
    int geek = 10;
    try{
        var geek2 = geek ~/ 0;
        print(geek2);
    }
    catch(e){
        print("Error In This code is ${e}");
    }
    finally {     // No matter what, this block should execute.
        print("Code is at end, Geek");
    }
}

/*

Output:
Error In This code is IntegerDivisionByZeroException
Code is at end, Geek

*/
```
