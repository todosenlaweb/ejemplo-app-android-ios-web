# adminTest_api.api.AttemptsApi

## Load the API package
```dart
import 'package:adminTest_api/api.dart';
```

All URIs are relative to *https://us-central1-your-project.cloudfunctions.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**finishAttempt**](AttemptsApi.md#finishattempt) | **POST** /finishAttempt | Finalizar intento
[**startQuiz**](AttemptsApi.md#startquiz) | **POST** /startQuiz | Iniciar intento de quiz
[**submitAnswer**](AttemptsApi.md#submitanswer) | **POST** /submitAnswer | Responder pregunta


# **finishAttempt**
> AttemptResult finishAttempt(finishAttemptRequest)

Finalizar intento

HU-09 - Finaliza intento y calcula score final. **HU-18 - Eventos de dominio:** - Emite el evento `QuizAttemptFinished` con los datos del intento finalizado - El evento se procesa de forma asíncrona sin afectar la respuesta **HU-19 - Actualización de estadísticas:** - Las estadísticas del usuario se actualizan automáticamente mediante el evento `QuizAttemptFinished` - No requiere llamadas adicionales, la actualización es transparente 

### Example
```dart
import 'package:adminTest_api/api.dart';
// TODO Configure HTTP Bearer authorization: FirebaseAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('FirebaseAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('FirebaseAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AttemptsApi();
final finishAttemptRequest = FinishAttemptRequest(); // FinishAttemptRequest | 

try {
    final result = api_instance.finishAttempt(finishAttemptRequest);
    print(result);
} catch (e) {
    print('Exception when calling AttemptsApi->finishAttempt: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **finishAttemptRequest** | [**FinishAttemptRequest**](FinishAttemptRequest.md)|  | 

### Return type

[**AttemptResult**](AttemptResult.md)

### Authorization

[FirebaseAuth](../README.md#FirebaseAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **startQuiz**
> StartQuiz200Response startQuiz(publishQuizRequest)

Iniciar intento de quiz

HU-07 - Inicia un intento de quiz publicado. Si el quiz tiene límites de tiempo (globalTimeSeconds o timePerQuestionSeconds),  el intento se marcará como \"expired\" automáticamente si se intenta responder  después de exceder el límite. 

### Example
```dart
import 'package:adminTest_api/api.dart';
// TODO Configure HTTP Bearer authorization: FirebaseAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('FirebaseAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('FirebaseAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AttemptsApi();
final publishQuizRequest = PublishQuizRequest(); // PublishQuizRequest | 

try {
    final result = api_instance.startQuiz(publishQuizRequest);
    print(result);
} catch (e) {
    print('Exception when calling AttemptsApi->startQuiz: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **publishQuizRequest** | [**PublishQuizRequest**](PublishQuizRequest.md)|  | 

### Return type

[**StartQuiz200Response**](StartQuiz200Response.md)

### Authorization

[FirebaseAuth](../README.md#FirebaseAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submitAnswer**
> SubmitAnswer200Response submitAnswer(submitAnswerRequest)

Responder pregunta

HU-08 - Envía respuesta y avanza al siguiente. **HU-12 - Calificación inmediata:** - Si el quiz tiene `gradeMode: \"instant\"`, retorna `isCorrect` (si la respuesta fue correcta) y `score` (progreso actual) **HU-13 - Tips cada X preguntas:** - Si el quiz tiene `tipEveryX` configurado, retorna `shouldShowTip` cuando se alcanza un múltiplo de X preguntas respondidas **HU-14 - Validaciones anti-trampa:** - Solo acepta la siguiente pregunta en secuencia (no se pueden saltar preguntas) - Rechaza respuestas repetidas (misma pregunta) - Rechaza respuestas si el intento no está \"in_progress\" (finalizado/expirado) **HU-15 - Idempotencia:** - Si se reenvía la misma respuesta (mismo selectedOptionId) para una pregunta ya contestada, retorna éxito sin escribir en la base de datos - Si se intenta cambiar la respuesta (selectedOptionId diferente) para una pregunta ya contestada, retorna error 412 QUESTION_ANSWER_MISMATCH **Validaciones de tiempo:** - Si el quiz tiene tempo global (globalTimeSeconds): valida que no se haya excedido - Si el quiz tiene tiempo por pregunta (timePerQuestionSeconds): valida que no se haya excedido   - El tiempo se calcula acumulativo: timePerQuestion × (preguntasRespondidas + 1) - Marca automáticamente como \"expired\" si  se excede cualquier límite de tiempo 

### Example
```dart
import 'package:adminTest_api/api.dart';
// TODO Configure HTTP Bearer authorization: FirebaseAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('FirebaseAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('FirebaseAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AttemptsApi();
final submitAnswerRequest = SubmitAnswerRequest(); // SubmitAnswerRequest | 

try {
    final result = api_instance.submitAnswer(submitAnswerRequest);
    print(result);
} catch (e) {
    print('Exception when calling AttemptsApi->submitAnswer: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submitAnswerRequest** | [**SubmitAnswerRequest**](SubmitAnswerRequest.md)|  | 

### Return type

[**SubmitAnswer200Response**](SubmitAnswer200Response.md)

### Authorization

[FirebaseAuth](../README.md#FirebaseAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

