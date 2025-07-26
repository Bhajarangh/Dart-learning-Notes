class A{
    void code(){       // same function but different output
        print("I'm Coding");
    }
}

class B extends A{
    void code(){
        print("I'm Coding but ffrom class B");
    }
}

void main() {
  A obj = new B();  // here we created object for class B, Hence its print code() from class B
  obj.code();
}
