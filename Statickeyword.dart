class A {
    static int variable = 20;
    
    static void show(){
        print("From static show method");
    }
    
    static String run(){
        return "From static run method ";
    }
}

void main() {

// we dont need objects to access static, we just need class name
    
    print(A.variable); // we used className
    A.show();     // directly by using class name.
    print(A.run());
}

/*

20
From static show method
From static run method

*/
