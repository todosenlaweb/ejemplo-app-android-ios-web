//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class TestingApi {
  TestingApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Establecer claim de admin (TEST ONLY)
  ///
  /// TEST ONLY - Herramienta de prueba para establecer el claim de admin a un usuario. ⚠️ **ADVERTENCIA**: Este endpoint solo debe estar disponible en ambientes de prueba y emulador. En producción, el claim de admin debe gestionarse mediante otras herramientas administrativas. **Parámetros:** - `uid`: ID del usuario a quien se le asignará el claim de admin **Efecto:** - Establece un custom claim en Firebase Authentication: `{admin: true}` - Permite que los Cloud Functions validen accesos administrativos 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SetAdminClaimRequest] setAdminClaimRequest (required):
  Future<Response> setAdminClaimWithHttpInfo(SetAdminClaimRequest setAdminClaimRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/setAdminClaim';

    // ignore: prefer_final_locals
    Object? postBody = setAdminClaimRequest;

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

  /// Establecer claim de admin (TEST ONLY)
  ///
  /// TEST ONLY - Herramienta de prueba para establecer el claim de admin a un usuario. ⚠️ **ADVERTENCIA**: Este endpoint solo debe estar disponible en ambientes de prueba y emulador. En producción, el claim de admin debe gestionarse mediante otras herramientas administrativas. **Parámetros:** - `uid`: ID del usuario a quien se le asignará el claim de admin **Efecto:** - Establece un custom claim en Firebase Authentication: `{admin: true}` - Permite que los Cloud Functions validen accesos administrativos 
  ///
  /// Parameters:
  ///
  /// * [SetAdminClaimRequest] setAdminClaimRequest (required):
  Future<SetAdminClaim200Response?> setAdminClaim(SetAdminClaimRequest setAdminClaimRequest,) async {
    final response = await setAdminClaimWithHttpInfo(setAdminClaimRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SetAdminClaim200Response',) as SetAdminClaim200Response;
    
    }
    return null;
  }
}
