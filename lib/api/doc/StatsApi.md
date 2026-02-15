# adminTest_api.api.StatsApi

## Load the API package
```dart
import 'package:adminTest_api/api.dart';
```

All URIs are relative to *https://us-central1-your-project.cloudfunctions.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getQuestionStats**](StatsApi.md#getquestionstats) | **POST** /getQuestionStats | Obtener estadísticas de pregunta
[**getQuizLeaderboard**](StatsApi.md#getquizleaderboard) | **POST** /getQuizLeaderboard | Obtener ranking del quiz
[**getQuizStats**](StatsApi.md#getquizstats) | **POST** /getQuizStats | Obtener estadísticas de quiz
[**getUserStats**](StatsApi.md#getuserstats) | **POST** /getUserStats | Obtener estadísticas de usuario


# **getQuestionStats**
> QuestionStats getQuestionStats(getQuestionStatsRequest)

Obtener estadísticas de pregunta

HU-21 - Obtiene las estadísticas agregadas de una pregunta específica. Útil para evaluar dificultad de cada pregunta y desempeño de los usuarios en ella. **Parámetros:** - `questionId`: ID de la pregunta para obtener sus estadísticas **Actualización automática:** - Las estadísticas se actualizan automáticamente mediante el evento `QuestionAnswered` cuando los usuarios responden - No se recalculan desde respuestas individuales, son métricas agregadas **Métricas incluidas:** - Total de veces que la pregunta fue respondida - Total de veces que se respondió correctamente - Tasa de error (porcentaje de respuestas incorrectas) - Tiempo promedio de respuesta en segundos 

### Example
```dart
import 'package:adminTest_api/api.dart';
// TODO Configure HTTP Bearer authorization: FirebaseAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('FirebaseAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('FirebaseAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = StatsApi();
final getQuestionStatsRequest = GetQuestionStatsRequest(); // GetQuestionStatsRequest | 

try {
    final result = api_instance.getQuestionStats(getQuestionStatsRequest);
    print(result);
} catch (e) {
    print('Exception when calling StatsApi->getQuestionStats: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **getQuestionStatsRequest** | [**GetQuestionStatsRequest**](GetQuestionStatsRequest.md)|  | 

### Return type

[**QuestionStats**](QuestionStats.md)

### Authorization

[FirebaseAuth](../README.md#FirebaseAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQuizLeaderboard**
> QuizLeaderboard getQuizLeaderboard(getQuizLeaderboardRequest)

Obtener ranking del quiz

HU-23 - Obtiene el ranking de los mejores intentos de un quiz. **Parámetros:** - `quizId`: ID del quiz para obtener su ranking - `limit`: Número máximo de entradas a retornar (1-100, default: 50) **Actualización automática:** - El ranking se actualiza automáticamente al finalizar cada intento mediante el evento `QuizAttemptFinished` - Ordenado por: Score descendente, luego Tiempo ascendente **Índice requerido:** - Composite index en collection `entries`: score (DESC), timeSpentSeconds (ASC) - No se realiza full-scan de la colección 

### Example
```dart
import 'package:adminTest_api/api.dart';

final api_instance = StatsApi();
final getQuizLeaderboardRequest = GetQuizLeaderboardRequest(); // GetQuizLeaderboardRequest | 

try {
    final result = api_instance.getQuizLeaderboard(getQuizLeaderboardRequest);
    print(result);
} catch (e) {
    print('Exception when calling StatsApi->getQuizLeaderboard: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **getQuizLeaderboardRequest** | [**GetQuizLeaderboardRequest**](GetQuizLeaderboardRequest.md)|  | 

### Return type

[**QuizLeaderboard**](QuizLeaderboard.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQuizStats**
> QuizStats getQuizStats(getQuizStatsRequest)

Obtener estadísticas de quiz

HU-20 - Obtiene las estadísticas agregadas de un quiz específico. Útil para evaluar dificultad y desempeño general del quiz. **Parámetros:** - `quizId`: ID del quiz para obtener sus estadísticas **Actualización automática:** - Las estadísticas se actualizan automáticamente al finalizar cada intento mediante el evento `QuizAttemptFinished` - No se recalculan desde intentos individuales, son métricas agregadas **Métricas incluidas:** - Total de intentos realizados en este quiz - Score promedio (%) - Tasa de finalización (porcentaje de intentos completados) - Tiempo promedio invertido por intento en segundos 

### Example
```dart
import 'package:adminTest_api/api.dart';
// TODO Configure HTTP Bearer authorization: FirebaseAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('FirebaseAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('FirebaseAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = StatsApi();
final getQuizStatsRequest = GetQuizStatsRequest(); // GetQuizStatsRequest | 

try {
    final result = api_instance.getQuizStats(getQuizStatsRequest);
    print(result);
} catch (e) {
    print('Exception when calling StatsApi->getQuizStats: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **getQuizStatsRequest** | [**GetQuizStatsRequest**](GetQuizStatsRequest.md)|  | 

### Return type

[**QuizStats**](QuizStats.md)

### Authorization

[FirebaseAuth](../README.md#FirebaseAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserStats**
> UserStats getUserStats()

Obtener estadísticas de usuario

HU-19 - Obtiene las estadísticas agregadas del usuario autenticado. **Actualización automática:** - Las estadísticas se actualizan automáticamente al finalizar cada intento mediante el evento `QuizAttemptFinished` - No se recalculan desde las respuestas individuales, son métricas agregadas **Métricas incluidas:** - Quizzes completados - Promedio de score (%) - Mejor score (%) - Total de preguntas respondidas - Total de respuestas correctas - Accuracy (%) - porcentaje global de aciertos 

### Example
```dart
import 'package:adminTest_api/api.dart';
// TODO Configure HTTP Bearer authorization: FirebaseAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('FirebaseAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('FirebaseAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = StatsApi();

try {
    final result = api_instance.getUserStats();
    print(result);
} catch (e) {
    print('Exception when calling StatsApi->getUserStats: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserStats**](UserStats.md)

### Authorization

[FirebaseAuth](../README.md#FirebaseAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

