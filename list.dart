// list collecn of multiple data
// data could be of same or different type or objects

void main() {
  var list1 = [2, 5, 3, 7, 34, 56];
  print('first val is: ${list1[0]}');

  print('');

  var list2 = ['h', 5, 'hlo', 9];
  list2.add('xyz');
  print(list2);

  print('');

  var num = []; // empty list
  num.addAll(list1); // use addAll() func to add another list value to a list
  print(num);

  print('');

  var name = ['kevin', 'arnav', 'steve', 'sarfarz'];
  name[2] = 'smith'; // can manipulate elements
  name.insert(2, 'kaul'); // insert(index, element)
  var name2 = ['dwayne', 'lara', 'paul'];
  name.insertAll(3, name2); // insertAll() to add a list from a certain index
  print(name);

  print('');

  var num2 = [2, 4, 9, 90, 34, 78, 56];
  print('original num2: ${num2}');
  num2.replaceRange(2, 5, [999, 888, 777]);
  print('after replaceRange: ${num2}');
  num2.removeLast();
  print('after removeLast: ${num2}');
  num2.removeAt(1); // removes the element on the basis of index given
  print('after removeAt(1): ${num2}');
  num2.removeRange(1, 3);
  print('after removeRange(1,3): ${num2}');

  print('');

  print('length of num2: ${num2.length}');
  print('reversed num2: ${num2.reversed}');
  print('is num2 empty: ${num2.isEmpty}');
}
