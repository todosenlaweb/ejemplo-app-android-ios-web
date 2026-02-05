import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home / Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.leaderboard),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '¡Bienvenido de nuevo!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Resumen del usuario', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Puntos actuales: 1,250'),
                          Text('Liga: Oro'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text('Módulos en progreso', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Card(
                child: Column(
                  children: const [
                    ListTile(
                      leading: Icon(Icons.book),
                      title: Text('Módulo de Gramática'),
                      subtitle: Text('Progreso: 75%'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      leading: Icon(Icons.volume_up),
                      title: Text('Módulo de Escucha'),
                      subtitle: Text('Progreso: 50%'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const Text('Módulos recomendados', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Card(
                child: Column(
                  children: const [
                    ListTile(
                      leading: Icon(Icons.star),
                      title: Text('Nuevo: Módulo de Cultura'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Continuar práctica'),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text('Explorar módulos'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
