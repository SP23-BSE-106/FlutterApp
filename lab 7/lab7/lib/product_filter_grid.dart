import 'package:flutter/material.dart';

class ProductFilterGrid extends StatefulWidget {
  const ProductFilterGrid({super.key});

  @override
  State<ProductFilterGrid> createState() => _ProductFilterGridState();
}

class _ProductFilterGridState extends State<ProductFilterGrid> {
  String selectedCategory = "All";

  final List<Map<String, dynamic>> products = [
    {
      "name": "Laptop",
      "price": 120000,
      "image": "https://via.placeholder.com/150",
      "category": "Electronics",
    },
    {
      "name": "Mobile",
      "price": 80000,
      "image": "https://via.placeholder.com/150",
      "category": "Electronics",
    },
    {
      "name": "Shoes A",
      "price": 2500,
      "image": "https://via.placeholder.com/150",
      "category": "Shoes",
    },
    {
      "name": "Shoes B",
      "price": 3000,
      "image": "https://via.placeholder.com/150",
      "category": "Shoes",
    },
    {
      "name": "Book A",
      "price": 500,
      "image": "https://via.placeholder.com/150",
      "category": "Books",
    },
    {
      "name": "Book B",
      "price": 800,
      "image": "https://via.placeholder.com/150",
      "category": "Books",
    },
  ];

  @override
  Widget build(BuildContext context) {
    final filteredProducts = selectedCategory == 'All'
        ? products
        : products.where((p) => p['category'] == selectedCategory).toList();

    return Scaffold(
      appBar: AppBar(title: const Text('Product Filter GridView')),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              children: [
                const Text('Category:  ', style: TextStyle(fontSize: 18)),
                DropdownButton<String>(
                  value: selectedCategory,
                  items: ['All', 'Electronics', 'Shoes', 'Books']
                      .map(
                        (cat) => DropdownMenuItem(value: cat, child: Text(cat)),
                      )
                      .toList(),
                  onChanged: (value) {
                    if (value == null) return;
                    setState(() => selectedCategory = value);
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            if (filteredProducts.isEmpty)
              const Expanded(
                child: Center(
                  child: Text(
                    'No Data Found',
                    style: TextStyle(fontSize: 22, color: Colors.grey),
                  ),
                ),
              )
            else
              Expanded(
                child: GridView.builder(
                  itemCount: filteredProducts.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                    childAspectRatio: 0.75,
                  ),
                  itemBuilder: (context, index) {
                    final item = filteredProducts[index];
                    return Card(
                      elevation: 3,
                      child: Column(
                        children: [
                          Image.network(
                            item['image'],
                            height: 100,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            item['name'],
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Text('${item['price']} PKR'),
                        ],
                      ),
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
