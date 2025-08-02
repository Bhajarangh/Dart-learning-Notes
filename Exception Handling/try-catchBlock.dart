 void main() {
    String geek = "Bhajarangh";  // variable geek has a String
    try{    // we are trying to divide a String with zer (0)
        var geek2 = geek ~/ 0;  // ~/ is integer division in Dart.
        print(geek2);
    }
    catch(e){
        print(e);
    }
}

/* 
Example-2:

void main() {
    
    int n = 20;

    try{
        int number = n ~/2;
        print(number);
        
    }
    catch(e){
        print("The error in this case is: {$e}");
    }
}
*/
