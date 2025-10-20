import 'dart:io';

void main() {

  stdout.write("Enter numbers separated by spaces: ");
  List<int> numbers = stdin.readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();

  print("Input: $numbers");

  List<int> ascending = List.from(numbers)..sort();
  print("Ascending: $ascending");

  List<int> descending = List.from(numbers)..sort((a, b)
   => b.compareTo(a));
  print("Descending: $descending");
}
