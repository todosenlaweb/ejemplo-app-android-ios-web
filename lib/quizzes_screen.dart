
import 'package:adminTest/api_service.dart';
import 'package:adminTest_api/api.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class QuizzesScreen extends StatefulWidget {
  const QuizzesScreen({super.key});

  @override
  State<QuizzesScreen> createState() => _QuizzesScreenState();
}

class _QuizzesScreenState extends State<QuizzesScreen> {
  // El Future ahora contendrá el servicio de API ya inicializado.
  Future<ApiService>? _apiServiceFuture;
  // El Future para los quizzes se obtiene del servicio.
  Future<List<GetQuizzes200ResponseQuizzesInner>>? _quizzesFuture;
  bool _isAdmin = false;

  @override
  void initState() {
    super.initState();
    // Iniciamos la inicialización del servicio y la carga de datos.
    _initializeServiceAndLoadData();
  }

  Future<void> _initializeServiceAndLoadData() async {
    // Primero, verificamos el estado de administrador.
    await _checkAdminStatus();
    
    // Luego, creamos la instancia del ApiService.
    final apiServiceFuture = ApiService.create();
    
    // Asignamos los futures a las variables de estado para que el 
    // FutureBuilder pueda usarlos.
    setState(() {
      _apiServiceFuture = apiServiceFuture;
      // Una vez que el servicio esté listo, le pedimos los quizzes.
      _quizzesFuture = apiServiceFuture.then((service) => service.getQuizzes());
    });
  }

  Future<void> _checkAdminStatus() async {
    final user = FirebaseAuth.instance.currentUser;
    bool isAdmin = false;
    if (user != null) {
      final idTokenResult = await user.getIdTokenResult();
      isAdmin = idTokenResult.claims?['admin'] == true;
    }
    setState(() {
      _isAdmin = isAdmin;
    });
  }

  // Método para recargar los quizzes.
  Future<void> _loadQuizzes() async {
    // Nos aseguramos de que el servicio esté inicializado antes de llamar.
    final service = await _apiServiceFuture;
    if (service != null) {
      setState(() {
        _quizzesFuture = service.getQuizzes();
      });
    }
  }

  void _navigateToCreateQuiz() {
    // Navegación a la pantalla de creación de quizzes (a implementar)
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Navegando a la creación de quizzes...')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Usamos un FutureBuilder para esperar a que el ApiService esté listo.
      body: FutureBuilder<ApiService>(
        future: _apiServiceFuture,
        builder: (context, apiServiceSnapshot) {
          if (apiServiceSnapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator(key: ValueKey('loading_service')));
          }
          if (apiServiceSnapshot.hasError) {
            return Center(
              child: Text('Error al inicializar el servicio: ${apiServiceSnapshot.error}'),
            );
          }
          if (!apiServiceSnapshot.hasData) {
            return const Center(child: Text('No se pudo inicializar el servicio.'));
          }

          // Una vez que el servicio está listo, usamos otro FutureBuilder para los quizzes.
          return FutureBuilder<List<GetQuizzes200ResponseQuizzesInner>>(
            future: _quizzesFuture,
            builder: (context, quizSnapshot) {
              if (quizSnapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator(key: ValueKey('loading_quizzes')));
              }
              if (quizSnapshot.hasError) {
                return Center(
                  child: Text('Error al cargar los quizzes: ${quizSnapshot.error}'),
                );
              }
              if (!quizSnapshot.hasData || quizSnapshot.data!.isEmpty) {
                return const Center(
                  child: Text('No hay quizzes disponibles.', style: TextStyle(fontSize: 18)),
                );
              }

              final quizzes = quizSnapshot.data!;
              final isPublished = GetQuizzes200ResponseQuizzesInnerStatusEnum.published;

              return RefreshIndicator(
                onRefresh: _loadQuizzes,
                child: ListView.builder(
                  padding: const EdgeInsets.all(16.0),
                  itemCount: quizzes.length,
                  itemBuilder: (context, index) {
                    final quiz = quizzes[index];
                    final bool isQuizPublished = quiz.status == isPublished;

                    return Card(
                      elevation: 4,
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      child: ListTile(
                        leading: Icon(
                          isQuizPublished ? Icons.public : Icons.public_off,
                          color: isQuizPublished ? Colors.green : Colors.grey,
                        ),
                        title: Text(quiz.title ?? 'Sin Título', style: const TextStyle(fontWeight: FontWeight.bold)),
                        subtitle: Text('ID: ${quiz.id}'),
                        trailing: const Icon(Icons.arrow_forward_ios),
                        onTap: () {
                          // TODO: Navegar al detalle del quiz
                        },
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: _isAdmin
          ? FloatingActionButton.extended(
              onPressed: _navigateToCreateQuiz,
              icon: const Icon(Icons.add),
              label: const Text('Crear Quiz'),
            )
          : null,
    );
  }
}
