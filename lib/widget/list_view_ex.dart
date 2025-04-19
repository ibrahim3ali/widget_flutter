import 'package:flutter/material.dart';

class ListViewEx extends StatefulWidget {
  const ListViewEx({super.key});

  @override
  State<ListViewEx> createState() => _ListViewExState();
}

class _ListViewExState extends State<ListViewEx> {
  List<String> items = ['عصير', 'شاي', 'قهوه'];
  final TextEditingController controller = TextEditingController();
  void addItem() {
    final text = controller.text.trim();
    if (text.isNotEmpty) {
      setState(() {
        items.add(text);
        controller.clear();
      });
    }
  }

  void removeItem(int index) => setState(() => items.removeAt(index));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('قائمة المشروبات')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: controller,
                    decoration: InputDecoration(
                      hintText: 'اكتب اسم المشروب',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(onPressed: addItem, child: Text('اضافة')),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              padding: const EdgeInsets.all(12),
              itemBuilder:
                  (context, index) => Card(
                    margin: const EdgeInsets.symmetric(vertical: 6),
                    child: ListTile(
                      leading: CircleAvatar(child: Text('${index + 1}')),
                      title: Text(items[index]),
                      trailing: IconButton(
                        icon: Icon(Icons.delete, color: Colors.red),
                        onPressed: () => removeItem(index),
                      ),
                    ),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
