import 'package:flutter/material.dart';

class EditableGridView extends StatefulWidget {
  const EditableGridView({super.key});

  @override
  State<EditableGridView> createState() => _EditableGridViewState();
}

class _EditableGridViewState extends State<EditableGridView> {
  final List<Map<String, dynamic>> items = [
    {"name": "Image 1", "image": "https://via.placeholder.com/150"},
    {"name": "Image 2", "image": "https://via.placeholder.com/150"},
    {"name": "Image 3", "image": "https://via.placeholder.com/150"},
    {"name": "Image 4", "image": "https://via.placeholder.com/150"},
  ];

  void showEditDialog(int index) {
    final renameController = TextEditingController(text: items[index]["name"]);

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Edit Item"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: renameController,
                decoration: const InputDecoration(labelText: "Rename"),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    items[index]["name"] = renameController.text;
                  });
                  Navigator.pop(context);
                },
                child: const Text("Save"),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                  setState(() {
                    items.removeAt(index);
                  });
                  Navigator.pop(context);
                },
                child: const Text("Delete"),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Editable GridView")),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          itemCount: items.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onLongPress: () => showEditDialog(index),
              child: Card(
                elevation: 4,
                child: Column(
                  children: [
                    Image.network(
                      items[index]["image"],
                      height: 100,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      items[index]["name"],
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
