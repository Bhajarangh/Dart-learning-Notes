## **Lists in Dart!**

- List data type in Dart programming is similar to arrays in other programming languages.
1. we can combine two or more lists by using **`+` plus operator.**

Example

```dart

void main() {
  List <String> names = ["Bannu", "Bhajarangh", "Annapaneni"];
  
      print(names[2] + names[1]);
}
```

2. **We can Sort a List in dart as follows,**

For number:

```dart
main() {
  List <int> numbers = [9,4,3,0,1,3,5,3,5,6];
  numbers.sort();
  print(numbers);
}
```

For String (by alphabetical order):

```dart
main() {
  List <String> names = ["Bannu", "Bhajarangh", "Annapaneni"];
  names.sort();
  print(names);
}
```

For String (By length of the string)

```dart
main() {
  List <String> names = ["Bannu", "Bhajarangh", "Annapaneni"];
  
  names.sort((String a , String b){
      return a.length.compareTo(b.length);
  });
  
  print(names);
}
```
