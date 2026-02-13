
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  final bool isAdmin;
  const DashboardScreen({super.key, required this.isAdmin});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '¡Bienvenido!',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 20),
          Card(
            elevation: 4,
            color: isAdmin ? Colors.blue.shade100 : Colors.green.shade100,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Text(
                isAdmin ? 'Rol: Administrador' : 'Rol: Usuario',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: isAdmin ? Colors.blue.shade900 : Colors.green.shade900,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
