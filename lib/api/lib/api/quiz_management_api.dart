//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class QuizManagementApi {
  QuizManagementApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Agregar pregunta a quiz
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AddQuestionRequest] addQuestionRequest (required):
  Future<Response> addQuestionWithHttpInfo(AddQuestionRequest addQuestionRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/addQuestion';

    // ignore: prefer_final_locals
    Object? postBody = addQuestionRequest;

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

  /// Agregar pregunta a quiz
  ///
  /// Parameters:
  ///
  /// * [AddQuestionRequest] addQuestionRequest (required):
  Future<AddQuestion200Response?> addQuestion(AddQuestionRequest addQuestionRequest,) async {
    final response = await addQuestionWithHttpInfo(addQuestionRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AddQuestion200Response',) as AddQuestion200Response;
    
    }
    return null;
  }

  /// Crear quiz
  ///
  /// Crea un nuevo quiz en estado draft (requiere admin)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateQuizRequest] createQuizRequest (required):
  Future<Response> createQuizWithHttpInfo(CreateQuizRequest createQuizRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/createQuiz';

    // ignore: prefer_final_locals
    Object? postBody = createQuizRequest;

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

  /// Crear quiz
  ///
  /// Crea un nuevo quiz en estado draft (requiere admin)
  ///
  /// Parameters:
  ///
  /// * [CreateQuizRequest] createQuizRequest (required):
  Future<CreateQuiz200Response?> createQuiz(CreateQuizRequest createQuizRequest,) async {
    final response = await createQuizWithHttpInfo(createQuizRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateQuiz200Response',) as CreateQuiz200Response;
    
    }
    return null;
  }

  /// Listar quizzes
  ///
  /// Retorna lista de quizzes. Por defecto solo devuelve quizzes publicados. Para listar drafts, se requiere rol de admin. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [GetQuizzesRequest] getQuizzesRequest:
  Future<Response> getQuizzesWithHttpInfo({ GetQuizzesRequest? getQuizzesRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/getQuizzes';

    // ignore: prefer_final_locals
    Object? postBody = getQuizzesRequest;

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

  /// Listar quizzes
  ///
  /// Retorna lista de quizzes. Por defecto solo devuelve quizzes publicados. Para listar drafts, se requiere rol de admin. 
  ///
  /// Parameters:
  ///
  /// * [GetQuizzesRequest] getQuizzesRequest:
  Future<GetQuizzes200Response?> getQuizzes({ GetQuizzesRequest? getQuizzesRequest, }) async {
    final response = await getQuizzesWithHttpInfo( getQuizzesRequest: getQuizzesRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetQuizzes200Response',) as GetQuizzes200Response;
    
    }
    return null;
  }

  /// Publicar quiz
  ///
  /// Publica un quiz en estado draft (requiere admin)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PublishQuizRequest] publishQuizRequest (required):
  Future<Response> publishQuizWithHttpInfo(PublishQuizRequest publishQuizRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/publishQuiz';

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

  /// Publicar quiz
  ///
  /// Publica un quiz en estado draft (requiere admin)
  ///
  /// Parameters:
  ///
  /// * [PublishQuizRequest] publishQuizRequest (required):
  Future<PublishQuiz200Response?> publishQuiz(PublishQuizRequest publishQuizRequest,) async {
    final response = await publishQuizWithHttpInfo(publishQuizRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PublishQuiz200Response',) as PublishQuiz200Response;
    
    }
    return null;
  }
}
