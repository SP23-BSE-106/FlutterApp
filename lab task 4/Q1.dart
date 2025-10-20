void main() {
  List<int> numbers = [10, 20, 30, 40, 50];
  print("Original List: $numbers");

  numbers.insert(2, 25);
  print("After inserting 25 at index 2 → $numbers");

  numbers.removeAt(4);
  print("After deleting element at index 4 → $numbers");
}
