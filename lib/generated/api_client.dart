//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MattermostApiClient {
  /// [MattermostApiClient] Constructor
  MattermostApiClient({
    this.basePath = 'http://your-mattermost-url.com/api/v4',
    MmAuthentication? authMethod,
  }) : _authMethod = authMethod;

  final String basePath;

  final MmAuthentication? _authMethod;
  MmAuthentication? get authMethod => _authMethod;

  /// HTTP [Client] to use for operations.
  Client _client = Client();

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  set client(Client newClient) {
    _client = newClient;
  }

  /// Returns the current default headers that will form the basis of every
  /// request, but does not include headers determined by the `authMethod`.
  Map<String, String> get defaultHeaderMap => _defaultHeaderMap;

  /// Add a new key-value combination to the default headers. Do not use this
  /// for authentication. Use the proper `authMethod` for that.
  void addDefaultHeader(String key, String value) {
    _defaultHeaderMap[key] = value;
  }

  final _defaultHeaderMap = <String, String>{};

  // Individual child API endpoints are exposed here as getters

  /// Return an instance of [MattermostAuthenticationApi] configured to use this client.
  MattermostAuthenticationApi get authentication => MattermostAuthenticationApi(this);

  /// Return an instance of [MattermostBleveApi] configured to use this client.
  MattermostBleveApi get bleve => MattermostBleveApi(this);

  /// Return an instance of [MattermostBotsApi] configured to use this client.
  MattermostBotsApi get bots => MattermostBotsApi(this);

  /// Return an instance of [MattermostBrandApi] configured to use this client.
  MattermostBrandApi get brand => MattermostBrandApi(this);

  /// Return an instance of [MattermostChannelsApi] configured to use this client.
  MattermostChannelsApi get channels => MattermostChannelsApi(this);

  /// Return an instance of [MattermostCloudApi] configured to use this client.
  MattermostCloudApi get cloud => MattermostCloudApi(this);

  /// Return an instance of [MattermostClusterApi] configured to use this client.
  MattermostClusterApi get cluster => MattermostClusterApi(this);

  /// Return an instance of [MattermostCommandsApi] configured to use this client.
  MattermostCommandsApi get commands => MattermostCommandsApi(this);

  /// Return an instance of [MattermostComplianceApi] configured to use this client.
  MattermostComplianceApi get compliance => MattermostComplianceApi(this);

  /// Return an instance of [MattermostDataRetentionApi] configured to use this client.
  MattermostDataRetentionApi get dataRetention => MattermostDataRetentionApi(this);

  /// Return an instance of [MattermostElasticsearchApi] configured to use this client.
  MattermostElasticsearchApi get elasticsearch => MattermostElasticsearchApi(this);

  /// Return an instance of [MattermostEmojiApi] configured to use this client.
  MattermostEmojiApi get emoji => MattermostEmojiApi(this);

  /// Return an instance of [MattermostExportsApi] configured to use this client.
  MattermostExportsApi get exports => MattermostExportsApi(this);

  /// Return an instance of [MattermostFilesApi] configured to use this client.
  MattermostFilesApi get files => MattermostFilesApi(this);

  /// Return an instance of [MattermostGroupsApi] configured to use this client.
  MattermostGroupsApi get groups => MattermostGroupsApi(this);

  /// Return an instance of [MattermostImportsApi] configured to use this client.
  MattermostImportsApi get imports => MattermostImportsApi(this);

  /// Return an instance of [MattermostInsightsApi] configured to use this client.
  MattermostInsightsApi get insights => MattermostInsightsApi(this);

  /// Return an instance of [MattermostIntegrationActionsApi] configured to use this client.
  MattermostIntegrationActionsApi get integrationActions => MattermostIntegrationActionsApi(this);

  /// Return an instance of [MattermostJobsApi] configured to use this client.
  MattermostJobsApi get jobs => MattermostJobsApi(this);

  /// Return an instance of [MattermostLDAPApi] configured to use this client.
  MattermostLDAPApi get lDAP => MattermostLDAPApi(this);

  /// Return an instance of [MattermostMigrateApi] configured to use this client.
  MattermostMigrateApi get migrate => MattermostMigrateApi(this);

  /// Return an instance of [MattermostOAuthApi] configured to use this client.
  MattermostOAuthApi get oAuth => MattermostOAuthApi(this);

  /// Return an instance of [MattermostOpenGraphApi] configured to use this client.
  MattermostOpenGraphApi get openGraph => MattermostOpenGraphApi(this);

  /// Return an instance of [MattermostPermissionsApi] configured to use this client.
  MattermostPermissionsApi get permissions => MattermostPermissionsApi(this);

  /// Return an instance of [MattermostPluginsApi] configured to use this client.
  MattermostPluginsApi get plugins => MattermostPluginsApi(this);

  /// Return an instance of [MattermostPostsApi] configured to use this client.
  MattermostPostsApi get posts => MattermostPostsApi(this);

  /// Return an instance of [MattermostPreferencesApi] configured to use this client.
  MattermostPreferencesApi get preferences => MattermostPreferencesApi(this);

  /// Return an instance of [MattermostReactionsApi] configured to use this client.
  MattermostReactionsApi get reactions => MattermostReactionsApi(this);

  /// Return an instance of [MattermostRolesApi] configured to use this client.
  MattermostRolesApi get roles => MattermostRolesApi(this);

  /// Return an instance of [MattermostRootApi] configured to use this client.
  MattermostRootApi get root => MattermostRootApi(this);

  /// Return an instance of [MattermostSAMLApi] configured to use this client.
  MattermostSAMLApi get sAML => MattermostSAMLApi(this);

  /// Return an instance of [MattermostSchemesApi] configured to use this client.
  MattermostSchemesApi get schemes => MattermostSchemesApi(this);

  /// Return an instance of [MattermostSearchApi] configured to use this client.
  MattermostSearchApi get search => MattermostSearchApi(this);

  /// Return an instance of [MattermostSharedChannelsApi] configured to use this client.
  MattermostSharedChannelsApi get sharedChannels => MattermostSharedChannelsApi(this);

  /// Return an instance of [MattermostStatusApi] configured to use this client.
  MattermostStatusApi get status => MattermostStatusApi(this);

  /// Return an instance of [MattermostSystemApi] configured to use this client.
  MattermostSystemApi get system => MattermostSystemApi(this);

  /// Return an instance of [MattermostTeamsApi] configured to use this client.
  MattermostTeamsApi get teams => MattermostTeamsApi(this);

  /// Return an instance of [MattermostTermsOfServiceApi] configured to use this client.
  MattermostTermsOfServiceApi get termsOfService => MattermostTermsOfServiceApi(this);

  /// Return an instance of [MattermostThreadsApi] configured to use this client.
  MattermostThreadsApi get threads => MattermostThreadsApi(this);

  /// Return an instance of [MattermostUploadsApi] configured to use this client.
  MattermostUploadsApi get uploads => MattermostUploadsApi(this);

  /// Return an instance of [MattermostUsageApi] configured to use this client.
  MattermostUsageApi get usage => MattermostUsageApi(this);

  /// Return an instance of [MattermostUsersApi] configured to use this client.
  MattermostUsersApi get users => MattermostUsersApi(this);

  /// Return an instance of [MattermostWebhooksApi] configured to use this client.
  MattermostWebhooksApi get webhooks => MattermostWebhooksApi(this);

  /// Actually make an API request and return the HTTP [Response] asynchronously.
  /// This function will wrap all errors with [MmApiException]
  Future<Response> invokeAPI(
    String path,
    String method,
    List<MmQueryParam> queryParams,
    Object? body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String? contentType,
  ) async {
    _updateParamsForAuth(queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);
    if (contentType != null) {
      headerParams['Content-Type'] = contentType;
    }

    final urlEncodedMmQueryParams = queryParams.map((param) => '$param');
    final queryString = urlEncodedMmQueryParams.isNotEmpty ? '?${urlEncodedMmQueryParams.join('&')}' : '';
    final uri = Uri.parse('$basePath$path$queryString');

    try {
      // Special case for uploading a single file which isn't a 'multipart/form-data'.
      if (body is MultipartFile &&
          (contentType == null || !contentType.toLowerCase().startsWith('multipart/form-data'))) {
        final request = StreamedRequest(method, uri);
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
              request.sink.add,
              onDone: request.sink.close,
              // ignore: avoid_types_on_closure_parameters
              onError: (Object error, StackTrace trace) => request.sink.close(),
              cancelOnError: true,
            );
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = MultipartRequest(method, uri);
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = contentType == 'application/x-www-form-urlencoded' ? formParams : await serializeAsync(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      switch (method) {
        case 'POST':
          return await _client.post(
            uri,
            headers: nullableHeaderParams,
            body: msgBody,
          );
        case 'PUT':
          return await _client.put(
            uri,
            headers: nullableHeaderParams,
            body: msgBody,
          );
        case 'DELETE':
          return await _client.delete(
            uri,
            headers: nullableHeaderParams,
            body: msgBody,
          );
        case 'PATCH':
          return await _client.patch(
            uri,
            headers: nullableHeaderParams,
            body: msgBody,
          );
        case 'HEAD':
          return await _client.head(
            uri,
            headers: nullableHeaderParams,
          );
        case 'GET':
          return await _client.get(
            uri,
            headers: nullableHeaderParams,
          );
      }
    } on SocketException catch (error, trace) {
      throw MmApiException.withInner(
        HttpStatus.badRequest,
        'Socket operation failed: $method $path',
        error,
        trace,
      );
    } on TlsException catch (error, trace) {
      throw MmApiException.withInner(
        HttpStatus.badRequest,
        'TLS/SSL communication failed: $method $path',
        error,
        trace,
      );
    } on IOException catch (error, trace) {
      throw MmApiException.withInner(
        HttpStatus.badRequest,
        'I/O operation failed: $method $path',
        error,
        trace,
      );
    } on ClientException catch (error, trace) {
      throw MmApiException.withInner(
        HttpStatus.badRequest,
        'HTTP connection failed: $method $path',
        error,
        trace,
      );
    } on Exception catch (error, trace) {
      throw MmApiException.withInner(
        HttpStatus.badRequest,
        'Exception occurred: $method $path',
        error,
        trace,
      );
    }

    throw MmApiException(
      HttpStatus.badRequest,
      'Invalid HTTP operation: $method $path',
    );
  }

  /// Will update query and header parameters based on authentication settings
  /// (called from the invokeAPI command).
  void _updateParamsForAuth(
    List<MmQueryParam> queryParams,
    Map<String, String> headerParams,
  ) {
    if (_authMethod != null) {
      _authMethod!.applyToParams(queryParams, headerParams);
    }
  }

  // Code to handle object deserialization: json --> model

  Future<dynamic> deserializeAsync(
    String json,
    String targetType, {
    bool growable = false,
  }) async =>
      // ignore: deprecated_member_use_from_same_package
      deserialize(json, targetType, growable: growable);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  dynamic deserialize(
    String json,
    String targetType, {
    bool growable = false,
  }) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType = targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String' ? json : _deserialize(jsonDecode(json), targetType, growable: growable);
  }

  // ignore: deprecated_member_use_from_same_package
  Future<String> serializeAsync(Object? value) async => serialize(value);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use serializeAsync() instead.')
  String serialize(Object? value) => value == null ? '' : json.encode(value);

  static dynamic _deserialize(dynamic value, String targetType, {bool growable = false}) {
    try {
      switch (targetType) {
        case 'String':
          return value is String ? value : value.toString();
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
        case 'DateTime':
          return value is DateTime ? value : DateTime.tryParse(value);
        case 'MmAddChannelMemberRequest':
          return MmAddChannelMemberRequest.fromJson(value);
        case 'MmAddGroupMembersRequest':
          return MmAddGroupMembersRequest.fromJson(value);
        case 'MmAddOn':
          return MmAddOn.fromJson(value);
        case 'MmAddTeamMemberRequest':
          return MmAddTeamMemberRequest.fromJson(value);
        case 'MmAddress':
          return MmAddress.fromJson(value);
        case 'MmAppError':
          return MmAppError.fromJson(value);
        case 'MmAttachDeviceIdRequest':
          return MmAttachDeviceIdRequest.fromJson(value);
        case 'MmAudit':
          return MmAudit.fromJson(value);
        case 'MmAutocompleteSuggestion':
          return MmAutocompleteSuggestion.fromJson(value);
        case 'MmBoardsLimits':
          return MmBoardsLimits.fromJson(value);
        case 'MmBot':
          return MmBot.fromJson(value);
        case 'MmChannel':
          return MmChannel.fromJson(value);
        case 'MmChannelData':
          return MmChannelData.fromJson(value);
        case 'MmChannelMember':
          return MmChannelMember.fromJson(value);
        case 'MmChannelMemberCountByGroup':
          return MmChannelMemberCountByGroup.fromJson(value);
        case 'MmChannelMemberWithTeamData':
          return MmChannelMemberWithTeamData.fromJson(value);
        case 'MmChannelMemberWithTeamDataAllOf':
          return MmChannelMemberWithTeamDataAllOf.fromJson(value);
        case 'MmChannelModeratedRole':
          return MmChannelModeratedRole.fromJson(value);
        case 'MmChannelModeratedRoles':
          return MmChannelModeratedRoles.fromJson(value);
        case 'MmChannelModeratedRolesPatch':
          return MmChannelModeratedRolesPatch.fromJson(value);
        case 'MmChannelModeration':
          return MmChannelModeration.fromJson(value);
        case 'MmChannelModerationPatch':
          return MmChannelModerationPatch.fromJson(value);
        case 'MmChannelNotifyProps':
          return MmChannelNotifyProps.fromJson(value);
        case 'MmChannelStats':
          return MmChannelStats.fromJson(value);
        case 'MmChannelUnread':
          return MmChannelUnread.fromJson(value);
        case 'MmChannelUnreadAt':
          return MmChannelUnreadAt.fromJson(value);
        case 'MmChannelWithTeamData':
          return MmChannelWithTeamData.fromJson(value);
        case 'MmChannelWithTeamDataAllOf':
          return MmChannelWithTeamDataAllOf.fromJson(value);
        case 'MmCheckUserMfa200Response':
          return MmCheckUserMfa200Response.fromJson(value);
        case 'MmCheckUserMfaRequest':
          return MmCheckUserMfaRequest.fromJson(value);
        case 'MmCloudCustomer':
          return MmCloudCustomer.fromJson(value);
        case 'MmClusterInfo':
          return MmClusterInfo.fromJson(value);
        case 'MmCommand':
          return MmCommand.fromJson(value);
        case 'MmCommandResponse':
          return MmCommandResponse.fromJson(value);
        case 'MmCompliance':
          return MmCompliance.fromJson(value);
        case 'MmConfig':
          return MmConfig.fromJson(value);
        case 'MmConfigAnalyticsSettings':
          return MmConfigAnalyticsSettings.fromJson(value);
        case 'MmConfigClusterSettings':
          return MmConfigClusterSettings.fromJson(value);
        case 'MmConfigComplianceSettings':
          return MmConfigComplianceSettings.fromJson(value);
        case 'MmConfigEmailSettings':
          return MmConfigEmailSettings.fromJson(value);
        case 'MmConfigFileSettings':
          return MmConfigFileSettings.fromJson(value);
        case 'MmConfigGitLabSettings':
          return MmConfigGitLabSettings.fromJson(value);
        case 'MmConfigLdapSettings':
          return MmConfigLdapSettings.fromJson(value);
        case 'MmConfigLocalizationSettings':
          return MmConfigLocalizationSettings.fromJson(value);
        case 'MmConfigLogSettings':
          return MmConfigLogSettings.fromJson(value);
        case 'MmConfigMetricsSettings':
          return MmConfigMetricsSettings.fromJson(value);
        case 'MmConfigNativeAppSettings':
          return MmConfigNativeAppSettings.fromJson(value);
        case 'MmConfigPasswordSettings':
          return MmConfigPasswordSettings.fromJson(value);
        case 'MmConfigPrivacySettings':
          return MmConfigPrivacySettings.fromJson(value);
        case 'MmConfigRateLimitSettings':
          return MmConfigRateLimitSettings.fromJson(value);
        case 'MmConfigSamlSettings':
          return MmConfigSamlSettings.fromJson(value);
        case 'MmConfigServiceSettings':
          return MmConfigServiceSettings.fromJson(value);
        case 'MmConfigSqlSettings':
          return MmConfigSqlSettings.fromJson(value);
        case 'MmConfigSupportSettings':
          return MmConfigSupportSettings.fromJson(value);
        case 'MmConfigTeamSettings':
          return MmConfigTeamSettings.fromJson(value);
        case 'MmConvertBotToUserRequest':
          return MmConvertBotToUserRequest.fromJson(value);
        case 'MmCreateBotRequest':
          return MmCreateBotRequest.fromJson(value);
        case 'MmCreateChannelRequest':
          return MmCreateChannelRequest.fromJson(value);
        case 'MmCreateCommandRequest':
          return MmCreateCommandRequest.fromJson(value);
        case 'MmCreateGroupRequest':
          return MmCreateGroupRequest.fromJson(value);
        case 'MmCreateGroupRequestGroup':
          return MmCreateGroupRequestGroup.fromJson(value);
        case 'MmCreateIncomingWebhookRequest':
          return MmCreateIncomingWebhookRequest.fromJson(value);
        case 'MmCreateJobRequest':
          return MmCreateJobRequest.fromJson(value);
        case 'MmCreateOAuthAppRequest':
          return MmCreateOAuthAppRequest.fromJson(value);
        case 'MmCreateOutgoingWebhookRequest':
          return MmCreateOutgoingWebhookRequest.fromJson(value);
        case 'MmCreatePostEphemeralRequest':
          return MmCreatePostEphemeralRequest.fromJson(value);
        case 'MmCreatePostEphemeralRequestPost':
          return MmCreatePostEphemeralRequestPost.fromJson(value);
        case 'MmCreatePostRequest':
          return MmCreatePostRequest.fromJson(value);
        case 'MmCreateSchemeRequest':
          return MmCreateSchemeRequest.fromJson(value);
        case 'MmCreateTeamRequest':
          return MmCreateTeamRequest.fromJson(value);
        case 'MmCreateUploadRequest':
          return MmCreateUploadRequest.fromJson(value);
        case 'MmCreateUserAccessTokenRequest':
          return MmCreateUserAccessTokenRequest.fromJson(value);
        case 'MmCreateUserRequest':
          return MmCreateUserRequest.fromJson(value);
        case 'MmDataRetentionPolicy':
          return MmDataRetentionPolicy.fromJson(value);
        case 'MmDataRetentionPolicyAllOf':
          return MmDataRetentionPolicyAllOf.fromJson(value);
        case 'MmDataRetentionPolicyCreate':
          return MmDataRetentionPolicyCreate.fromJson(value);
        case 'MmDataRetentionPolicyForChannel':
          return MmDataRetentionPolicyForChannel.fromJson(value);
        case 'MmDataRetentionPolicyForTeam':
          return MmDataRetentionPolicyForTeam.fromJson(value);
        case 'MmDataRetentionPolicyWithTeamAndChannelCounts':
          return MmDataRetentionPolicyWithTeamAndChannelCounts.fromJson(value);
        case 'MmDataRetentionPolicyWithTeamAndChannelCountsAllOf':
          return MmDataRetentionPolicyWithTeamAndChannelCountsAllOf.fromJson(value);
        case 'MmDataRetentionPolicyWithTeamAndChannelIds':
          return MmDataRetentionPolicyWithTeamAndChannelIds.fromJson(value);
        case 'MmDataRetentionPolicyWithTeamAndChannelIdsAllOf':
          return MmDataRetentionPolicyWithTeamAndChannelIdsAllOf.fromJson(value);
        case 'MmDataRetentionPolicyWithoutId':
          return MmDataRetentionPolicyWithoutId.fromJson(value);
        case 'MmDeleteGroupMembersRequest':
          return MmDeleteGroupMembersRequest.fromJson(value);
        case 'MmDisableUserAccessTokenRequest':
          return MmDisableUserAccessTokenRequest.fromJson(value);
        case 'MmEmoji':
          return MmEmoji.fromJson(value);
        case 'MmEnableUserAccessTokenRequest':
          return MmEnableUserAccessTokenRequest.fromJson(value);
        case 'MmEnvironmentConfig':
          return MmEnvironmentConfig.fromJson(value);
        case 'MmEnvironmentConfigAnalyticsSettings':
          return MmEnvironmentConfigAnalyticsSettings.fromJson(value);
        case 'MmEnvironmentConfigClusterSettings':
          return MmEnvironmentConfigClusterSettings.fromJson(value);
        case 'MmEnvironmentConfigComplianceSettings':
          return MmEnvironmentConfigComplianceSettings.fromJson(value);
        case 'MmEnvironmentConfigEmailSettings':
          return MmEnvironmentConfigEmailSettings.fromJson(value);
        case 'MmEnvironmentConfigFileSettings':
          return MmEnvironmentConfigFileSettings.fromJson(value);
        case 'MmEnvironmentConfigGitLabSettings':
          return MmEnvironmentConfigGitLabSettings.fromJson(value);
        case 'MmEnvironmentConfigLdapSettings':
          return MmEnvironmentConfigLdapSettings.fromJson(value);
        case 'MmEnvironmentConfigLocalizationSettings':
          return MmEnvironmentConfigLocalizationSettings.fromJson(value);
        case 'MmEnvironmentConfigLogSettings':
          return MmEnvironmentConfigLogSettings.fromJson(value);
        case 'MmEnvironmentConfigMetricsSettings':
          return MmEnvironmentConfigMetricsSettings.fromJson(value);
        case 'MmEnvironmentConfigNativeAppSettings':
          return MmEnvironmentConfigNativeAppSettings.fromJson(value);
        case 'MmEnvironmentConfigPasswordSettings':
          return MmEnvironmentConfigPasswordSettings.fromJson(value);
        case 'MmEnvironmentConfigRateLimitSettings':
          return MmEnvironmentConfigRateLimitSettings.fromJson(value);
        case 'MmEnvironmentConfigSamlSettings':
          return MmEnvironmentConfigSamlSettings.fromJson(value);
        case 'MmEnvironmentConfigServiceSettings':
          return MmEnvironmentConfigServiceSettings.fromJson(value);
        case 'MmEnvironmentConfigSqlSettings':
          return MmEnvironmentConfigSqlSettings.fromJson(value);
        case 'MmEnvironmentConfigSupportSettings':
          return MmEnvironmentConfigSupportSettings.fromJson(value);
        case 'MmEnvironmentConfigTeamSettings':
          return MmEnvironmentConfigTeamSettings.fromJson(value);
        case 'MmExecuteCommandRequest':
          return MmExecuteCommandRequest.fromJson(value);
        case 'MmFileInfo':
          return MmFileInfo.fromJson(value);
        case 'MmFileInfoList':
          return MmFileInfoList.fromJson(value);
        case 'MmFilesLimits':
          return MmFilesLimits.fromJson(value);
        case 'MmGenerateMfaSecret200Response':
          return MmGenerateMfaSecret200Response.fromJson(value);
        case 'MmGetDataRetentionPoliciesCount200Response':
          return MmGetDataRetentionPoliciesCount200Response.fromJson(value);
        case 'MmGetFileLink200Response':
          return MmGetFileLink200Response.fromJson(value);
        case 'MmGetGroupStats200Response':
          return MmGetGroupStats200Response.fromJson(value);
        case 'MmGetGroupUsers200Response':
          return MmGetGroupUsers200Response.fromJson(value);
        case 'MmGetPlugins200Response':
          return MmGetPlugins200Response.fromJson(value);
        case 'MmGetRedirectLocation200Response':
          return MmGetRedirectLocation200Response.fromJson(value);
        case 'MmGetSamlMetadataFromIdpRequest':
          return MmGetSamlMetadataFromIdpRequest.fromJson(value);
        case 'MmGetTeamInviteInfo200Response':
          return MmGetTeamInviteInfo200Response.fromJson(value);
        case 'MmGetUsersByGroupChannelIds200Response':
          return MmGetUsersByGroupChannelIds200Response.fromJson(value);
        case 'MmGlobalDataRetentionPolicy':
          return MmGlobalDataRetentionPolicy.fromJson(value);
        case 'MmGroup':
          return MmGroup.fromJson(value);
        case 'MmGroupSyncableChannel':
          return MmGroupSyncableChannel.fromJson(value);
        case 'MmGroupSyncableChannels':
          return MmGroupSyncableChannels.fromJson(value);
        case 'MmGroupSyncableTeam':
          return MmGroupSyncableTeam.fromJson(value);
        case 'MmGroupSyncableTeams':
          return MmGroupSyncableTeams.fromJson(value);
        case 'MmGroupWithSchemeAdmin':
          return MmGroupWithSchemeAdmin.fromJson(value);
        case 'MmImportTeam200Response':
          return MmImportTeam200Response.fromJson(value);
        case 'MmIncomingWebhook':
          return MmIncomingWebhook.fromJson(value);
        case 'MmInstallMarketplacePluginRequest':
          return MmInstallMarketplacePluginRequest.fromJson(value);
        case 'MmIntegrationsLimits':
          return MmIntegrationsLimits.fromJson(value);
        case 'MmIntegrityCheckResult':
          return MmIntegrityCheckResult.fromJson(value);
        case 'MmInviteGuestsToTeamRequest':
          return MmInviteGuestsToTeamRequest.fromJson(value);
        case 'MmInvoice':
          return MmInvoice.fromJson(value);
        case 'MmInvoiceLineItem':
          return MmInvoiceLineItem.fromJson(value);
        case 'MmJob':
          return MmJob.fromJson(value);
        case 'MmLDAPGroup':
          return MmLDAPGroup.fromJson(value);
        case 'MmLDAPGroupsPaged':
          return MmLDAPGroupsPaged.fromJson(value);
        case 'MmLicenseRenewalLink':
          return MmLicenseRenewalLink.fromJson(value);
        case 'MmLoginByCwsTokenRequest':
          return MmLoginByCwsTokenRequest.fromJson(value);
        case 'MmLoginRequest':
          return MmLoginRequest.fromJson(value);
        case 'MmMarketplacePlugin':
          return MmMarketplacePlugin.fromJson(value);
        case 'MmMessagesLimits':
          return MmMessagesLimits.fromJson(value);
        case 'MmMigrateAuthToLdapRequest':
          return MmMigrateAuthToLdapRequest.fromJson(value);
        case 'MmMigrateAuthToSamlRequest':
          return MmMigrateAuthToSamlRequest.fromJson(value);
        case 'MmMigrateIdLdapRequest':
          return MmMigrateIdLdapRequest.fromJson(value);
        case 'MmMoveChannelRequest':
          return MmMoveChannelRequest.fromJson(value);
        case 'MmMoveCommandRequest':
          return MmMoveCommandRequest.fromJson(value);
        case 'MmNotice':
          return MmNotice.fromJson(value);
        case 'MmOAuthApp':
          return MmOAuthApp.fromJson(value);
        case 'MmOpenGraph':
          return MmOpenGraph.fromJson(value);
        case 'MmOpenGraphArticle':
          return MmOpenGraphArticle.fromJson(value);
        case 'MmOpenGraphArticleAuthorsInner':
          return MmOpenGraphArticleAuthorsInner.fromJson(value);
        case 'MmOpenGraphAudiosInner':
          return MmOpenGraphAudiosInner.fromJson(value);
        case 'MmOpenGraphBook':
          return MmOpenGraphBook.fromJson(value);
        case 'MmOpenGraphImagesInner':
          return MmOpenGraphImagesInner.fromJson(value);
        case 'MmOpenGraphRequest':
          return MmOpenGraphRequest.fromJson(value);
        case 'MmOpenGraphVideosInner':
          return MmOpenGraphVideosInner.fromJson(value);
        case 'MmOpenInteractiveDialogRequest':
          return MmOpenInteractiveDialogRequest.fromJson(value);
        case 'MmOpenInteractiveDialogRequestDialog':
          return MmOpenInteractiveDialogRequestDialog.fromJson(value);
        case 'MmOrderedSidebarCategories':
          return MmOrderedSidebarCategories.fromJson(value);
        case 'MmOrphanedRecord':
          return MmOrphanedRecord.fromJson(value);
        case 'MmOutgoingWebhook':
          return MmOutgoingWebhook.fromJson(value);
        case 'MmPatchChannelRequest':
          return MmPatchChannelRequest.fromJson(value);
        case 'MmPatchGroupRequest':
          return MmPatchGroupRequest.fromJson(value);
        case 'MmPatchGroupSyncableForTeamRequest':
          return MmPatchGroupSyncableForTeamRequest.fromJson(value);
        case 'MmPatchPostRequest':
          return MmPatchPostRequest.fromJson(value);
        case 'MmPatchRoleRequest':
          return MmPatchRoleRequest.fromJson(value);
        case 'MmPatchSchemeRequest':
          return MmPatchSchemeRequest.fromJson(value);
        case 'MmPatchTeamRequest':
          return MmPatchTeamRequest.fromJson(value);
        case 'MmPatchUserRequest':
          return MmPatchUserRequest.fromJson(value);
        case 'MmPaymentMethod':
          return MmPaymentMethod.fromJson(value);
        case 'MmPaymentSetupIntent':
          return MmPaymentSetupIntent.fromJson(value);
        case 'MmPluginManifest':
          return MmPluginManifest.fromJson(value);
        case 'MmPluginManifestBackend':
          return MmPluginManifestBackend.fromJson(value);
        case 'MmPluginManifestServer':
          return MmPluginManifestServer.fromJson(value);
        case 'MmPluginManifestServerExecutables':
          return MmPluginManifestServerExecutables.fromJson(value);
        case 'MmPluginManifestWebapp':
          return MmPluginManifestWebapp.fromJson(value);
        case 'MmPluginStatus':
          return MmPluginStatus.fromJson(value);
        case 'MmPost':
          return MmPost.fromJson(value);
        case 'MmPostList':
          return MmPostList.fromJson(value);
        case 'MmPostListWithSearchMatches':
          return MmPostListWithSearchMatches.fromJson(value);
        case 'MmPostLogRequest':
          return MmPostLogRequest.fromJson(value);
        case 'MmPostMetadata':
          return MmPostMetadata.fromJson(value);
        case 'MmPostMetadataEmbedsInner':
          return MmPostMetadataEmbedsInner.fromJson(value);
        case 'MmPostMetadataImagesInner':
          return MmPostMetadataImagesInner.fromJson(value);
        case 'MmPostsUsage':
          return MmPostsUsage.fromJson(value);
        case 'MmPreference':
          return MmPreference.fromJson(value);
        case 'MmProduct':
          return MmProduct.fromJson(value);
        case 'MmProductLimits':
          return MmProductLimits.fromJson(value);
        case 'MmPublishUserTypingRequest':
          return MmPublishUserTypingRequest.fromJson(value);
        case 'MmPushNotification':
          return MmPushNotification.fromJson(value);
        case 'MmReaction':
          return MmReaction.fromJson(value);
        case 'MmRegenCommandToken200Response':
          return MmRegenCommandToken200Response.fromJson(value);
        case 'MmRegisterTermsOfServiceActionRequest':
          return MmRegisterTermsOfServiceActionRequest.fromJson(value);
        case 'MmRelationalIntegrityCheckData':
          return MmRelationalIntegrityCheckData.fromJson(value);
        case 'MmRemoteClusterInfo':
          return MmRemoteClusterInfo.fromJson(value);
        case 'MmRemoveRecentCustomStatusRequest':
          return MmRemoveRecentCustomStatusRequest.fromJson(value);
        case 'MmRequestTrialLicenseRequest':
          return MmRequestTrialLicenseRequest.fromJson(value);
        case 'MmResetPasswordRequest':
          return MmResetPasswordRequest.fromJson(value);
        case 'MmResetSamlAuthDataToEmail200Response':
          return MmResetSamlAuthDataToEmail200Response.fromJson(value);
        case 'MmResetSamlAuthDataToEmailRequest':
          return MmResetSamlAuthDataToEmailRequest.fromJson(value);
        case 'MmRetentionPolicyForChannelList':
          return MmRetentionPolicyForChannelList.fromJson(value);
        case 'MmRetentionPolicyForTeamList':
          return MmRetentionPolicyForTeamList.fromJson(value);
        case 'MmRevokeSessionRequest':
          return MmRevokeSessionRequest.fromJson(value);
        case 'MmRevokeUserAccessTokenRequest':
          return MmRevokeUserAccessTokenRequest.fromJson(value);
        case 'MmRole':
          return MmRole.fromJson(value);
        case 'MmSamlCertificateStatus':
          return MmSamlCertificateStatus.fromJson(value);
        case 'MmScheme':
          return MmScheme.fromJson(value);
        case 'MmSearchAllChannels200Response':
          return MmSearchAllChannels200Response.fromJson(value);
        case 'MmSearchAllChannelsRequest':
          return MmSearchAllChannelsRequest.fromJson(value);
        case 'MmSearchArchivedChannelsRequest':
          return MmSearchArchivedChannelsRequest.fromJson(value);
        case 'MmSearchChannelsForRetentionPolicyRequest':
          return MmSearchChannelsForRetentionPolicyRequest.fromJson(value);
        case 'MmSearchChannelsRequest':
          return MmSearchChannelsRequest.fromJson(value);
        case 'MmSearchEmojiRequest':
          return MmSearchEmojiRequest.fromJson(value);
        case 'MmSearchGroupChannelsRequest':
          return MmSearchGroupChannelsRequest.fromJson(value);
        case 'MmSearchPostsRequest':
          return MmSearchPostsRequest.fromJson(value);
        case 'MmSearchTeams200Response':
          return MmSearchTeams200Response.fromJson(value);
        case 'MmSearchTeamsForRetentionPolicyRequest':
          return MmSearchTeamsForRetentionPolicyRequest.fromJson(value);
        case 'MmSearchTeamsRequest':
          return MmSearchTeamsRequest.fromJson(value);
        case 'MmSearchUserAccessTokensRequest':
          return MmSearchUserAccessTokensRequest.fromJson(value);
        case 'MmSearchUsersRequest':
          return MmSearchUsersRequest.fromJson(value);
        case 'MmSendPasswordResetEmailRequest':
          return MmSendPasswordResetEmailRequest.fromJson(value);
        case 'MmSendVerificationEmailRequest':
          return MmSendVerificationEmailRequest.fromJson(value);
        case 'MmSendWarnMetricAckRequest':
          return MmSendWarnMetricAckRequest.fromJson(value);
        case 'MmServerBusy':
          return MmServerBusy.fromJson(value);
        case 'MmSession':
          return MmSession.fromJson(value);
        case 'MmSharedChannel':
          return MmSharedChannel.fromJson(value);
        case 'MmSidebarCategory':
          return MmSidebarCategory.fromJson(value);
        case 'MmSidebarCategoryWithChannels':
          return MmSidebarCategoryWithChannels.fromJson(value);
        case 'MmSlackAttachment':
          return MmSlackAttachment.fromJson(value);
        case 'MmSlackAttachmentField':
          return MmSlackAttachmentField.fromJson(value);
        case 'MmStatus':
          return MmStatus.fromJson(value);
        case 'MmStatusOK':
          return MmStatusOK.fromJson(value);
        case 'MmSubmitInteractiveDialogRequest':
          return MmSubmitInteractiveDialogRequest.fromJson(value);
        case 'MmSubscription':
          return MmSubscription.fromJson(value);
        case 'MmSubscriptionStats':
          return MmSubscriptionStats.fromJson(value);
        case 'MmSwitchAccountType200Response':
          return MmSwitchAccountType200Response.fromJson(value);
        case 'MmSwitchAccountTypeRequest':
          return MmSwitchAccountTypeRequest.fromJson(value);
        case 'MmSystem':
          return MmSystem.fromJson(value);
        case 'MmSystemStatusResponse':
          return MmSystemStatusResponse.fromJson(value);
        case 'MmTeam':
          return MmTeam.fromJson(value);
        case 'MmTeamExists':
          return MmTeamExists.fromJson(value);
        case 'MmTeamMap':
          return MmTeamMap.fromJson(value);
        case 'MmTeamMember':
          return MmTeamMember.fromJson(value);
        case 'MmTeamStats':
          return MmTeamStats.fromJson(value);
        case 'MmTeamUnread':
          return MmTeamUnread.fromJson(value);
        case 'MmTeamsLimits':
          return MmTeamsLimits.fromJson(value);
        case 'MmTermsOfService':
          return MmTermsOfService.fromJson(value);
        case 'MmTestSiteURLRequest':
          return MmTestSiteURLRequest.fromJson(value);
        case 'MmTimezone':
          return MmTimezone.fromJson(value);
        case 'MmTopChannel':
          return MmTopChannel.fromJson(value);
        case 'MmTopChannelList':
          return MmTopChannelList.fromJson(value);
        case 'MmTopReaction':
          return MmTopReaction.fromJson(value);
        case 'MmTopReactionList':
          return MmTopReactionList.fromJson(value);
        case 'MmUpdateChannelPrivacyRequest':
          return MmUpdateChannelPrivacyRequest.fromJson(value);
        case 'MmUpdateChannelRequest':
          return MmUpdateChannelRequest.fromJson(value);
        case 'MmUpdateCloudCustomerRequest':
          return MmUpdateCloudCustomerRequest.fromJson(value);
        case 'MmUpdateIncomingWebhookRequest':
          return MmUpdateIncomingWebhookRequest.fromJson(value);
        case 'MmUpdateOAuthAppRequest':
          return MmUpdateOAuthAppRequest.fromJson(value);
        case 'MmUpdateOutgoingWebhookRequest':
          return MmUpdateOutgoingWebhookRequest.fromJson(value);
        case 'MmUpdatePostRequest':
          return MmUpdatePostRequest.fromJson(value);
        case 'MmUpdateTeamMemberSchemeRolesRequest':
          return MmUpdateTeamMemberSchemeRolesRequest.fromJson(value);
        case 'MmUpdateTeamPrivacyRequest':
          return MmUpdateTeamPrivacyRequest.fromJson(value);
        case 'MmUpdateTeamRequest':
          return MmUpdateTeamRequest.fromJson(value);
        case 'MmUpdateTeamSchemeRequest':
          return MmUpdateTeamSchemeRequest.fromJson(value);
        case 'MmUpdateUserActiveRequest':
          return MmUpdateUserActiveRequest.fromJson(value);
        case 'MmUpdateUserCustomStatusRequest':
          return MmUpdateUserCustomStatusRequest.fromJson(value);
        case 'MmUpdateUserMfaRequest':
          return MmUpdateUserMfaRequest.fromJson(value);
        case 'MmUpdateUserPasswordRequest':
          return MmUpdateUserPasswordRequest.fromJson(value);
        case 'MmUpdateUserRequest':
          return MmUpdateUserRequest.fromJson(value);
        case 'MmUpdateUserRolesRequest':
          return MmUpdateUserRolesRequest.fromJson(value);
        case 'MmUpdateUserStatusRequest':
          return MmUpdateUserStatusRequest.fromJson(value);
        case 'MmUpgradeToEnterpriseStatus200Response':
          return MmUpgradeToEnterpriseStatus200Response.fromJson(value);
        case 'MmUploadFile201Response':
          return MmUploadFile201Response.fromJson(value);
        case 'MmUploadSession':
          return MmUploadSession.fromJson(value);
        case 'MmUser':
          return MmUser.fromJson(value);
        case 'MmUserAccessToken':
          return MmUserAccessToken.fromJson(value);
        case 'MmUserAccessTokenSanitized':
          return MmUserAccessTokenSanitized.fromJson(value);
        case 'MmUserAuthData':
          return MmUserAuthData.fromJson(value);
        case 'MmUserAutocomplete':
          return MmUserAutocomplete.fromJson(value);
        case 'MmUserAutocompleteInChannel':
          return MmUserAutocompleteInChannel.fromJson(value);
        case 'MmUserAutocompleteInTeam':
          return MmUserAutocompleteInTeam.fromJson(value);
        case 'MmUserNotifyProps':
          return MmUserNotifyProps.fromJson(value);
        case 'MmUserTermsOfService':
          return MmUserTermsOfService.fromJson(value);
        case 'MmUserThread':
          return MmUserThread.fromJson(value);
        case 'MmUserThreads':
          return MmUserThreads.fromJson(value);
        case 'MmUsersStats':
          return MmUsersStats.fromJson(value);
        case 'MmVerifyUserEmailRequest':
          return MmVerifyUserEmailRequest.fromJson(value);
        case 'MmViewChannel200Response':
          return MmViewChannel200Response.fromJson(value);
        case 'MmViewChannelRequest':
          return MmViewChannelRequest.fromJson(value);
        default:
          dynamic match;
          if (value is List && (match = _regList.firstMatch(targetType)?.group(1)) != null) {
            return value
                .map<dynamic>((dynamic v) => _deserialize(
                      v,
                      match,
                      growable: growable,
                    ))
                .toList(growable: growable);
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)?.group(1)) != null) {
            return value
                .map<dynamic>((dynamic v) => _deserialize(
                      v,
                      match,
                      growable: growable,
                    ))
                .toSet();
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)?.group(1)) != null) {
            return Map<String, dynamic>.fromIterables(
              value.keys.cast<String>(),
              value.values.map<dynamic>((dynamic v) => _deserialize(
                    v,
                    match,
                    growable: growable,
                  )),
            );
          }
      }
    } on Exception catch (error, trace) {
      throw MmApiException.withInner(
        HttpStatus.internalServerError,
        'Exception during deserialization.',
        error,
        trace,
      );
    }
    throw MmApiException(
      HttpStatus.internalServerError,
      'Could not find a suitable class for deserialization',
    );
  }
}

/// "Root" level class for use in an isolate.
class DeserializationMessage {
  const DeserializationMessage({
    required this.json,
    required this.targetType,
    this.growable = false,
  });

  /// The JSON value to deserialize.
  final String json;

  /// Target type to deserialize to.
  final String targetType;

  /// Whether to make deserialized lists or maps growable.
  final bool growable;
}

/// "Root" level function for use in an isolate.
Future<dynamic> deserializeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
      ? message.json
      : MattermostApiClient._deserialize(
          jsonDecode(message.json),
          targetType,
          growable: message.growable,
        );
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object? value) async => value == null ? '' : json.encode(value);
