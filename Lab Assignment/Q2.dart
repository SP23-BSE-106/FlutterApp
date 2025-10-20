class NumberFilter {
  List<int> filterOddNumbers(List<int> numbers) {
    List<int> evenNumbers = [];
    for (int num in numbers) {
      if (num % 2 == 0) { 
        evenNumbers.add(num);
      }
    }
    return evenNumbers;
  }
}
void main() {
  NumberFilter nf = NumberFilter();
  List<int> nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> result = nf.filterOddNumbers(nums);
  print("Original List: $nums");
  print("Even Numbers: $result");
}
