
import 'package:adminTest_api/api.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ApiService {
  // No usamos un singleton simple porque la inicialización es asíncrona.
  // En su lugar, podríamos usar un provider o un patrón similar para 
  // gestionar la instancia del servicio en la app.

  final QuizManagementApi _quizApi;
  final AdminApi _adminApi;

  ApiService(Authentication authentication) 
      : _quizApi = QuizManagementApi(ApiClient(authentication: authentication)),
        _adminApi = AdminApi(ApiClient(authentication: authentication));

  // Método estático para crear una instancia del servicio con el token de Firebase.
  static Future<ApiService> create() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      throw Exception('Usuario no autenticado. No se puede crear el ApiService.');
    }
    
    final token = await user.getIdToken(true);
    final auth = HttpBearerAuth()..accessToken = token;
    
    return ApiService(auth);
  }

  // Método para obtener la lista de quizzes
  Future<List<GetQuizzes200ResponseQuizzesInner>> getQuizzes() async {
    try {
      final response = await _quizApi.getQuizzes();
      return response?.quizzes ?? [];
    } catch (e) {
      print('Error al obtener los quizzes: $e');
      // Puedes agregar un manejo de errores más detallado aquí.
      return [];
    }
  }
  
  // Aquí se podrían añadir más métodos para otras llamadas a la API (crear quiz, etc.)
}
