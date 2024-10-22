void main() {
  var name = 'alex';
  // Variables store references. The variable called name contains a reference to a String object with a value of "alex"

  Object age = 27;
  // Object is the base class for all types in Dart

  int? height; // Nullable type. Can be `null` or int
  String job; // Non-nullable type. cant be 'null' but can be string

  print(height);
  // print(job); // non-nullable type

  job = 'chef';
  print(job);

  print(name);
  print(age);

  double weight = 75.7; // for float val.
  num rating = 4.7; // can take both float and whole val.

  bool isAvailable = true;

  BigInt bigVal = BigInt.parse('84975893476890476030943573850345809260760');
  // for big integers

  print(bigVal);
  print(isAvailable);
  print(rating);
  print(weight);
}
