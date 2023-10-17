import 'package:flutter/material.dart';
import 'package:learning_app/kernel/widgets/navigation/bottom_navigation_tab.dart';
import 'package:learning_app/kernel/widgets/splash/splash.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Splash(
              title: 'Cargando',
            ),
        '/menu': (context) => const Menu(),
      },
    );
  }
}

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print(_selectedIndex);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('Menú'),
      ),
      bottomNavigationBar: BottomNavigationTab(
        selectedIndex: 0,
        onItemTapped: (index) {
          print(index);
        },
      ),
    );
  }
}
