//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class StatsApi {
  StatsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Obtener estadísticas de pregunta
  ///
  /// HU-21 - Obtiene las estadísticas agregadas de una pregunta específica. Útil para evaluar dificultad de cada pregunta y desempeño de los usuarios en ella. **Parámetros:** - `questionId`: ID de la pregunta para obtener sus estadísticas **Actualización automática:** - Las estadísticas se actualizan automáticamente mediante el evento `QuestionAnswered` cuando los usuarios responden - No se recalculan desde respuestas individuales, son métricas agregadas **Métricas incluidas:** - Total de veces que la pregunta fue respondida - Total de veces que se respondió correctamente - Tasa de error (porcentaje de respuestas incorrectas) - Tiempo promedio de respuesta en segundos 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [GetQuestionStatsRequest] getQuestionStatsRequest (required):
  Future<Response> getQuestionStatsWithHttpInfo(GetQuestionStatsRequest getQuestionStatsRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/getQuestionStats';

    // ignore: prefer_final_locals
    Object? postBody = getQuestionStatsRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Obtener estadísticas de pregunta
  ///
  /// HU-21 - Obtiene las estadísticas agregadas de una pregunta específica. Útil para evaluar dificultad de cada pregunta y desempeño de los usuarios en ella. **Parámetros:** - `questionId`: ID de la pregunta para obtener sus estadísticas **Actualización automática:** - Las estadísticas se actualizan automáticamente mediante el evento `QuestionAnswered` cuando los usuarios responden - No se recalculan desde respuestas individuales, son métricas agregadas **Métricas incluidas:** - Total de veces que la pregunta fue respondida - Total de veces que se respondió correctamente - Tasa de error (porcentaje de respuestas incorrectas) - Tiempo promedio de respuesta en segundos 
  ///
  /// Parameters:
  ///
  /// * [GetQuestionStatsRequest] getQuestionStatsRequest (required):
  Future<QuestionStats?> getQuestionStats(GetQuestionStatsRequest getQuestionStatsRequest,) async {
    final response = await getQuestionStatsWithHttpInfo(getQuestionStatsRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QuestionStats',) as QuestionStats;
    
    }
    return null;
  }

  /// Obtener ranking del quiz
  ///
  /// HU-23 - Obtiene el ranking de los mejores intentos de un quiz. **Parámetros:** - `quizId`: ID del quiz para obtener su ranking - `limit`: Número máximo de entradas a retornar (1-100, default: 50) **Actualización automática:** - El ranking se actualiza automáticamente al finalizar cada intento mediante el evento `QuizAttemptFinished` - Ordenado por: Score descendente, luego Tiempo ascendente **Índice requerido:** - Composite index en collection `entries`: score (DESC), timeSpentSeconds (ASC) - No se realiza full-scan de la colección 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [GetQuizLeaderboardRequest] getQuizLeaderboardRequest (required):
  Future<Response> getQuizLeaderboardWithHttpInfo(GetQuizLeaderboardRequest getQuizLeaderboardRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/getQuizLeaderboard';

    // ignore: prefer_final_locals
    Object? postBody = getQuizLeaderboardRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Obtener ranking del quiz
  ///
  /// HU-23 - Obtiene el ranking de los mejores intentos de un quiz. **Parámetros:** - `quizId`: ID del quiz para obtener su ranking - `limit`: Número máximo de entradas a retornar (1-100, default: 50) **Actualización automática:** - El ranking se actualiza automáticamente al finalizar cada intento mediante el evento `QuizAttemptFinished` - Ordenado por: Score descendente, luego Tiempo ascendente **Índice requerido:** - Composite index en collection `entries`: score (DESC), timeSpentSeconds (ASC) - No se realiza full-scan de la colección 
  ///
  /// Parameters:
  ///
  /// * [GetQuizLeaderboardRequest] getQuizLeaderboardRequest (required):
  Future<QuizLeaderboard?> getQuizLeaderboard(GetQuizLeaderboardRequest getQuizLeaderboardRequest,) async {
    final response = await getQuizLeaderboardWithHttpInfo(getQuizLeaderboardRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QuizLeaderboard',) as QuizLeaderboard;
    
    }
    return null;
  }

  /// Obtener estadísticas de quiz
  ///
  /// HU-20 - Obtiene las estadísticas agregadas de un quiz específico. Útil para evaluar dificultad y desempeño general del quiz. **Parámetros:** - `quizId`: ID del quiz para obtener sus estadísticas **Actualización automática:** - Las estadísticas se actualizan automáticamente al finalizar cada intento mediante el evento `QuizAttemptFinished` - No se recalculan desde intentos individuales, son métricas agregadas **Métricas incluidas:** - Total de intentos realizados en este quiz - Score promedio (%) - Tasa de finalización (porcentaje de intentos completados) - Tiempo promedio invertido por intento en segundos 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [GetQuizStatsRequest] getQuizStatsRequest (required):
  Future<Response> getQuizStatsWithHttpInfo(GetQuizStatsRequest getQuizStatsRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/getQuizStats';

    // ignore: prefer_final_locals
    Object? postBody = getQuizStatsRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Obtener estadísticas de quiz
  ///
  /// HU-20 - Obtiene las estadísticas agregadas de un quiz específico. Útil para evaluar dificultad y desempeño general del quiz. **Parámetros:** - `quizId`: ID del quiz para obtener sus estadísticas **Actualización automática:** - Las estadísticas se actualizan automáticamente al finalizar cada intento mediante el evento `QuizAttemptFinished` - No se recalculan desde intentos individuales, son métricas agregadas **Métricas incluidas:** - Total de intentos realizados en este quiz - Score promedio (%) - Tasa de finalización (porcentaje de intentos completados) - Tiempo promedio invertido por intento en segundos 
  ///
  /// Parameters:
  ///
  /// * [GetQuizStatsRequest] getQuizStatsRequest (required):
  Future<QuizStats?> getQuizStats(GetQuizStatsRequest getQuizStatsRequest,) async {
    final response = await getQuizStatsWithHttpInfo(getQuizStatsRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QuizStats',) as QuizStats;
    
    }
    return null;
  }

  /// Obtener estadísticas de usuario
  ///
  /// HU-19 - Obtiene las estadísticas agregadas del usuario autenticado. **Actualización automática:** - Las estadísticas se actualizan automáticamente al finalizar cada intento mediante el evento `QuizAttemptFinished` - No se recalculan desde las respuestas individuales, son métricas agregadas **Métricas incluidas:** - Quizzes completados - Promedio de score (%) - Mejor score (%) - Total de preguntas respondidas - Total de respuestas correctas - Accuracy (%) - porcentaje global de aciertos 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getUserStatsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/getUserStats';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Obtener estadísticas de usuario
  ///
  /// HU-19 - Obtiene las estadísticas agregadas del usuario autenticado. **Actualización automática:** - Las estadísticas se actualizan automáticamente al finalizar cada intento mediante el evento `QuizAttemptFinished` - No se recalculan desde las respuestas individuales, son métricas agregadas **Métricas incluidas:** - Quizzes completados - Promedio de score (%) - Mejor score (%) - Total de preguntas respondidas - Total de respuestas correctas - Accuracy (%) - porcentaje global de aciertos 
  Future<UserStats?> getUserStats() async {
    final response = await getUserStatsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserStats',) as UserStats;
    
    }
    return null;
  }
}
