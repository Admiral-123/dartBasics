// dart must have a main func defined

void main() {
  print("hlo world");

  print(h());

  print(add(4, 5));
}

String h() {
  return "returned func";
}

int add(int a, int b) {
  return a + b;
}
