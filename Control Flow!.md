## Control Flow!

1. **Switch Case in Dart**
- It is a great tool for managing multiple conditions in a clean and organized way.

Syntax 

```dart
switch (expression) { 
  case value1:  
    // Body of value1
    break; 

  case value2:  
    // Body of value2 
    break; 

  // Add more cases as needed

  default:  
    // Body of default case  
    break; 
}
```

Example

```dart
void main()
    {
        int n = 2;
        switch (n)
        {
            case 1: {
                print(" The number is 1");
            }
            break;
            
            case 2: {
                print(" The number is 2");
            }
            break;
            
            case 3: {
                print(" The number is 3");
            }
            break;
            
            default: {
                print("This is default case");
            }
            break;
        }
    }
```

1. **Loops in Dart**
- Used to repeat a particular set of commands until certain conditions are not completed. There are different ways to do so. They are:
- `for` **Loop**
    
     it’s particularly **useful when** you know **how many iterations** you want **to perform.**
    
    Syntax:
    
    ```dart
    for(initialization; condition; text expression){
          // Body of the loop
    }
    ```
    
    Example:
    
    ```dart
    // Printing Bhajarangh 5 times
    void main()
    {
        for (int i = 0; i < 5; i++) {
            print('Bhajarangh');
        }
    }
    
    /*
    Bhajarangh
    Bhajarangh
    Bhajarangh
    Bhajarangh
    Bhajarangh
    */
    ```
    
- `for...in` **Loop**
    
    Used to **loop over a list or set**, and **automatically gives you each item**.
    
    Syntax:
    
    ```dart
    for (var item in collection) {
      // Do something with item
    }
    ```
    
    Example:
    
    ```dart
    void main() {
      var numbers = [1, 2, 3, 4, 5];
      for (int num in numbers) {
        print(num);
      }
    }
    
    /*
    1
    2
    3
    4
    5
    */
    ```
    
- `while` **Loop**
    - This loop runs **while a condition is true**. You check first, then run.
    - We Use This loop when You don't know how many times to repeat — based on condition
    
    ### Syntax:
    
    ```dart
    dart
    CopyEdit
    while (condition) {
      // repeat this
    }
    ```
    
    ### Example:
    
    ```dart
    void main() {
      int i = 1;
      while (i <= 4) {
        print("Hello");
        i++;
      }
    }
    
    /*
    Hello
    Hello
    Hello
    Hello
    */
    ```
    
- `do...while` loop
    
    This loop **runs once first**, then keeps running **while condition is true**.
    
    Syntax:
    
    ```dart
    do {
      // run this at least once
    } while (condition);
    ```
    
    Example
    
    ```dart
    void main() {
      int i = 1;
      do {
        print("Hello");
        i++;
      } while (i <= 4);
    }
    
    /*
    Hello
    Hello
    Hello
    Hello
    */
    ```
    

3. **Loop Control Statements (`break` and `continue`)**

In Dart, **loop control statements** are used to manage the flow of loops by either:

- Exiting a loop early (`break`), or
- Skipping the current iteration and moving to the next one (`continue`).

| Statement | Purpose | When to Use |
| --- | --- | --- |
| `break` | Exits the loop entirely | When you want to stop the loop based on a condition |
| `continue` | Skips to next iteration | When you want to skip specific values or steps |
