import 'package:flutter/material.dart';
import 'package:profiling/screens/contents/migrate.dart';
import 'package:profiling/screens/contents/overview.dart';
import 'package:profiling/screens/contents/record.dart';
import 'package:profiling/screens/contents/settings.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _selectedIndex = 0;


  final List<Widget> _screens = [
    const OverviewScreen(),
    const RecordScreen(),
    const MigrateScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

