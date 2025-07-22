## **Sets in Dart!**

- A **Set** is an unordered collection of unique items. Sets **cannot contain duplicate values**.
- Sets are defined using `{}` or `Set<Type>`

1. **Create a Set in Dart** 

```dart
void main() {
  Set<String> fruits = {"apple", "banana", "mango"};
  print(fruits);
}
```

2. Adding Items to a Set
- We can you `.add()`  method to add the elements, but it will be added at the end!

```dart
void main() {
  Set<String> fruits = {"apple", "banana", "mango"};
  fruits.add("Orange");
  print(fruits);
}
```

3. Adding two sets
- We can add two sets by using `union()`

```dart
void main() {
  Set<String> a = {"apple", "banana"};
  Set<String> b = {"banana", "cherry"};

  var combined = a.union(b); // Removes duplicates
  print(combined);
}
```
