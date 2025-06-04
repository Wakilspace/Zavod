import 'package:flutter/material.dart';
import 'package:zavod_app/src/widgets/custom_drawer.dart';
//import '../../../models/navigation_record.dart';
import '../../models/navigation_record.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<NavigationRecord> navHistory = [
      NavigationRecord(from: 'Yaba', to: 'Ikeja'),
      NavigationRecord(from: 'Lekki', to: 'Ajah'),
      NavigationRecord(from: 'Ikoyi', to: 'VI'),
      NavigationRecord(from: 'CMS', to: 'Oshodi'),
      NavigationRecord(from: 'Surulere', to: 'Ojota'),
    ];

    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(title: const Text('Navigation History')),
      body: ListView.builder(
        itemCount: navHistory.length,
        itemBuilder: (context, index) {
          final record = navHistory[index];
          return Card(
            child: ListTile(
              title: Text("From: ${record.from}"),
              subtitle: Text("To: ${record.to}"),
              leading: const Icon(Icons.history),
            ),
          );
        },
      ),
    );
  }
}
