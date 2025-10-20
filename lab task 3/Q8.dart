void main() {
  List<int> arr = [15, 3, 9, 1, 20];
  print("Input: $arr");

  List<int> asc = List.from(arr)..sort();
  print("Ascending: $asc");

  List<int> desc = List.from(arr)..sort((a, b) => b.compareTo(a));
  print("Descending: $desc");
}
