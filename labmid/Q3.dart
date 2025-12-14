void main() {
  List<Map<String, dynamic>> products = [
    {'id': 1, 'name': 'Laptop', 'price': 75000},
    {'id': 2, 'name': 'Smartphone', 'price': 45000},
    {'id': 3, 'name': 'Headphones', 'price': 3000},
    {'id': 4, 'name': 'Keyboard', 'price': 1500},
    {'id': 5, 'name': 'Mouse', 'price': 800},
  ];

  print("All Products:");
  for (var p in products) {
    print("${p['id']} - ${p['name']} - Rs.${p['price']}");
  }

  // Find highest price
  Map<String, dynamic> highest = products[0];
  for (var p in products) {
    if (p['price'] > highest['price']) {
      highest = p;
    }
  }

  print("\nProduct with highest price: ${highest['name']} - Rs.${highest['price']}");

  // Calculate total price
  int total = 0;
  for (var p in products) {
    total += p['price'] as int; // ensure it's treated as int
  }

  print("Total price of all products: Rs.$total");
}
