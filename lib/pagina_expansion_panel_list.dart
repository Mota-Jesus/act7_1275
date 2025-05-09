import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: ExpansionPanelL()));
}

class Item {
  Item({
    required this.id,
    required this.headerText,
    required this.expandedText,
  });

  int id;
  String headerText;
  String expandedText;
}

class ExpansionPanelL extends StatefulWidget {
  const ExpansionPanelL({Key? key}) : super(key: key);

  @override
  State<ExpansionPanelL> createState() => _ExpansionPanelLState();
}

class _ExpansionPanelLState extends State<ExpansionPanelL> {
  List<Item> _data = List<Item>.generate(
    10,
    (int index) => Item(
      id: index,
      headerText: 'Item $index',
      expandedText: 'This is item number $index',
    ),
  );

  int? _activePanelId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Expansion Panel',
          style: TextStyle(color: Color(0xff000000), fontSize: 24),
        ),
        backgroundColor: const Color(0xffe6ffbe),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ExpansionPanelList.radio(
            expandedHeaderPadding: const EdgeInsets.symmetric(vertical: 8),
            initialOpenPanelValue: _activePanelId,
            children: _data.map<ExpansionPanelRadio>((Item item) {
              return ExpansionPanelRadio(
                value: item.id,
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    title: Text(item.headerText),
                  );
                },
                body: ListTile(
                  title: Text(item.expandedText),
                  subtitle: const Text('Tap trash icon to delete'),
                  trailing:
                      const Icon(Icons.delete, color: Colors.orangeAccent),
                  onTap: () {
                    setState(() {
                      _data.removeWhere((element) => element.id == item.id);
                      if (_activePanelId == item.id) _activePanelId = null;
                    });
                  },
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
