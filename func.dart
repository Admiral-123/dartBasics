void main() {
  var a = new myClass();
  a.printName('varun');

  var x = myClass.multiply(5, 7);
  print(x);
}

class myClass {
  myClass() {
    // default constructor
    print(
        'constructor of the class'); // constructor is always called first when we create obj of class
  }

  void printName(var name) {
    print(name);
  }

  static int multiply(int a, int b) {
    return a * b;
  }
}
