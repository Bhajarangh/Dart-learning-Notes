void main() {
  Set<String> a = {"apple", "banana"};
  Set<String> b = {"banana", "cherry"};

  var combined = a.union(b); // Removes duplicates
  print(combined);
}
