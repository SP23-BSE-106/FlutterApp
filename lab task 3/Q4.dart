class Calculator {
  int divide(int a, int b) {
    try {
      return a ~/ b;
    } catch (e) {
      print("Error: cannot divide by zero");
      return 0;
    }
  }
}

void main() {
  Calculator c = Calculator();
  List<int> results = [];

  results.add(c.divide(10, 2));
  results.add(c.divide(15, 0));
  results.add(c.divide(20, 5));

  results.forEach((res) {
    print("Result: $res");
  });
}
