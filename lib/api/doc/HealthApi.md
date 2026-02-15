# adminTest_api.api.HealthApi

## Load the API package
```dart
import 'package:adminTest_api/api.dart';
```

All URIs are relative to *https://us-central1-your-project.cloudfunctions.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ping**](HealthApi.md#ping) | **POST** /ping | Verificar conexión


# **ping**
> Ping200Response ping(body)

Verificar conexión

### Example
```dart
import 'package:adminTest_api/api.dart';

final api_instance = HealthApi();
final body = Object(); // Object | 

try {
    final result = api_instance.ping(body);
    print(result);
} catch (e) {
    print('Exception when calling HealthApi->ping: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **Object**|  | [optional] 

### Return type

[**Ping200Response**](Ping200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

