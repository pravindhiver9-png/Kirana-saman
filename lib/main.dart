import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const KiranaApp());
}

class KiranaApp extends StatelessWidget {
  const KiranaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pravin Dhiver Kirana Store',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ItemModel {
  String name;
  String unit;
  bool isSelected;
  String quantity;

  ItemModel({
    required this.name,
    required this.unit,
    this.isSelected = false,
    this.quantity = '',
  });
}

class SavedListModel {
  String date;
  List<ItemModel> items;

  SavedListModel({required this.date, required this.items});
}

// Global list jo save rahegi
List<ItemModel> masterItems = [
  ItemModel(name: "आलू", unit: "KG"),
  ItemModel(name: "प्याज", unit: "KG"),
  ItemModel(name: "शक्कर", unit: "KG"),
  ItemModel(name: "अरहर दाल", unit: "KG"),
  ItemModel(name: "उड़द दाल", unit: "KG"),
  ItemModel(name: "बेसन", unit: "KG"),
  ItemModel(name: "सोयाबीन बड़ी", unit: "KG"),
  ItemModel(name: "मटर चना", unit: "KG"),
  ItemModel(name: "फल्लीदाना", unit: "KG"),
  ItemModel(name: "अरहर दाल (हल्का)", unit: "KG"),
  ItemModel(name: "उड़द दाल (हल्का)", unit: "KG"),
  ItemModel(name: "सूजी", unit: "पैकेट"),
  ItemModel(name: "रिलैक्स", unit: "पैकेट"),
  ItemModel(name: "आटा", unit: "पैकेट"),
  ItemModel(name: "मैदा", unit: "पैकेट"),
  ItemModel(name: "डाबर आँवला तेल 20", unit: "पैकेट"),
  ItemModel(name: "डाबर सरसों तेल 20", unit: "पैकेट"),
  ItemModel(name: "जीरा 10", unit: "पैकेट"),
  ItemModel(name: "कुरकुरे", unit: "पत्ता"),
  ItemModel(name: "चिप्स", unit: "पत्ता"),
  ItemModel(name: "टकाटक", unit: "पत्ता"),
  ItemModel(name: "चॉकलेट वाला", unit: "पत्ता"),
  ItemModel(name: "संसिल्क शैम्पू", unit: "पत्ता"),
  ItemModel(name: "क्लिनिक प्लस", unit: "पत्ता"),
  ItemModel(name: "मैगी", unit: "पत्ता"),
  ItemModel(name: "चिकन मसाला 5", unit: "पत्ता"),
  ItemModel(name: "चावमीन", unit: "पत्ता"),
  ItemModel(name: "इलायची 5", unit: "पत्ता"),
  ItemModel(name: "इलायची 10", unit: "पत्ता"),
  ItemModel(name: "काजू 10", unit: "पत्ता"),
  ItemModel(name: "पास्ता", unit: "पत्ता"),
  ItemModel(name: "संसिल्क", unit: "पत्ता"),
  ItemModel(name: "चिप्स हरा", unit: "पत्ता"),
  ItemModel(name: "चिप्स लाल", unit: "पत्ता"),
  ItemModel(name: "चिप्स नीला", unit: "पत्ता"),
  ItemModel(name: "लाइफबॉय", unit: "नग"),
  ItemModel(name: "एक्सपर्ट", unit: "नग"),
  ItemModel(name: "संतूर", unit: "नग"),
  ItemModel(name: "डेटॉल साबुन 10", unit: "नग"),
  ItemModel(name: "कपिल साबुन", unit: "नग"),
  ItemModel(name: "निरमा 20", unit: "नग"),
  ItemModel(name: "निरमा 10", unit: "नग"),
  ItemModel(name: "निरमा 50", unit: "नग"),
  ItemModel(name: "क्लोजअप 10", unit: "नग"),
  ItemModel(name: "सरसों तेल ½", unit: "नग"),
  ItemModel(name: "सरसों तेल 200g", unit: "नग"),
  ItemModel(name: "डालडा", unit: "नग"),
  ItemModel(name: "गजब चाय 20", unit: "नग"),
  ItemModel(name: "चायपत्ती 20", unit: "नग"),
  ItemModel(name: "नारियल", unit: "नग"),
  ItemModel(name: "सरगम 1kg", unit: "नग"),
  ItemModel(name: "सरगम निरमा 10", unit: "नग"),
  ItemModel(name: "अगरबत्ती सेंट वाला 10", unit: "नग"),
  ItemModel(name: "आशिकी", unit: "पूड़ा"),
  ItemModel(name: "गुड़ाखू", unit: "पूड़ा"),
  ItemModel(name: "राजश्री", unit: "पूड़ा"),
  ItemModel(name: "तारा", unit: "पूड़ा"),
  ItemModel(name: "मिच्चर 5 वाला", unit: "पूड़ा"),
  ItemModel(name: "चायपत्ती 10", unit: "पूड़ा"),
  ItemModel(name: "हल्दी पाउडर 10", unit: "पूड़ा"),
  ItemModel(name: "मिर्च पाउडर 10", unit: "पूड़ा"),
  ItemModel(name: "धनिया पाउडर 10", unit: "पूड़ा"),
  ItemModel(name: "हल्दी पाउडर 20", unit: "पूड़ा"),
  ItemModel(name: "मिर्च पाउडर 20", unit: "पूड़ा"),
  ItemModel(name: "धनिया पाउडर 20", unit: "पूड़ा"),
  ItemModel(name: "क्रैक जैक 5", unit: "पूड़ा"),
  ItemModel(name: "पतंजलि b5", unit: "पूड़ा"),
  ItemModel(name: "पतंजलि b10", unit: "पूड़ा"),
  ItemModel(name: "पारले जी", unit: "पूड़ा"),
  ItemModel(name: "नारियल बिस्कुट", unit: "पूड़ा"),
  ItemModel(name: "तम्बाकू", unit: "पूड़ा"),
  ItemModel(name: "अन्नी ब्लैक", unit: "पूड़ा"),
  ItemModel(name: "अन्नी कपरी", unit: "पूड़ा"),
  ItemModel(name: "माचिस 5", unit: "पूड़ा"),
  ItemModel(name: "माचिस", unit: "पूड़ा"),
  ItemModel(name: "अगरबत्ती 10", unit: "पूड़ा"),
  ItemModel(name: "क्रैक जैक", unit: "पूड़ा"),
  ItemModel(name: "दन्तकांति 20", unit: "पूड़ा"),
  ItemModel(name: "दन्तकांति 10", unit: "पूड़ा"),
  ItemModel(name: "तेल 1 लीटर", unit: "पेटी"),
  ItemModel(name: "तेल ½ लीटर", unit: "पेटी"),
  ItemModel(name: "तोष", unit: "पेटी"),
  ItemModel(name: "बल्ब 60w", unit: "पेटी"),
  ItemModel(name: "बल्ब", unit: "पेटी"),
  ItemModel(name: "तेल (kg)", unit: "टिन"),
  ItemModel(name: "शंकरभोग (kg)", unit: "टिन"),
  ItemModel(name: "शंकरभोग तेल (kg)", unit: "टिन"),
  ItemModel(name: "शंकरभोग तेल", unit: "टिन"),
  ItemModel(name: "शक्कर", unit: "बोरी"),
  ItemModel(name: "सेवई", unit: "नग"),
  ItemModel(name: "सरगम निरमा 1kg", unit: "नग"),
  ItemModel(name: "चुना रंग 10", unit: "नग"),
  ItemModel(name: "चुना रंग 20", unit: "नग"),
  ItemModel(name: "तारा जर्दा", unit: "पूड़ा"),
  ItemModel(name: "पेपर", unit: "KG"),
  ItemModel(name: "टकाटक हरा", unit: "पत्ता"),
];

List<SavedListModel> historyLists = [];

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pravin Dhiver - Kilepar'),
        backgroundColor: const Color(0xFF002b5c),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Saved Lists (Non-Editable)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF002b5c)),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: historyLists.isEmpty
                  ? const Center(child: Text('Abhi tak koi list save nahi ki gayi hai.'))
                  : ListView.builder(
                      itemCount: historyLists.length,
                      itemBuilder: (context, index) {
                        final history = historyLists[index];
                        return Card(
                          child: ListTile(
                            title: Text("List #${historyLists.length - index} - Date: ${history.date}"),
                            subtitle: Text("Total Items: ${history.items.length}"),
                            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ViewSavedScreen(savedList: history),
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF002b5c)).wrap(
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF002b5c), padding: const EdgeInsets.all(14)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const NewEntryScreen()),
                    ).then((value) => setState(() {}));
                  },
                  child: const Text('➕ New Entry Karein', style: TextStyle(fontSize: 16, color: Colors.white)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NewEntryScreen extends StatefulWidget {
  const NewEntryScreen({super.key});

  @override
  State<NewEntryScreen> createState() => _NewEntryScreenState();
}

class _NewEntryScreenState extends State<NewEntryScreen> {
  final TextEditingController _newItemController = TextEditingController();
  String _selectedNewUnit = 'KG';

  @override
  Widget build(BuildContext context) {
    String currentDate = DateFormat('d MMMM yyyy').format(DateTime.now());
    int selectedCount = masterItems.where((i) => i.isSelected).length;

    return Scaffold(
      appBar: AppBar(
        title: const Text('New Entry - Pravin Dhiver'),
        backgroundColor: const Color(0xFF002b5c),
      ),
      body: Column(
        children: [
          // Header matching reference
          Container(
            padding: const EdgeInsets.all(10),
            color: const Color(0xFFf1f5f9),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Pravin Dhiver', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF002b5c))),
                const Text('Kilepar', style: TextStyle(fontSize: 12, color: Colors.grey)),
                const Divider(color: Color(0xFF002b5c)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Date: $currentDate', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                    Text('Total Items : $selectedCount', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                  ],
                ),
              ],
            ),
          ),
          // Table header
          Container(
            color: const Color(0xFF002b5c),
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            child: const Row(
              children: [
                SizedBox(width: 40, child: Text('Sel', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                SizedBox(width: 40, child: Text('No.', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                Expanded(child: Text('Name List', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                SizedBox(width: 60, child: Text('Quantity', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), textAlign: TextAlign.center)),
                SizedBox(width: 50, child: Text('Unit', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), textAlign: TextAlign.end)),
              ],
            ),
          ),
          // Item List
          Expanded(
            child: ListView.builder(
              itemCount: masterItems.length,
              itemBuilder: (context, index) {
                final item = masterItems[index];
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey.shade300))),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 40,
                        child: Checkbox(
                          value: item.isSelected,
                          onChanged: (val) {
                            setState(() {
                              item.isSelected = val ?? false;
                            });
                          },
                        ),
                      ),
                      SizedBox(width: 40, child: Text('${index + 1}')),
                      Expanded(child: Text(item.name, style: const TextStyle(fontSize: 13))),
                      SizedBox(
                        width: 60,
                        height: 30,
                        child: TextField(
                          keyboardType: TextInputType.number, // Sirf number keypad khulega
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 12),
                          decoration: const InputDecoration(
                            hintText: '-',
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.zero,
                          ),
                          onChanged: (val) {
                            item.quantity = val;
                          },
                        ),
                      ),
                      const SizedBox(width: 10),
                      SizedBox(width: 45, child: Text(item.unit, textAlign: TextAlign.end, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold))),
                    ],
                  ),
                );
              },
            ),
          ),
          // Naya saman jodne ka box
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.grey.shade100,
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _newItemController,
                    decoration: const InputDecoration(hintText: 'Naya saman naam...', isDense: true, border: OutlineInputBorder()),
                  ),
                ),
                const SizedBox(width: 5),
                DropdownButton<String>(
                  value: _selectedNewUnit,
                  items: ['KG', 'पैकेट', 'पत्ता', 'नग', 'पूड़ा', 'पेटी', 'टिन', 'बोरी'].map((String unit) {
                    return DropdownMenuItem(value: unit, child: Text(unit, style: const TextStyle(fontSize: 12)));
                  }).toList(),
                  onChanged: (val) {
                    setState(() {
                      _selectedNewUnit = val!;
                    });
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.add_circle, color: Colors.green, size: 30),
                  onPressed: () {
                    if (_newItemController.text.trim().isNotEmpty) {
                      setState(() {
                        masterItems.add(ItemModel(name: _newItemController.text.trim(), unit: _selectedNewUnit));
                        _newItemController.clear();
                      });
                    }
                  },
                )
              ],
            ),
          ),
          // Save Button
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green, padding: const EdgeInsets.all(12)),
                onPressed: () {
                  List<ItemModel> selectedList = masterItems.where((i) => i.isSelected).toList();
                  if (selectedList.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Kripya kam se kam ek saman select karein!')));
                    return;
                  }
                  historyLists.insert(
                    0,
                    SavedListModel(
                      date: currentDate,
                      items: selectedList.map((e) => ItemModel(name: e.name, unit: e.unit, quantity: e.quantity.isEmpty ? '1' : e.quantity)).toList(),
                    ),
                  );
                  // Reset selection
                  for (var i in masterItems) {
                    i.isSelected = false;
                    i.quantity = '';
                  }
                  Navigator.pop(context);
                },
                child: const Text('Save Entry', style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ViewSavedScreen extends StatelessWidget {
  final SavedListModel savedList;
  const ViewSavedScreen({super.key, required this.savedList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Saved List (Non-Editable)'),
        backgroundColor: const Color(0xFF002b5c),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            color: const Color(0xFFf1f5f9),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Pravin Dhiver', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF002b5c))),
                const Text('Kilepar', style: TextStyle(fontSize: 12, color: Colors.grey)),
                const Divider(color: Color(0xFF002b5c)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Date: ${savedList.date}', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                    Text('Total Items : ${savedList.items.length}', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                  ],
                ),
              ],
            ),
          ),
          Container(
            color: const Color(0xFF002b5c),
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            child: const Row(
              children: [
                SizedBox(width: 40, child: Text('No.', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                Expanded(child: Text('Name List', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                SizedBox(width: 60, child: Text('Quantity', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), textAlign: TextAlign.center)),
                SizedBox(width: 50, child: Text('Unit', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), textAlign: TextAlign.end)),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: savedList.items.length,
              itemBuilder: (context, index) {
                final item = savedList.items[index];
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey.shade300))),
                  child: Row(
                    children: [
                      SizedBox(width: 40, child: Text('${index + 1}')),
                      Expanded(child: Text(item.name, style: const TextStyle(fontSize: 13))),
                      SizedBox(width: 60, child: Text(item.quantity, textAlign: TextAlign.center, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13))),
                      const SizedBox(width: 10),
                      SizedBox(width: 45, child: Text(item.unit, textAlign: TextAlign.end, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold))),
                    ],
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

extension on DropdownButton<String> {
  get toDropdownMenuItemList => null;
}
