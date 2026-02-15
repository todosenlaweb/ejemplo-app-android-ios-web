//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AttemptsApi {
  AttemptsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Finalizar intento
  ///
  /// HU-09 - Finaliza intento y calcula score final. **HU-18 - Eventos de dominio:** - Emite el evento `QuizAttemptFinished` con los datos del intento finalizado - El evento se procesa de forma asíncrona sin afectar la respuesta **HU-19 - Actualización de estadísticas:** - Las estadísticas del usuario se actualizan automáticamente mediante el evento `QuizAttemptFinished` - No requiere llamadas adicionales, la actualización es transparente 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [FinishAttemptRequest] finishAttemptRequest (required):
  Future<Response> finishAttemptWithHttpInfo(FinishAttemptRequest finishAttemptRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/finishAttempt';

    // ignore: prefer_final_locals
    Object? postBody = finishAttemptRequest;

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

  /// Finalizar intento
  ///
  /// HU-09 - Finaliza intento y calcula score final. **HU-18 - Eventos de dominio:** - Emite el evento `QuizAttemptFinished` con los datos del intento finalizado - El evento se procesa de forma asíncrona sin afectar la respuesta **HU-19 - Actualización de estadísticas:** - Las estadísticas del usuario se actualizan automáticamente mediante el evento `QuizAttemptFinished` - No requiere llamadas adicionales, la actualización es transparente 
  ///
  /// Parameters:
  ///
  /// * [FinishAttemptRequest] finishAttemptRequest (required):
  Future<AttemptResult?> finishAttempt(FinishAttemptRequest finishAttemptRequest,) async {
    final response = await finishAttemptWithHttpInfo(finishAttemptRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AttemptResult',) as AttemptResult;
    
    }
    return null;
  }

  /// Iniciar intento de quiz
  ///
  /// HU-07 - Inicia un intento de quiz publicado. Si el quiz tiene límites de tiempo (globalTimeSeconds o timePerQuestionSeconds),  el intento se marcará como \"expired\" automáticamente si se intenta responder  después de exceder el límite. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PublishQuizRequest] publishQuizRequest (required):
  Future<Response> startQuizWithHttpInfo(PublishQuizRequest publishQuizRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/startQuiz';

    // ignore: prefer_final_locals
    Object? postBody = publishQuizRequest;

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

  /// Iniciar intento de quiz
  ///
  /// HU-07 - Inicia un intento de quiz publicado. Si el quiz tiene límites de tiempo (globalTimeSeconds o timePerQuestionSeconds),  el intento se marcará como \"expired\" automáticamente si se intenta responder  después de exceder el límite. 
  ///
  /// Parameters:
  ///
  /// * [PublishQuizRequest] publishQuizRequest (required):
  Future<StartQuiz200Response?> startQuiz(PublishQuizRequest publishQuizRequest,) async {
    final response = await startQuizWithHttpInfo(publishQuizRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StartQuiz200Response',) as StartQuiz200Response;
    
    }
    return null;
  }

  /// Responder pregunta
  ///
  /// HU-08 - Envía respuesta y avanza al siguiente. **HU-12 - Calificación inmediata:** - Si el quiz tiene `gradeMode: \"instant\"`, retorna `isCorrect` (si la respuesta fue correcta) y `score` (progreso actual) **HU-13 - Tips cada X preguntas:** - Si el quiz tiene `tipEveryX` configurado, retorna `shouldShowTip` cuando se alcanza un múltiplo de X preguntas respondidas **HU-14 - Validaciones anti-trampa:** - Solo acepta la siguiente pregunta en secuencia (no se pueden saltar preguntas) - Rechaza respuestas repetidas (misma pregunta) - Rechaza respuestas si el intento no está \"in_progress\" (finalizado/expirado) **HU-15 - Idempotencia:** - Si se reenvía la misma respuesta (mismo selectedOptionId) para una pregunta ya contestada, retorna éxito sin escribir en la base de datos - Si se intenta cambiar la respuesta (selectedOptionId diferente) para una pregunta ya contestada, retorna error 412 QUESTION_ANSWER_MISMATCH **Validaciones de tiempo:** - Si el quiz tiene tempo global (globalTimeSeconds): valida que no se haya excedido - Si el quiz tiene tiempo por pregunta (timePerQuestionSeconds): valida que no se haya excedido   - El tiempo se calcula acumulativo: timePerQuestion × (preguntasRespondidas + 1) - Marca automáticamente como \"expired\" si  se excede cualquier límite de tiempo 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SubmitAnswerRequest] submitAnswerRequest (required):
  Future<Response> submitAnswerWithHttpInfo(SubmitAnswerRequest submitAnswerRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/submitAnswer';

    // ignore: prefer_final_locals
    Object? postBody = submitAnswerRequest;

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

  /// Responder pregunta
  ///
  /// HU-08 - Envía respuesta y avanza al siguiente. **HU-12 - Calificación inmediata:** - Si el quiz tiene `gradeMode: \"instant\"`, retorna `isCorrect` (si la respuesta fue correcta) y `score` (progreso actual) **HU-13 - Tips cada X preguntas:** - Si el quiz tiene `tipEveryX` configurado, retorna `shouldShowTip` cuando se alcanza un múltiplo de X preguntas respondidas **HU-14 - Validaciones anti-trampa:** - Solo acepta la siguiente pregunta en secuencia (no se pueden saltar preguntas) - Rechaza respuestas repetidas (misma pregunta) - Rechaza respuestas si el intento no está \"in_progress\" (finalizado/expirado) **HU-15 - Idempotencia:** - Si se reenvía la misma respuesta (mismo selectedOptionId) para una pregunta ya contestada, retorna éxito sin escribir en la base de datos - Si se intenta cambiar la respuesta (selectedOptionId diferente) para una pregunta ya contestada, retorna error 412 QUESTION_ANSWER_MISMATCH **Validaciones de tiempo:** - Si el quiz tiene tempo global (globalTimeSeconds): valida que no se haya excedido - Si el quiz tiene tiempo por pregunta (timePerQuestionSeconds): valida que no se haya excedido   - El tiempo se calcula acumulativo: timePerQuestion × (preguntasRespondidas + 1) - Marca automáticamente como \"expired\" si  se excede cualquier límite de tiempo 
  ///
  /// Parameters:
  ///
  /// * [SubmitAnswerRequest] submitAnswerRequest (required):
  Future<SubmitAnswer200Response?> submitAnswer(SubmitAnswerRequest submitAnswerRequest,) async {
    final response = await submitAnswerWithHttpInfo(submitAnswerRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SubmitAnswer200Response',) as SubmitAnswer200Response;
    
    }
    return null;
  }
}
