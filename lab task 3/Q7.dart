void main() {
  List<int> arr = [5, 12, 7, 25, 18];
  int num = 25; 

  print("Array: $arr");
  print("Search for: $num");

  int index = arr.indexOf(num);
  if (index != -1) {
    print("Found at index $index");
  } else {
    print("Not Found");
  }
}
