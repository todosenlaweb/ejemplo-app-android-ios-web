# adminTest_api.api.TestingApi

## Load the API package
```dart
import 'package:adminTest_api/api.dart';
```

All URIs are relative to *https://us-central1-your-project.cloudfunctions.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**setAdminClaim**](TestingApi.md#setadminclaim) | **POST** /setAdminClaim | Establecer claim de admin (TEST ONLY)


# **setAdminClaim**
> SetAdminClaim200Response setAdminClaim(setAdminClaimRequest)

Establecer claim de admin (TEST ONLY)

TEST ONLY - Herramienta de prueba para establecer el claim de admin a un usuario. ⚠️ **ADVERTENCIA**: Este endpoint solo debe estar disponible en ambientes de prueba y emulador. En producción, el claim de admin debe gestionarse mediante otras herramientas administrativas. **Parámetros:** - `uid`: ID del usuario a quien se le asignará el claim de admin **Efecto:** - Establece un custom claim en Firebase Authentication: `{admin: true}` - Permite que los Cloud Functions validen accesos administrativos 

### Example
```dart
import 'package:adminTest_api/api.dart';

final api_instance = TestingApi();
final setAdminClaimRequest = SetAdminClaimRequest(); // SetAdminClaimRequest | 

try {
    final result = api_instance.setAdminClaim(setAdminClaimRequest);
    print(result);
} catch (e) {
    print('Exception when calling TestingApi->setAdminClaim: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **setAdminClaimRequest** | [**SetAdminClaimRequest**](SetAdminClaimRequest.md)|  | 

### Return type

[**SetAdminClaim200Response**](SetAdminClaim200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

