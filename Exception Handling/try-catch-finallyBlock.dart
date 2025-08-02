void main() {
    int geek = 10;
    try{
        var geek2 = geek ~/ 0;
        print(geek2);
    }
    catch(e){
        print("Error In This code is ${e}");
    }
    finally {     // No matter what, this block should execute.
        print("Code is at end, Geek");
    }
}

/*

Output:
Error In This code is IntegerDivisionByZeroException
Code is at end, Geek

*/
