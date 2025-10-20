import 'dart:io';
void main() {
  List<int> numbers = [5, 12, 7, 25, 18];
  print("List: $numbers");
  stdout.write("Search for: ");
  int searchNum = int.parse(stdin.readLineSync()!);
  if (numbers.contains(searchNum)) {
    int index = numbers.indexOf(searchNum);
    print("Output: Element found at index $index");
  } else {
    print("Output: Not Found");
  }
}
