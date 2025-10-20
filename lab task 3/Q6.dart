void main() {
  List<int> arr = [10, 20, 30, 40, 50];
  print("Original: $arr");

  arr.insert(2, 25);
  print("After Insert: $arr");

  arr.removeAt(4);
  print("After Delete: $arr");
}
