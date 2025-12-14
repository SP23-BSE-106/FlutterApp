import 'package:flutter/material.dart';

class ResponsiveGridView extends StatelessWidget {
  const ResponsiveGridView({super.key});

  final List<String> items = const [];

  @override
  Widget build(BuildContext context) {
    final List<String> items = List.generate(20, (i) => 'Item ${i + 1}');

    return Scaffold(
      appBar: AppBar(title: const Text('Responsive GridView')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          // -------- Responsive Column Count --------
          int columns = constraints.maxWidth >= 600 ? 4 : 2;

          return Padding(
            padding: const EdgeInsets.all(12),
            child: GridView.builder(
              itemCount: items.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: columns,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
              ),
              itemBuilder: (context, index) {
                return Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      items[index],
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
