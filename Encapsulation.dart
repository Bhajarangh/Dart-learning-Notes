class A{
    String _name = "Bhajarangh";   // Private Variable (we can't access out of this class)
    
    String GetName(){     // GetName(), is a public method.
        return _name;
    }
}
void main() {
    
  A obj = new A();
  print(obj.GetName());  // now we can access the private variable using public function/ method!
  
}
