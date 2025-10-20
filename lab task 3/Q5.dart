class Book {
  String title;
  String author;
  double price;

  // Constructor
  Book(this.title, this.author, this.price);
}

void main() {
  // List of books
  List<Book> books = [
    Book("Flutter Basics", "Ali", 300),
    Book("AI with Dart", "Sara", 700),
    Book("Networking", "Munazza", 550),
    Book("Web Development", "Ahmed", 450),
  ];

  // Print all books
  print("All Books:");
  for (var b in books) {
    print("Title: ${b.title}, Author: ${b.author}, Price: ${b.price}");
  }

  // Print only books with price > 500
  print("\nBooks with price greater than 500:");
  for (var b in books) {
    if (b.price > 500) {
      print("Title: ${b.title}, Price: ${b.price}");
    }
  }
}
