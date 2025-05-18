import 'package:flutter/material.dart';

class ListTileEx extends StatefulWidget {
  const ListTileEx({super.key});

  @override
  State<ListTileEx> createState() => _ListTileExState();
}

class _ListTileExState extends State<ListTileEx> {
  List<Person> people = [
    Person(name: 'إبراهيم علي', subtitle: 'مبرمج Flutter'),
    Person(name: 'سارة أحمد', subtitle: 'مديرة مشاريع'),
    Person(name: 'محمد حسن', subtitle: 'مصمم واجهات'),
  ];
  Set<int> addedIndexes = {}; // بتخزن الأشخاص المضافين
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('مثال ListTile')),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.person, color: Colors.blue),
            title: Text('إبراهيم علي'),
            subtitle: Text('مهندس برمجيات'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text('تم اختيار إبراهيم')));
            },
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(child: Text('احمد')),
            title: Text('رسالة جديدة'),
            subtitle: Text('مرحبا، كيف حالك؟'),
            trailing: Icon(Icons.message),
          ),
        ],
      ),
    );
    return Scaffold(
      appBar: AppBar(title: Text('قائمة الأشخاص')),
      body: ListView.builder(
        itemCount: people.length,
        itemBuilder: (context, index) {
          final person = people[index];
          final isAdded = addedIndexes.contains(index);
          return ListTile(
            leading: CircleAvatar(child: Text(person.name[0])),
            title: Text(person.name),
            subtitle: Text(person.subtitle),
            trailing: ElevatedButton(
              onPressed: () {
                setState(() {
                  if (isAdded)
                    addedIndexes.remove(index);
                  else
                    addedIndexes.add(index);
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: isAdded ? Colors.grey : Colors.blue,
              ),
              child: Text(isAdded ? 'تمت الإضافة' : 'إضافة'),
            ),
          );
        },
      ),
    );
  }
}

class Person {
  final String name;
  final String subtitle;

  Person({required this.name, required this.subtitle});
}
