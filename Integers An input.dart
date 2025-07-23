import 'dart:io';

void main(){
    
    print("Enter number = ");
    String? name = stdin.readLineSync();
    int number = int.parse(name!);   // // Using ! to say "I’m sure it’s not null"
    
    print("the number you entered is ${number}");
}

// We can re-write above code as follows,

// import 'dart:io';
//
// void main(){
//   
//   print("Enter number = ");
//    
//    int number = int.parse(stdin.readLineSync()!);   // // Using ! to say "I’m sure it’s not null"
//    
//    print("the number you entered is ${number}");
// }
