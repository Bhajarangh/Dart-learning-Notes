import 'dart:io';
import 'dart:math';

void main() {
    var OTP = Random().nextInt(9000) + 1000;
    print("your OTP Is: ${OTP}");
    
    print("Enter your OTP: ");
    
    int enterd_OTP = int.parse(stdin.readLineSync()!);
    
    if (OTP == enterd_OTP){
        print("OTP successfull ");
    } else {
        print("Wrong OTP");
    }
}