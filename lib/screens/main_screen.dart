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

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(Icons.grid_view, "Overview", 0),
            _buildNavItem(Icons.grid_view, "Records", 1),
            const SizedBox(width: 40),
            _buildNavItem(Icons.grid_view, "Migrate", 2),
            _buildNavItem(Icons.grid_view, "Settings", 3),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        shape: const CircleBorder(),
        onPressed: () => {},
        child: const Icon(Icons.add, color: Colors.white),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    final bool isSelected = _selectedIndex == index;
    return InkWell(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: isSelected ? Colors.black : Colors.grey),
          Text(
            label,
            style: TextStyle(color: isSelected ? Colors.black : Colors.grey),
          ),
        ],
      ),
    );
  }
}
