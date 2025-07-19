### **Data Types** in Dart!

we uses data types to **know what kind of value** is stored in a variable (number, text, true/false, etc.)

**1. Numbers**

Used for math stuff — whole numbers or decimals.

- `int` → Whole numbers
    
    `int age = 25;`
    
- `double` → Decimal numbers
    
    `double pi = 3.14;`
    
- `num` → Can hold both int and double

```dart
num value = 10;
value = 10.5;  // Also allowed
```

**2. Strings**

Text or characters — anything in quotes, Both single `'` and double `"` quotes work.

```dart
String name = "Dart";
String greeting = 'Hello ' + name;
```

**3. Booleans**

Only `true` or `false` values.

```dart
bool isAwesome = true;
bool isFun = (2 > 5); // false
```

**4. Lists (Arrays)**

A group of values in order. Like arrays in other languages.

```dart
List<String> fruits = ['Apple', 'Banana', 'Orange'];
print(fruits[0]); // Apple
```

**5. Sets**

A list, but **no duplicate values** and **unordered**.

```dart
Set<int> numbers = {1, 2, 3, 2};
print(numbers); // {1, 2, 3}
```

**6. Maps (Key-Value Pairs)**

Think of it like a dictionary.

```dart
Map<String, String> student = { "name": "John", "class": "10th"};
print(student["name"]); // John
```

**7. Symbols**

Used when you want to store variable/method names as values. Mostly used in **advanced features** like reflection.

```dart
Symbol sym = #mySymbol;
print(sym); // Symbol("mySymbol")
```

**8. Null (`Null`)**

Dart uses null to indicate the absence of a value. 

- `null` means **"no value"** or **"nothing is assigned yet."**
- Dart is **null-safe**, meaning:
    
    > You must tell Dart if a variable is allowed to be null using a `?` symbol.
    > 

```dart
String? name; // name can be null
int? age;     // age can be null
```

- Null-aware Operators in Dart

These operators help you work safely with `null` values.

1. `??` — If null, use a default value

```dart
print(name ?? "Unknown");
```

Means:

> If name is null, print "Unknown".
> 
> 
> If not, print the actual `name`.
> 

2. `?.` — Null-aware access

```dart
int? length = name?.length;
```

Means:

> If name is not null, get name.length.
> 
> 
> If `name` **is null**, just return null safely (no error).
> 

3. `!` — Null assertion

> Use only when you're 100% sure the variable is not null.
> 

```dart
String? name = "Geeks";
print(name!.length); // forces it to treat name as non-null
```

If `name` is `null`, this will crash the app with an error.

Summary:

| Symbol | Meaning | Example |
| --- | --- | --- |
| `?` | Nullable variable | `String? name;` |
| `??` | Default if null | `name ?? "Guest"` |
| `?.` | Safe access | `name?.length` |
| `!` | Force non-null (dangerous) | `name!.length` |

### Summary Table:

| Type | Keyword | Example |
| --- | --- | --- |
| Number | int, double | `int x = 10;` |
| String | String | `String name = "Dart";` |
| Boolean | bool | `bool flag = true;` |
| List | List | `List<int> nums = [1,2,3];` |
| Set | Set | `Set names = {"Tom", "Tom"};` |
| Map | Map | `Map data = {"key": "value"};` |
| Rune | \uXXXX | `print('\u2665');` |
| Symbol | Symbol/#name | `Symbol s = #hello;` |
