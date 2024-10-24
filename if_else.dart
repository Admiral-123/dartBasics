void main() {
  const int a = 290;

  if (a > 300) {
    print('x');
  } else if (a < 300 && a > 295) {
    print('y');
  } else if (a > 250 || a == 90) {
    print('z');
  } else {
    print('nope');
  }
}
