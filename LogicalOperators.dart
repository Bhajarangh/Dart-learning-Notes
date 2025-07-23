void main()
{
        int a = 5;
        int b = 7;
    
        // Using And Operator
        bool c = a > 10 && b < 10;
        print(c);  // false
    
        // Using Or Operator
        bool d = a > 10 || b < 10;
        print(d);   // true
    
        // Using Not Operator
        bool e = !(a > 10);
        print(e);   // true
}
