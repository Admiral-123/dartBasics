void main() {
  final String name = 'bob'; // now we cant re-assign name again

  // final var x = 'xyz'; // cant do this as var can be reassigned many times

  // final dynamic y = 'xyx'; // doesnt make any sense as dynamic means changing

  const age = 19;
  // const var. has to be assigned at declaration; it cant be re-assigned

  print("${name}'s age is ${age}");

  final HPchar = ['David', 'Ron', 'Harry', 'Hermoine'];

  HPchar.add('umbridge');
  HPchar.remove('umbridge');
  //in final we can add and remove data from arr but we cant override entire arr

  // ignore: unused_local_variable
  const SWchar = ['skywalker', 'leia', 'yoda'];

  // SWchar.add('obi-wan'); // cant modify const list

  /* final variables can be assigned once, and they can’t be reassigned. However, 
 if the variable holds a mutable object (like a list), the contents of the object
 can still be changed. */

  /*const variables are compile-time constants. They must be initialized with a
 value known at compile-time, and both the variable and its content 
 are immutable. */
}
