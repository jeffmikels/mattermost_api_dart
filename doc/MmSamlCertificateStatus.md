# mattermost_api.model.MmSamlCertificateStatus

## Load the package and get an instance of this class.
```dart
import 'package:mattermost_api/api.dart';

// Instantiate your client...
//

// example client with HTTP Bearer authorization and string token:
var client = MattermostApiClient(
  basePath: 'https://your-server.tld/api/v4',
  authentication: MmHttpBearerAuthentication('YOUR TOKEN'),
);


MmSamlCertificateStatus example = await client.samlCertificateStatus.FUNCTION_THAT_RETURNS_THIS_CLASS();

```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**idpCertificateFile** | **bool** | Status is good when `true` | [optional] 
**publicCertificateFile** | **bool** | Status is good when `true` | [optional] 
**privateKeyFile** | **bool** | Status is good when `true` | [optional] 

[[Back to Model list]](../GENERATED_README.md#documentation-for-models) [[Back to API list]](../GENERATED_README.md#documentation-for-api-endpoints) [[Back to README]](../GENERATED_README.md)


