import 'package:flutter/material.dart';
import 'package:myportofolio_mobile/screens/menu.dart';
import 'package:myportofolio_mobile/screens/project_form.dart';
import 'package:myportofolio_mobile/screens/project_list_screen.dart';
import 'package:myportofolio_mobile/services/auth_state.dart';
import 'package:myportofolio_mobile/widgets/auth_guard.dart';
import 'package:provider/provider.dart';

class ItemCard extends StatelessWidget {
  final ItemHomepage item;

  const ItemCard(this.item, {super.key});

  Future<void> _handleTap(BuildContext context) async {
    if (item.name == 'Lihat Pengalaman') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ProjectListScreen()),
      );
    } else if (item.name == 'Tambah Pengalaman') {
      final allowed = await ensureLoggedIn(context);
      if (!context.mounted || !allowed) return;

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ProjectFormPage()),
      );
    } else if (item.name == 'Logout') {
      final authState = context.read<AuthState>();

      if (!authState.isLoggedIn) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text('You are not logged in.')));
        return;
      }

      await authState.logout();

      if (!context.mounted) return;

      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Logout successful')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: item.color,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: () => _handleTap(context),
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(item.icon, color: Colors.white, size: 30),
                const SizedBox(height: 6),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
