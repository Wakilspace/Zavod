import 'package:flutter/material.dart';
import '../screens/menu/history_screen.dart';
import '../screens/menu/support_screen.dart';
import '../screens/menu/profile_screen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(child: Text("Menu", style: TextStyle(fontSize: 24))),
          ListTile(
            title: const Text("Profile"),
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const ProfileScreen())),
          ),
          ListTile(
            title: const Text("Support"),
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const SupportScreen())),
          ),
          ListTile(
            title: const Text("History"),
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const HistoryScreen())),
          ),
        ],
      ),
    );
  }
}
