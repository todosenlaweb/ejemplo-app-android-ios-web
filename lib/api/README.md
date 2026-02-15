# adminTest_api
API para gestionar quizzes y intentos de respuesta.

## Soporte de tiempo global (HU-10)

Cuando un quiz tiene un `globalTimeSeconds` configurado:
- El intento se inicia con un timestamp `startedAt`
- Al responder una pregunta, se valida que el tiempo transcurrido no exceda el límite
- Si se excede, el intento se marca automáticamente como **\"expired\"** y se rechaza la respuesta
- No se permite responder después de la expiración

## Soporte de tiempo por pregunta (HU-11)

Cuando un quiz tiene un `timePerQuestionSeconds` configurado:
- El tiempo de cada pregunta se suma de forma acumulativa
- Máximo permitido = `timePerQuestionSeconds × (preguntasRespondidas + 1)`
- Ejemplo: si timePerQuestionSeconds = 120 y ya respondió 1 pregunta:
  - En la pregunta 2: debe responder dentro de 240 segundos desde inicio
- Si se excede, el intento se marca automáticamente como **\"expired\"** y se rechaza la respuesta

## Calificación inmediata (HU-12)

Cuando un quiz tiene `gradeMode: \"instant\"`:
- El endpoint `/submitAnswer` retorna inmediatamente si la respuesta fue correcta (campo `isCorrect`)
- También retorna el progreso del intento (campo `score` con correctas/total)
- Permite feedback instantáneo al usuario durante el quiz

## Tips cada X preguntas (HU-13)

Cuando un quiz tiene `tipEveryX` configurado:
- El endpoint `/submitAnswer` determina si es momento de mostrar un tip (campo `shouldShowTip`)
- Un tip se muestra cuando `numeroRespuestas % tipEveryX === 0`
- Ejemplo: si tipEveryX = 3, se muestran tips después de las preguntas 3, 6, 9, etc.
- El cliente es responsable de obtener y mostrar el contenido del tip

## Prevención de trampas (HU-14)

El sistema implementa validaciones estrictas para prevenir manipulación:
- **Secuencia de preguntas**: Solo se acepta responder la siguiente pregunta en orden secuencial. No se pueden saltar preguntas ni responder fuera de orden.
- **Respuestas únicas**: No se acepta responder la misma pregunta más de una vez.
- **Estado del intento**: No se aceptan respuestas si el intento no está en estado \"in_progress\" (rechaza intentos finalizados o expirados).
- Todas estas validaciones se realizan en el servidor para garantizar integridad.

## Idempotencia (HU-15)

El endpoint `/submitAnswer` es idempotente para evitar escrituras duplicadas por reintentos de red:
- **Mismo intento de respuesta**: Si se envía la misma respuesta (mismo `selectedOptionId`) para una pregunta ya contestada, el servidor retorna la misma respuesta exitosa sin realizar una nueva escritura en la base de datos.
- **Cambio de respuesta**: Si se intenta enviar una respuesta diferente (`selectedOptionId` distinto) para una pregunta ya contestada, se rechaza con error `QUESTION_ANSWER_MISMATCH` (código 412).
- Esto garantiza que los reintentos automáticos de red no corrompan los datos del intento.

## Eventos de dominio (HU-18)

El sistema emite eventos de dominio para desacoplar la lógica de negocio:
- **QuizAttemptFinished**: Se emite cuando un intento de quiz se finaliza exitosamente mediante `/finishAttempt`
  - Contiene: `userId`, `quizId`, `score` (correctas), `total` (preguntas), `timeUsedSeconds`
  - Permite actualizar estadísticas y ejecutar lógica adicional sin acoplar el flujo principal
- Los eventos se procesan de forma asíncrona sin bloquear la respuesta al cliente
- **Arquitectura limpia**: Los eventos no dependen directamente de Firestore, solo de las entidades de dominio

## Estadísticas de usuario (HU-19)

El sistema mantiene estadísticas agregadas por usuario:
- **Actualización automática**: Las estadísticas se actualizan automáticamente cuando un intento finaliza, usando el evento `QuizAttemptFinished`
- **Sin recálculo**: Las métricas son agregadas, no se recalculan leyendo respuestas individuales
- **Métricas disponibles**: quizzes completados, promedio de score, mejor score, total de preguntas respondidas, total de correctas, accuracy %
- **Endpoint**: `/getUserStats` retorna las estadísticas del usuario autenticado
- **Documento**: Almacenado en `user_stats/{userId}` con actualización incremental

## Estadísticas de quiz (HU-20)

El sistema mantiene estadísticas agregadas por quiz para evaluar dificultad:
- **Actualización automática**: Se actualizan mediante el evento `QuizAttemptFinished` (igual que HU-19)
- **Métricas de desempeño**: total de intentos, score promedio, tasa de finalización (100%), tiempo promedio por intento
- **Endpoint**: `/getQuizStats` retorna las estadísticas del quiz (acceso autenticado)
- **Documento**: Almacenado en `quiz_stats/{quizId}` con actualización incremental
- **Casos de uso**: identificar quizzes difíciles, medir engagement, optimizar contenido

## Ranking por Quiz (HU-23)

Sistema de leaderboard para estandarizar competencia entre jugadores:
- **Estructura**: Cada quiz tiene su propio leaderboard con top 50 intentos
- **Actualización automática**: Entradas creadas al finalizar cada intento mediante el evento `QuizAttemptFinished`
- **Ordenamiento**: Score descendente (ganador = mayor score), desempate por tiempo ascendente (menor tiempo = mejor)
- **Almacenamiento**: Colección `quiz_leaderboard/{quizId}/entries` con documentos por intento
- **Índice Firestore**: Composite index (score DESC, timeSpentSeconds ASC) para queries eficientes sin full-scan
- **Endpoint**: `/getQuizLeaderboard` retorna top N (default 50) jugadores del quiz, públicamente accesible
- **Casos de uso**: mostrar ranking en UI de quiz, motivar competencia, identificar mejores jugadores


This Dart package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0.0
- Generator version: 7.19.0
- Build package: org.openapitools.codegen.languages.DartClientCodegen
For more information, please visit [http://example.com](http://example.com)

## Requirements

Dart 2.12 or later

## Installation & Usage

### Github
If this Dart package is published to Github, add the following dependency to your pubspec.yaml
```
dependencies:
  adminTest_api:
    git: https://github.com/GIT_USER_ID/GIT_REPO_ID.git
```

### Local
To use the package in your local drive, add the following dependency to your pubspec.yaml
```
dependencies:
  adminTest_api:
    path: /path/to/adminTest_api
```

## Tests

TODO

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:adminTest_api/api.dart';


final api_instance = AdminApi();
final setAdminClaimRequest = SetAdminClaimRequest(); // SetAdminClaimRequest | 

try {
    final result = api_instance.setAdminClaim(setAdminClaimRequest);
    print(result);
} catch (e) {
    print('Exception when calling AdminApi->setAdminClaim: $e\n');
}

```

## Documentation for API Endpoints

All URIs are relative to *https://us-central1-your-project.cloudfunctions.net*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AdminApi* | [**setAdminClaim**](doc//AdminApi.md#setadminclaim) | **POST** /setAdminClaim | Establecer claim de admin (TEST ONLY)
*AttemptsApi* | [**finishAttempt**](doc//AttemptsApi.md#finishattempt) | **POST** /finishAttempt | Finalizar intento
*AttemptsApi* | [**startQuiz**](doc//AttemptsApi.md#startquiz) | **POST** /startQuiz | Iniciar intento de quiz
*AttemptsApi* | [**submitAnswer**](doc//AttemptsApi.md#submitanswer) | **POST** /submitAnswer | Responder pregunta
*HealthApi* | [**ping**](doc//HealthApi.md#ping) | **POST** /ping | Verificar conexión
*QuizManagementApi* | [**addQuestion**](doc//QuizManagementApi.md#addquestion) | **POST** /addQuestion | Agregar pregunta a quiz
*QuizManagementApi* | [**createQuiz**](doc//QuizManagementApi.md#createquiz) | **POST** /createQuiz | Crear quiz
*QuizManagementApi* | [**getQuizzes**](doc//QuizManagementApi.md#getquizzes) | **POST** /getQuizzes | Listar quizzes
*QuizManagementApi* | [**publishQuiz**](doc//QuizManagementApi.md#publishquiz) | **POST** /publishQuiz | Publicar quiz
*StatsApi* | [**getQuestionStats**](doc//StatsApi.md#getquestionstats) | **POST** /getQuestionStats | Obtener estadísticas de pregunta
*StatsApi* | [**getQuizLeaderboard**](doc//StatsApi.md#getquizleaderboard) | **POST** /getQuizLeaderboard | Obtener ranking del quiz
*StatsApi* | [**getQuizStats**](doc//StatsApi.md#getquizstats) | **POST** /getQuizStats | Obtener estadísticas de quiz
*StatsApi* | [**getUserStats**](doc//StatsApi.md#getuserstats) | **POST** /getUserStats | Obtener estadísticas de usuario
*TestingApi* | [**setAdminClaim**](doc//TestingApi.md#setadminclaim) | **POST** /setAdminClaim | Establecer claim de admin (TEST ONLY)


## Documentation For Models

 - [AddQuestion200Response](doc//AddQuestion200Response.md)
 - [AddQuestionRequest](doc//AddQuestionRequest.md)
 - [AddQuestionRequestOptionsInner](doc//AddQuestionRequestOptionsInner.md)
 - [AttemptResult](doc//AttemptResult.md)
 - [AttemptStatus](doc//AttemptStatus.md)
 - [CreateQuiz200Response](doc//CreateQuiz200Response.md)
 - [CreateQuizRequest](doc//CreateQuizRequest.md)
 - [CreateQuizRequestConfiguration](doc//CreateQuizRequestConfiguration.md)
 - [FinishAttemptRequest](doc//FinishAttemptRequest.md)
 - [GetQuestionStatsRequest](doc//GetQuestionStatsRequest.md)
 - [GetQuizLeaderboardRequest](doc//GetQuizLeaderboardRequest.md)
 - [GetQuizStatsRequest](doc//GetQuizStatsRequest.md)
 - [GetQuizzes200Response](doc//GetQuizzes200Response.md)
 - [GetQuizzes200ResponseQuizzesInner](doc//GetQuizzes200ResponseQuizzesInner.md)
 - [GetQuizzes200ResponseQuizzesInnerConfiguration](doc//GetQuizzes200ResponseQuizzesInnerConfiguration.md)
 - [GetQuizzesRequest](doc//GetQuizzesRequest.md)
 - [LeaderboardEntry](doc//LeaderboardEntry.md)
 - [Ping200Response](doc//Ping200Response.md)
 - [PublishQuiz200Response](doc//PublishQuiz200Response.md)
 - [PublishQuizRequest](doc//PublishQuizRequest.md)
 - [Question](doc//Question.md)
 - [QuestionOptionsInner](doc//QuestionOptionsInner.md)
 - [QuestionStats](doc//QuestionStats.md)
 - [QuizLeaderboard](doc//QuizLeaderboard.md)
 - [QuizStats](doc//QuizStats.md)
 - [Score](doc//Score.md)
 - [SetAdminClaim200Response](doc//SetAdminClaim200Response.md)
 - [SetAdminClaimRequest](doc//SetAdminClaimRequest.md)
 - [StartQuiz200Response](doc//StartQuiz200Response.md)
 - [SubmitAnswer200Response](doc//SubmitAnswer200Response.md)
 - [SubmitAnswerRequest](doc//SubmitAnswerRequest.md)
 - [UserStats](doc//UserStats.md)


## Documentation For Authorization


Authentication schemes defined for the API:
### FirebaseAuth

- **Type**: HTTP Bearer authentication


## Author



