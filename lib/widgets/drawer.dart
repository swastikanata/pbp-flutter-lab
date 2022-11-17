import 'package:flutter/material.dart';

Drawer buildDrawer(BuildContext context) {
  String? route = ModalRoute.of(context)?.settings.name;

  return Drawer(
    child: Column(
      children: [
        // Menambahkan clickable menu
        ListTile(
          title: const Text('counter_7'),
          onTap: () {
            // Route menu ke counter
            if (route == '/') {
              Navigator.pop(context);
            } else {
              Navigator.pushReplacementNamed(context, '/');
            }
          },
        ),
        ListTile(
          title: const Text('Tambah Budget'),
          onTap: () {
            if (route == '/budget-form') {
              Navigator.pop(context);
            } else {
              Navigator.pushReplacementNamed(context, '/budget-form');
            }
            // Route menu ke tambah budget
          },
        ),
        ListTile(
          title: const Text('Data Budget'),
          onTap: () {
            if (route == '/budget-list') {
              Navigator.pop(context);
            } else {
              Navigator.pushReplacementNamed(context, '/budget-list');
            }
            // Route menu ke data budget
          },
        ),
      ],
    ),
  );
}
