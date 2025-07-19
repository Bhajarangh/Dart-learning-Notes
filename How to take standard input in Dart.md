### **How to take standard input in Dart?**

To read input from the **keyboard/terminal**, Dart uses:

```dart
import 'dart:io';
```

- **Taking String As an Input,**

```dart
import 'dart:io';

void main() {
  print("Enter your name:");
  String? name = stdin.readLineSync();
  print("Hello, $name!");
}
```

Explanation :

- `String?` is used because `readLineSync()` can return `null`,  might return `null` if input fails
- `stdin.readLineSync()` → reads a **line of input** as a string.
- In Dart, `stdin` stands for **standard input, U**sed to **read user input.**

**Taking An input for integers,**

- `int.parse()` is used to convert the string input to an integer.

Example:

```dart
import 'dart:io';

void main(){
    
    print("Enter number = ");
    String? name = stdin.readLineSync();
    int number = int.parse(name!);   // // Using ! to say "I’m sure it’s not null"
    
    print("the number you entered is ${number}");
}
```

We can re-write above code as follows,

```dart
import 'dart:io';

void main(){
    
    print("Enter number = ");
    
    int number = int.parse(stdin.readLineSync()!);   // // Using ! to say "I’m sure it’s not null"
    
    print("the number you entered is ${number}");
}
```

Similarly, Taking input for Float (double) is by using → `double.parse(i);`

**How to take 2 inputs At a time in Dart?**

- if we want to enter **two different numbers** we should **read two inputs, as follows**

```dart
import 'dart:io';

void main(){
    
    print("Enter two number = ");
    String? name = stdin.readLineSync();
    int number = int.parse(name!);
    
    String? name1 = stdin.readLineSync();
    int number1 = int.parse(name1!);
    
    print("the two number you entered are ${number} and ${number1}");
}

/* 
Output:

Enter two number = 
20
40
the two number you entered are 20 and 40
*/
```
