### **Dart - Operators**

Operators are special symbols used to perform certain operations on operands.

The following are the various types of operators in Dart:

- **Arithmetic Operators**

 Used to perform arithmetic operation on the operands,

| **Operator Symbol** | **Operator Name** | **Operator Description** |
| --- | --- | --- |
| + | Addition | Used to add two operands |
| - | Subtraction | Used to subtract two operands |
| -expr | Unary Minus | Used to reverse the sign of the expression |
| * | Multiply | Used to multiply two operands |
| / | Division | Used to divide two operands |
| ~/ | Division | Used to divide two operands but give output in integer(returns quotient) |
| % | Modulus | Used to give remainder of two operands(returns remainder) |

Example

```dart
void main()
{
    int a = 10;
    int b = 20;
    
    print("sum = ${a+b}");  // Addition
    print("sub = ${a-b}");  // Subtraction
    print("div = ${a/b}");  // Division
    print("mult = ${a*b}");  // Multiply
    print("reminder = ${a%b}");  // Modulus

}
/* 
output:
sum = 30
sub = -10
div = 0.5
mult = 200
reminder = 10 
*/
```

- **Relational Operators**

Used to perform relational operation on the operands,

| **Operator Symbol** | **Operator Name** | **Operator Description** |
| --- | --- | --- |
| > | Greater than | Check which operand is bigger and give result as boolean expression. |
| < | Less than | Check which operand is smaller and give result as boolean expression. |
| >= | Greater than or equal to | Check which operand is greater or equal to each other and give result as boolean expression. |
| <= | less than equal to | Check which operand is less than or equal to each other and give result as boolean expression. |
| == | Equal to | Check whether the operand are equal to each other or not and give result as boolean expression. |
| != | Not Equal to | Check whether the operand are not equal to each other or not and give result as boolean expression. |

Example

```dart
void main()
{
        int a = 2;
        int b = 3;
    
        print(a > b);  // false
    
        print(a < b);  // true

        print(a <= b); // true
    
        print(a >= b); // false

        print(a == b);  // false
    
        print( a!= b);  // true
}
```

- **Type Test Operators**

 Used to perform comparison on the operands

| **Operator Symbol** | **Operator Name** | **Operator Description** |
| --- | --- | --- |
| is | is | Gives boolean value true as output if the object has specific type |
| is! | is not | Gives boolean value false as output if the object has specific type |

Example

```dart
void main()
{
        String a = 'ABC';
        double b = 3.3;
    
        // Using is to compare
        print(a is String);      // ture
    
        // Using is! to compare
        print(b is !int);          // true
}
```

Example 2

```dart
void main()
{
       int a = 3;
       int b = 2;
       
       bool n = a > b;
       print(n is bool);  // true
}
```

- **Bitwise Operators**

used to perform bitwise operation on the operands,

| **Operator Symbol** | **Operator Name** | **Operator Description** |
| --- | --- | --- |
| & | Bitwise AND | Performs bitwise AND operation on two operands. |
| | | Bitwise OR | Performs bitwise OR operation on two operands. |
| ^ | Bitwise XOR | Performs bitwise XOR operation on two operands. |
| ~ | Bitwise NOT | Performs bitwise NOT operation on one operand. |
| << | Left Shift | Shifts a in binary representation to b bits to left and inserting 0 from right. |
| >> | Right Shift | Shifts a in binary representation to b bits to the right, preserving the sign bit (inserting `0` for positive numbers and `1` for negative numbers). |
| >>> | Unsigned Shift right | Shifts a in binary representation to b bits to the right, inserting `0`s (ignores sign). |

Example

```dart
void main()
{
       dynamic a = 5;
       dynamic b = 7;
       
       print (a & b);  // 5
       
       print (a | b);  // 7
       
       print (a ^ b);   // 2
       
       print ( ~b);    // -8
}
```

- **Logical Operators**

used to logically combine two or more conditions of the operands

| **Operator Symbol** | **Operator Name** | **Operator Description** |
| --- | --- | --- |
| && | And Operator | Returns true only if both conditions are true. |
| || | Or Operator | Returns true if at least one condition is true. |
| ! | Not Operator | Reverses the boolean value of an expression. |

Example:

```dart
void main()
{
        int a = 5;
        int b = 7;
    
        // Using And Operator
        bool c = a > 10 && b < 10;
        print(c);  // false
    
        // Using Or Operator
        bool d = a > 10 || b < 10;
        print(d);   // true
    
        // Using Not Operator
        bool e = !(a > 10);
        print(e);   // true
}
```

> ***Note:** Logical operator can only be application to boolean expression and in dart, non-zero numbers are not considered as true and zero as false*
> 

note:

| You Want To Do | Use |
| --- | --- |
| Logical on `bool` | `&&`, ` |
| Bitwise on `int` | `&`, ` |
