abstract class A{
    void code();   // only method declaration
}

class B extends A{
    void code(){
        print("This method is in abstract class A");
    }
}

void main() {
  A obj = new B();
  obj.code();
}
