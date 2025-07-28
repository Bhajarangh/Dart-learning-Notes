main() {
  List <String> names = ["Bannu", "Bhajarangh", "Annapaneni"];
  
  names.sort((String a , String b){
      return a.length.compareTo(b.length);
  });
  
  print(names);
}
