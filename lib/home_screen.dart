
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:adminTest/admin_panel_screen.dart';
import 'package:adminTest/dashboard_screen.dart';
import 'package:adminTest/quizzes_screen.dart';
import 'package:adminTest/stats_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  bool _isAdmin = false;
  bool _isLoading = true; // Para controlar el estado de carga

  late final List<Widget> _screens;
  late final List<String> _titles;

  @override
  void initState() {
    super.initState();
    _checkAdminStatus();
  }

  Future<void> _checkAdminStatus() async {
    final user = FirebaseAuth.instance.currentUser;
    bool isAdmin = false;
    if (user != null) {
      final idTokenResult = await user.getIdTokenResult(true);
      isAdmin = idTokenResult.claims?['admin'] == true;
    }
    setState(() {
      _isAdmin = isAdmin;
      _initializeScreensAndTitles();
      _isLoading = false;
    });
  }

  void _initializeScreensAndTitles() {
    final userScreens = [
      DashboardScreen(isAdmin: _isAdmin),
      const QuizzesScreen(),
      const StatsScreen(),
    ];
    final userTitles = [
      'Inicio',
      'Quizzes',
      'Mis Estadísticas',
    ];

    if (_isAdmin) {
      _screens = [
        ...userScreens,
        const AdminPanelScreen(),
      ];
      _titles = [
        ...userTitles,
        'Panel de Administrador',
      ];
    } else {
      _screens = userScreens;
      _titles = userTitles;
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[_selectedIndex]),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => FirebaseAuth.instance.signOut(),
            tooltip: 'Logout',
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(FirebaseAuth.instance.currentUser?.displayName ?? 'Usuario'),
              accountEmail: Text(FirebaseAuth.instance.currentUser?.email ?? ''),
              currentAccountPicture: CircleAvatar(
                child: Text(FirebaseAuth.instance.currentUser?.email?[0].toUpperCase() ?? 'U'),
              ),
              otherAccountsPictures: [
                if (_isAdmin)
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.admin_panel_settings, color: Colors.blue),
                  )
              ],
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Inicio'),
              selected: _selectedIndex == 0,
              onTap: () => _onItemTapped(0),
            ),
            ListTile(
              leading: const Icon(Icons.quiz),
              title: const Text('Quizzes'),
              selected: _selectedIndex == 1,
              onTap: () => _onItemTapped(1),
            ),
            ListTile(
              leading: const Icon(Icons.bar_chart),
              title: const Text('Mis Estadísticas'),
              selected: _selectedIndex == 2,
              onTap: () => _onItemTapped(2),
            ),
            if (_isAdmin)
              ListTile(
                leading: const Icon(Icons.admin_panel_settings),
                title: const Text('Panel de Administrador'),
                selected: _selectedIndex == 3,
                onTap: () => _onItemTapped(3),
              ),
          ],
        ),
      ),
      body: _screens[_selectedIndex],
    );
  }
}
