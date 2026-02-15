# adminTest_api.model.SubmitAnswer200Response

## Load the model package
```dart
import 'package:adminTest_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**isComplete** | **bool** |  | [optional] 
**isCorrect** | **bool** | (HU-12) Solo presente si gradeMode es \"instant\" | [optional] 
**shouldShowTip** | **bool** | (HU-13) Indica si debe mostrarse un tip según configuración tipEveryX | [optional] 
**question** | [**Question**](Question.md) |  | [optional] 
**score** | [**Score**](Score.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


