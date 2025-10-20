void main() {
  List<Map<String, dynamic>> products = [
    {'name': 'Laptop', 'price': 1200, 'quantity': 5},
    {'name': 'Phone', 'price': 800, 'quantity': 10},
    {'name': 'Tablet', 'price': 600, 'quantity': 8}
  ];

  print("Original Product List: $products");

  Map<String, dynamic> newProduct = {'name': 'Headphones', 'price': 150, 'quantity': 15};
  products.add(newProduct);
  print("After Adding New Product: $products");

  String searchName = 'Phone';
  var foundProduct = products.firstWhere(
      (product) => product['name'] == searchName,
      orElse: () => {});
  if (foundProduct.isNotEmpty) {
    print("Product Found: $foundProduct");
  } else {
    print("Product Not Found");
  }

  products.sort((a, b) => a['price'].compareTo(b['price']));
  print("Products Sorted by Price: $products");
}

