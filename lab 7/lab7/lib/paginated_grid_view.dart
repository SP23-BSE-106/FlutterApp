import 'package:flutter/material.dart';

class PaginatedGridView extends StatefulWidget {
  const PaginatedGridView({super.key});

  @override
  State<PaginatedGridView> createState() => _PaginatedGridViewState();
}

class _PaginatedGridViewState extends State<PaginatedGridView> {
  final List<String> allItems = List.generate(30, (i) => 'Item ${i + 1}');
  final List<String> displayedItems = [];

  final int batchSize = 6;
  int currentIndex = 0;
  bool isLoading = false;
  bool allLoaded = false;

  final ScrollController controller = ScrollController();

  @override
  void initState() {
    super.initState();
    loadMoreItems();

    controller.addListener(() {
      if (controller.position.pixels == controller.position.maxScrollExtent) {
        loadMoreItems();
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Future<void> loadMoreItems() async {
    if (isLoading || allLoaded) return;

    setState(() => isLoading = true);

    await Future.delayed(const Duration(seconds: 2)); // Fake API delay

    int endIndex = currentIndex + batchSize;

    if (endIndex >= allItems.length) {
      endIndex = allItems.length;
      allLoaded = true;
    }

    displayedItems.addAll(allItems.sublist(currentIndex, endIndex));
    currentIndex = endIndex;

    setState(() => isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pagination GridView')),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              controller: controller,
              padding: const EdgeInsets.all(12),
              itemCount: displayedItems.length + (isLoading ? 1 : 0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                childAspectRatio: 1.2,
              ),
              itemBuilder: (context, index) {
                if (index == displayedItems.length) {
                  return const Center(child: CircularProgressIndicator());
                }

                return Card(
                  elevation: 3,
                  child: Center(
                    child: Text(
                      displayedItems[index],
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
