import 'package:flutter/material.dart';

class DynamicEducationForm extends StatefulWidget {
  const DynamicEducationForm({super.key});

  @override
  State<DynamicEducationForm> createState() => _DynamicEducationFormState();
}

class _DynamicEducationFormState extends State<DynamicEducationForm> {
  List<Map<String, TextEditingController>> educationList = [];

  @override
  void initState() {
    super.initState();
    addEducationRow(); // Start with one row
  }

  void addEducationRow() {
    educationList.add({
      "degree": TextEditingController(),
      "institute": TextEditingController(),
      "year": TextEditingController(),
    });

    setState(() {});
  }

  void removeRow(int index) {
    educationList.removeAt(index);
    setState(() {});
  }

  bool validateAllRows() {
    for (var row in educationList) {
      String year = row["year"]!.text.trim();

      if (row["degree"]!.text.isEmpty ||
          row["institute"]!.text.isEmpty ||
          year.isEmpty) {
        return false;
      }

      int? y = int.tryParse(year);

      if (y == null || y < 2010 || y > 2025) {
        return false;
      }
    }
    return true;
  }

  void onSubmit() {
    if (validateAllRows()) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Form submitted successfully!")),
      );
    } else {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Please fix errors before submitting."),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dynamic Education Form")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: educationList.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.only(bottom: 15),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          // -------- DEGREE --------
                          TextField(
                            controller: educationList[index]["degree"],
                            decoration: const InputDecoration(
                              labelText: "Degree",
                            ),
                          ),
                          const SizedBox(height: 10),

                          // -------- INSTITUTE --------
                          TextField(
                            controller: educationList[index]["institute"],
                            decoration: const InputDecoration(
                              labelText: "Institute",
                            ),
                          ),
                          const SizedBox(height: 10),

                          // -------- YEAR --------
                          TextField(
                            controller: educationList[index]["year"],
                            decoration: const InputDecoration(
                              labelText: "Passing Year (2010–2025)",
                            ),
                            keyboardType: TextInputType.number,
                          ),

                          const SizedBox(height: 10),

                          // -------- DELETE BUTTON --------
                          Align(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                              onPressed: educationList.length > 1
                                  ? () => removeRow(index)
                                  : null,
                              icon: const Icon(Icons.delete, color: Colors.red),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            // -------- ADD BUTTON --------
            ElevatedButton(
              onPressed: addEducationRow,
              child: const Text("Add Education"),
            ),
            const SizedBox(height: 10),

            // -------- SUBMIT BUTTON --------
            ElevatedButton(
              onPressed: validateAllRows() ? onSubmit : null,
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
