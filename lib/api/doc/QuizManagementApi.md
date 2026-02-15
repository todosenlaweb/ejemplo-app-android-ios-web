# adminTest_api.api.QuizManagementApi

## Load the API package
```dart
import 'package:adminTest_api/api.dart';
```

All URIs are relative to *https://us-central1-your-project.cloudfunctions.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addQuestion**](QuizManagementApi.md#addquestion) | **POST** /addQuestion | Agregar pregunta a quiz
[**createQuiz**](QuizManagementApi.md#createquiz) | **POST** /createQuiz | Crear quiz
[**getQuizzes**](QuizManagementApi.md#getquizzes) | **POST** /getQuizzes | Listar quizzes
[**publishQuiz**](QuizManagementApi.md#publishquiz) | **POST** /publishQuiz | Publicar quiz


# **addQuestion**
> AddQuestion200Response addQuestion(addQuestionRequest)

Agregar pregunta a quiz

### Example
```dart
import 'package:adminTest_api/api.dart';
// TODO Configure HTTP Bearer authorization: FirebaseAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('FirebaseAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('FirebaseAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = QuizManagementApi();
final addQuestionRequest = AddQuestionRequest(); // AddQuestionRequest | 

try {
    final result = api_instance.addQuestion(addQuestionRequest);
    print(result);
} catch (e) {
    print('Exception when calling QuizManagementApi->addQuestion: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **addQuestionRequest** | [**AddQuestionRequest**](AddQuestionRequest.md)|  | 

### Return type

[**AddQuestion200Response**](AddQuestion200Response.md)

### Authorization

[FirebaseAuth](../README.md#FirebaseAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createQuiz**
> CreateQuiz200Response createQuiz(createQuizRequest)

Crear quiz

Crea un nuevo quiz en estado draft (requiere admin)

### Example
```dart
import 'package:adminTest_api/api.dart';
// TODO Configure HTTP Bearer authorization: FirebaseAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('FirebaseAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('FirebaseAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = QuizManagementApi();
final createQuizRequest = CreateQuizRequest(); // CreateQuizRequest | 

try {
    final result = api_instance.createQuiz(createQuizRequest);
    print(result);
} catch (e) {
    print('Exception when calling QuizManagementApi->createQuiz: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createQuizRequest** | [**CreateQuizRequest**](CreateQuizRequest.md)|  | 

### Return type

[**CreateQuiz200Response**](CreateQuiz200Response.md)

### Authorization

[FirebaseAuth](../README.md#FirebaseAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQuizzes**
> GetQuizzes200Response getQuizzes(getQuizzesRequest)

Listar quizzes

Retorna lista de quizzes. Por defecto solo devuelve quizzes publicados. Para listar drafts, se requiere rol de admin. 

### Example
```dart
import 'package:adminTest_api/api.dart';

final api_instance = QuizManagementApi();
final getQuizzesRequest = GetQuizzesRequest(); // GetQuizzesRequest | 

try {
    final result = api_instance.getQuizzes(getQuizzesRequest);
    print(result);
} catch (e) {
    print('Exception when calling QuizManagementApi->getQuizzes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **getQuizzesRequest** | [**GetQuizzesRequest**](GetQuizzesRequest.md)|  | [optional] 

### Return type

[**GetQuizzes200Response**](GetQuizzes200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **publishQuiz**
> PublishQuiz200Response publishQuiz(publishQuizRequest)

Publicar quiz

Publica un quiz en estado draft (requiere admin)

### Example
```dart
import 'package:adminTest_api/api.dart';
// TODO Configure HTTP Bearer authorization: FirebaseAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('FirebaseAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('FirebaseAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = QuizManagementApi();
final publishQuizRequest = PublishQuizRequest(); // PublishQuizRequest | 

try {
    final result = api_instance.publishQuiz(publishQuizRequest);
    print(result);
} catch (e) {
    print('Exception when calling QuizManagementApi->publishQuiz: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **publishQuizRequest** | [**PublishQuizRequest**](PublishQuizRequest.md)|  | 

### Return type

[**PublishQuiz200Response**](PublishQuiz200Response.md)

### Authorization

[FirebaseAuth](../README.md#FirebaseAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

