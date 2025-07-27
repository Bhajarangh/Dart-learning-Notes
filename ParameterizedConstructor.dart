class A{
    String? name; // ? because input can be the "null"
    
    A(name){    // we are passing parameters here!
        print("hey, His name is ${name}");
    }
}

void main() {
    A obj = new A("Bannnnnnu");  // we are passing the values of parameters here
}
