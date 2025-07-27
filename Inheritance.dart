class A{
    void show(){
        print("From show method");
    }
}

class B extends A{
    void run(){
        print("From run method");
    }
}

void main() {
    
    B obj = new B();  // we created an object for class B, But we call function which is in class A
    obj.show();
    
}
