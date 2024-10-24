void main() {
  for (int i = 0; i < 5; i++) {
    print('hlo');
  }

  // if situation is count specific then use for loop

  int num = 47;
  int num2 = 47;

  do {
    print('num is ${num}');
    num++;
  } while (num < 50);
  // do while loop executes once even if condition isnt satisfied

  while (num2 < 50) {
    print('num2 is ${num2}');
    num2++;
  }

  // use while when situation is condition specific use while loop
}
