import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/profile_provider.dart';
import '../../widgets/custom_drawer.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(profileProvider);
    final notifier = ref.read(profileProvider.notifier);

    final fNameCtrl = TextEditingController(text: profile.firstName);
    final lNameCtrl = TextEditingController(text: profile.lastName);
    final emailCtrl = TextEditingController(text: profile.email);

    return Scaffold(
      appBar: AppBar(title: const Text("Profile")),
      drawer: const CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: fNameCtrl, decoration: const InputDecoration(labelText: "First Name")),
            TextField(controller: lNameCtrl, decoration: const InputDecoration(labelText: "Last Name")),
            TextField(controller: emailCtrl, decoration: const InputDecoration(labelText: "Email")),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                notifier.update(fNameCtrl.text, lNameCtrl.text, emailCtrl.text);
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Profile Saved")));
              },
              child: const Text("Save"),
            ),
          ],
        ),
      ),
    );
  }
}
