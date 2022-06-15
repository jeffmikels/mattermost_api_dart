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
    MMAuthentication? authMethod,
  }) : _authMethod = authMethod;

  final String basePath;

  final MMAuthentication? _authMethod;
  MMAuthentication? get authMethod => _authMethod;


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
  Map<String,String> get defaultHeaderMap => _defaultHeaderMap;

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
  /// This function will wrap all errors with [MMApiException]
  Future<Response> invokeAPI(
    String path,
    String method,
    List<MMQueryParam> queryParams,
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

    final urlEncodedMMQueryParams = queryParams.map((param) => '$param');
    final queryString = urlEncodedMMQueryParams.isNotEmpty ? '?${urlEncodedMMQueryParams.join('&')}' : '';
    final uri = Uri.parse('$basePath$path$queryString');

    try {
      // Special case for uploading a single file which isn't a 'multipart/form-data'.
      if (
        body is MultipartFile && (contentType == null ||
        !contentType.toLowerCase().startsWith('multipart/form-data'))
      ) {
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

      final msgBody = contentType == 'application/x-www-form-urlencoded'
        ? formParams
        : await serializeAsync(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      switch(method) {
        case 'POST': return await _client.post(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PUT': return await _client.put(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'DELETE': return await _client.delete(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PATCH': return await _client.patch(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'HEAD': return await _client.head(uri, headers: nullableHeaderParams,);
        case 'GET': return await _client.get(uri, headers: nullableHeaderParams,);
      }
    } on SocketException catch (error, trace) {
      throw MMApiException.withInner(
        HttpStatus.badRequest,
        'Socket operation failed: $method $path',
        error,
        trace,
      );
    } on TlsException catch (error, trace) {
      throw MMApiException.withInner(
        HttpStatus.badRequest,
        'TLS/SSL communication failed: $method $path',
        error,
        trace,
      );
    } on IOException catch (error, trace) {
      throw MMApiException.withInner(
        HttpStatus.badRequest,
        'I/O operation failed: $method $path',
        error,
        trace,
      );
    } on ClientException catch (error, trace) {
      throw MMApiException.withInner(
        HttpStatus.badRequest,
        'HTTP connection failed: $method $path',
        error,
        trace,
      );
    } on Exception catch (error, trace) {
      throw MMApiException.withInner(
        HttpStatus.badRequest,
        'Exception occurred: $method $path',
        error,
        trace,
      );
    }

    throw MMApiException(
      HttpStatus.badRequest,
      'Invalid HTTP operation: $method $path',
    );
  }

  /// Will update query and header parameters based on authentication settings
  /// (called from the invokeAPI command).
  void _updateParamsForAuth(
    List<MMQueryParam> queryParams,
    Map<String, String> headerParams,
  ) {
    if (_authMethod != null) {
      _authMethod!.applyToParams(queryParams, headerParams);
    }
  }

  // Code to handle object deserialization: json --> model

  Future<dynamic> deserializeAsync(String json, String targetType, {bool growable = false,}) async =>
    // ignore: deprecated_member_use_from_same_package
    deserialize(json, targetType, growable: growable);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  dynamic deserialize(String json, String targetType, {bool growable = false,}) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType = targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String'
      ? json
      : _deserialize(jsonDecode(json), targetType, growable: growable);
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
        case 'MMAddChannelMemberRequest':
          return MMAddChannelMemberRequest.fromJson(value);
        case 'MMAddGroupMembersRequest':
          return MMAddGroupMembersRequest.fromJson(value);
        case 'MMAddOn':
          return MMAddOn.fromJson(value);
        case 'MMAddTeamMemberRequest':
          return MMAddTeamMemberRequest.fromJson(value);
        case 'MMAddress':
          return MMAddress.fromJson(value);
        case 'MMAppError':
          return MMAppError.fromJson(value);
        case 'MMAttachDeviceIdRequest':
          return MMAttachDeviceIdRequest.fromJson(value);
        case 'MMAudit':
          return MMAudit.fromJson(value);
        case 'MMAutocompleteSuggestion':
          return MMAutocompleteSuggestion.fromJson(value);
        case 'MMBoardsLimits':
          return MMBoardsLimits.fromJson(value);
        case 'MMBot':
          return MMBot.fromJson(value);
        case 'MMChannel':
          return MMChannel.fromJson(value);
        case 'MMChannelData':
          return MMChannelData.fromJson(value);
        case 'MMChannelMember':
          return MMChannelMember.fromJson(value);
        case 'MMChannelMemberCountByGroup':
          return MMChannelMemberCountByGroup.fromJson(value);
        case 'MMChannelMemberWithTeamData':
          return MMChannelMemberWithTeamData.fromJson(value);
        case 'MMChannelMemberWithTeamDataAllOf':
          return MMChannelMemberWithTeamDataAllOf.fromJson(value);
        case 'MMChannelModeratedRole':
          return MMChannelModeratedRole.fromJson(value);
        case 'MMChannelModeratedRoles':
          return MMChannelModeratedRoles.fromJson(value);
        case 'MMChannelModeratedRolesPatch':
          return MMChannelModeratedRolesPatch.fromJson(value);
        case 'MMChannelModeration':
          return MMChannelModeration.fromJson(value);
        case 'MMChannelModerationPatch':
          return MMChannelModerationPatch.fromJson(value);
        case 'MMChannelNotifyProps':
          return MMChannelNotifyProps.fromJson(value);
        case 'MMChannelStats':
          return MMChannelStats.fromJson(value);
        case 'MMChannelUnread':
          return MMChannelUnread.fromJson(value);
        case 'MMChannelUnreadAt':
          return MMChannelUnreadAt.fromJson(value);
        case 'MMChannelWithTeamData':
          return MMChannelWithTeamData.fromJson(value);
        case 'MMChannelWithTeamDataAllOf':
          return MMChannelWithTeamDataAllOf.fromJson(value);
        case 'MMCheckUserMfa200Response':
          return MMCheckUserMfa200Response.fromJson(value);
        case 'MMCheckUserMfaRequest':
          return MMCheckUserMfaRequest.fromJson(value);
        case 'MMCloudCustomer':
          return MMCloudCustomer.fromJson(value);
        case 'MMClusterInfo':
          return MMClusterInfo.fromJson(value);
        case 'MMCommand':
          return MMCommand.fromJson(value);
        case 'MMCommandResponse':
          return MMCommandResponse.fromJson(value);
        case 'MMCompliance':
          return MMCompliance.fromJson(value);
        case 'MMConfig':
          return MMConfig.fromJson(value);
        case 'MMConfigAnalyticsSettings':
          return MMConfigAnalyticsSettings.fromJson(value);
        case 'MMConfigClusterSettings':
          return MMConfigClusterSettings.fromJson(value);
        case 'MMConfigComplianceSettings':
          return MMConfigComplianceSettings.fromJson(value);
        case 'MMConfigEmailSettings':
          return MMConfigEmailSettings.fromJson(value);
        case 'MMConfigFileSettings':
          return MMConfigFileSettings.fromJson(value);
        case 'MMConfigGitLabSettings':
          return MMConfigGitLabSettings.fromJson(value);
        case 'MMConfigLdapSettings':
          return MMConfigLdapSettings.fromJson(value);
        case 'MMConfigLocalizationSettings':
          return MMConfigLocalizationSettings.fromJson(value);
        case 'MMConfigLogSettings':
          return MMConfigLogSettings.fromJson(value);
        case 'MMConfigMetricsSettings':
          return MMConfigMetricsSettings.fromJson(value);
        case 'MMConfigNativeAppSettings':
          return MMConfigNativeAppSettings.fromJson(value);
        case 'MMConfigPasswordSettings':
          return MMConfigPasswordSettings.fromJson(value);
        case 'MMConfigPrivacySettings':
          return MMConfigPrivacySettings.fromJson(value);
        case 'MMConfigRateLimitSettings':
          return MMConfigRateLimitSettings.fromJson(value);
        case 'MMConfigSamlSettings':
          return MMConfigSamlSettings.fromJson(value);
        case 'MMConfigServiceSettings':
          return MMConfigServiceSettings.fromJson(value);
        case 'MMConfigSqlSettings':
          return MMConfigSqlSettings.fromJson(value);
        case 'MMConfigSupportSettings':
          return MMConfigSupportSettings.fromJson(value);
        case 'MMConfigTeamSettings':
          return MMConfigTeamSettings.fromJson(value);
        case 'MMConvertBotToUserRequest':
          return MMConvertBotToUserRequest.fromJson(value);
        case 'MMCreateBotRequest':
          return MMCreateBotRequest.fromJson(value);
        case 'MMCreateChannelRequest':
          return MMCreateChannelRequest.fromJson(value);
        case 'MMCreateCommandRequest':
          return MMCreateCommandRequest.fromJson(value);
        case 'MMCreateGroupRequest':
          return MMCreateGroupRequest.fromJson(value);
        case 'MMCreateGroupRequestGroup':
          return MMCreateGroupRequestGroup.fromJson(value);
        case 'MMCreateIncomingWebhookRequest':
          return MMCreateIncomingWebhookRequest.fromJson(value);
        case 'MMCreateJobRequest':
          return MMCreateJobRequest.fromJson(value);
        case 'MMCreateOAuthAppRequest':
          return MMCreateOAuthAppRequest.fromJson(value);
        case 'MMCreateOutgoingWebhookRequest':
          return MMCreateOutgoingWebhookRequest.fromJson(value);
        case 'MMCreatePostEphemeralRequest':
          return MMCreatePostEphemeralRequest.fromJson(value);
        case 'MMCreatePostEphemeralRequestPost':
          return MMCreatePostEphemeralRequestPost.fromJson(value);
        case 'MMCreatePostRequest':
          return MMCreatePostRequest.fromJson(value);
        case 'MMCreateSchemeRequest':
          return MMCreateSchemeRequest.fromJson(value);
        case 'MMCreateTeamRequest':
          return MMCreateTeamRequest.fromJson(value);
        case 'MMCreateUploadRequest':
          return MMCreateUploadRequest.fromJson(value);
        case 'MMCreateUserAccessTokenRequest':
          return MMCreateUserAccessTokenRequest.fromJson(value);
        case 'MMCreateUserRequest':
          return MMCreateUserRequest.fromJson(value);
        case 'MMDataRetentionPolicy':
          return MMDataRetentionPolicy.fromJson(value);
        case 'MMDataRetentionPolicyAllOf':
          return MMDataRetentionPolicyAllOf.fromJson(value);
        case 'MMDataRetentionPolicyCreate':
          return MMDataRetentionPolicyCreate.fromJson(value);
        case 'MMDataRetentionPolicyForChannel':
          return MMDataRetentionPolicyForChannel.fromJson(value);
        case 'MMDataRetentionPolicyForTeam':
          return MMDataRetentionPolicyForTeam.fromJson(value);
        case 'MMDataRetentionPolicyWithTeamAndChannelCounts':
          return MMDataRetentionPolicyWithTeamAndChannelCounts.fromJson(value);
        case 'MMDataRetentionPolicyWithTeamAndChannelCountsAllOf':
          return MMDataRetentionPolicyWithTeamAndChannelCountsAllOf.fromJson(value);
        case 'MMDataRetentionPolicyWithTeamAndChannelIds':
          return MMDataRetentionPolicyWithTeamAndChannelIds.fromJson(value);
        case 'MMDataRetentionPolicyWithTeamAndChannelIdsAllOf':
          return MMDataRetentionPolicyWithTeamAndChannelIdsAllOf.fromJson(value);
        case 'MMDataRetentionPolicyWithoutId':
          return MMDataRetentionPolicyWithoutId.fromJson(value);
        case 'MMDeleteGroupMembersRequest':
          return MMDeleteGroupMembersRequest.fromJson(value);
        case 'MMDisableUserAccessTokenRequest':
          return MMDisableUserAccessTokenRequest.fromJson(value);
        case 'MMEmoji':
          return MMEmoji.fromJson(value);
        case 'MMEnableUserAccessTokenRequest':
          return MMEnableUserAccessTokenRequest.fromJson(value);
        case 'MMEnvironmentConfig':
          return MMEnvironmentConfig.fromJson(value);
        case 'MMEnvironmentConfigAnalyticsSettings':
          return MMEnvironmentConfigAnalyticsSettings.fromJson(value);
        case 'MMEnvironmentConfigClusterSettings':
          return MMEnvironmentConfigClusterSettings.fromJson(value);
        case 'MMEnvironmentConfigComplianceSettings':
          return MMEnvironmentConfigComplianceSettings.fromJson(value);
        case 'MMEnvironmentConfigEmailSettings':
          return MMEnvironmentConfigEmailSettings.fromJson(value);
        case 'MMEnvironmentConfigFileSettings':
          return MMEnvironmentConfigFileSettings.fromJson(value);
        case 'MMEnvironmentConfigGitLabSettings':
          return MMEnvironmentConfigGitLabSettings.fromJson(value);
        case 'MMEnvironmentConfigLdapSettings':
          return MMEnvironmentConfigLdapSettings.fromJson(value);
        case 'MMEnvironmentConfigLocalizationSettings':
          return MMEnvironmentConfigLocalizationSettings.fromJson(value);
        case 'MMEnvironmentConfigLogSettings':
          return MMEnvironmentConfigLogSettings.fromJson(value);
        case 'MMEnvironmentConfigMetricsSettings':
          return MMEnvironmentConfigMetricsSettings.fromJson(value);
        case 'MMEnvironmentConfigNativeAppSettings':
          return MMEnvironmentConfigNativeAppSettings.fromJson(value);
        case 'MMEnvironmentConfigPasswordSettings':
          return MMEnvironmentConfigPasswordSettings.fromJson(value);
        case 'MMEnvironmentConfigRateLimitSettings':
          return MMEnvironmentConfigRateLimitSettings.fromJson(value);
        case 'MMEnvironmentConfigSamlSettings':
          return MMEnvironmentConfigSamlSettings.fromJson(value);
        case 'MMEnvironmentConfigServiceSettings':
          return MMEnvironmentConfigServiceSettings.fromJson(value);
        case 'MMEnvironmentConfigSqlSettings':
          return MMEnvironmentConfigSqlSettings.fromJson(value);
        case 'MMEnvironmentConfigSupportSettings':
          return MMEnvironmentConfigSupportSettings.fromJson(value);
        case 'MMEnvironmentConfigTeamSettings':
          return MMEnvironmentConfigTeamSettings.fromJson(value);
        case 'MMExecuteCommandRequest':
          return MMExecuteCommandRequest.fromJson(value);
        case 'MMFileInfo':
          return MMFileInfo.fromJson(value);
        case 'MMFileInfoList':
          return MMFileInfoList.fromJson(value);
        case 'MMFilesLimits':
          return MMFilesLimits.fromJson(value);
        case 'MMGenerateMfaSecret200Response':
          return MMGenerateMfaSecret200Response.fromJson(value);
        case 'MMGetDataRetentionPoliciesCount200Response':
          return MMGetDataRetentionPoliciesCount200Response.fromJson(value);
        case 'MMGetFileLink200Response':
          return MMGetFileLink200Response.fromJson(value);
        case 'MMGetGroupStats200Response':
          return MMGetGroupStats200Response.fromJson(value);
        case 'MMGetGroupUsers200Response':
          return MMGetGroupUsers200Response.fromJson(value);
        case 'MMGetPlugins200Response':
          return MMGetPlugins200Response.fromJson(value);
        case 'MMGetRedirectLocation200Response':
          return MMGetRedirectLocation200Response.fromJson(value);
        case 'MMGetSamlMetadataFromIdpRequest':
          return MMGetSamlMetadataFromIdpRequest.fromJson(value);
        case 'MMGetTeamInviteInfo200Response':
          return MMGetTeamInviteInfo200Response.fromJson(value);
        case 'MMGetUsersByGroupChannelIds200Response':
          return MMGetUsersByGroupChannelIds200Response.fromJson(value);
        case 'MMGlobalDataRetentionPolicy':
          return MMGlobalDataRetentionPolicy.fromJson(value);
        case 'MMGroup':
          return MMGroup.fromJson(value);
        case 'MMGroupSyncableChannel':
          return MMGroupSyncableChannel.fromJson(value);
        case 'MMGroupSyncableChannels':
          return MMGroupSyncableChannels.fromJson(value);
        case 'MMGroupSyncableTeam':
          return MMGroupSyncableTeam.fromJson(value);
        case 'MMGroupSyncableTeams':
          return MMGroupSyncableTeams.fromJson(value);
        case 'MMGroupWithSchemeAdmin':
          return MMGroupWithSchemeAdmin.fromJson(value);
        case 'MMImportTeam200Response':
          return MMImportTeam200Response.fromJson(value);
        case 'MMIncomingWebhook':
          return MMIncomingWebhook.fromJson(value);
        case 'MMInstallMarketplacePluginRequest':
          return MMInstallMarketplacePluginRequest.fromJson(value);
        case 'MMIntegrationsLimits':
          return MMIntegrationsLimits.fromJson(value);
        case 'MMIntegrityCheckResult':
          return MMIntegrityCheckResult.fromJson(value);
        case 'MMInviteGuestsToTeamRequest':
          return MMInviteGuestsToTeamRequest.fromJson(value);
        case 'MMInvoice':
          return MMInvoice.fromJson(value);
        case 'MMInvoiceLineItem':
          return MMInvoiceLineItem.fromJson(value);
        case 'MMJob':
          return MMJob.fromJson(value);
        case 'MMLDAPGroup':
          return MMLDAPGroup.fromJson(value);
        case 'MMLDAPGroupsPaged':
          return MMLDAPGroupsPaged.fromJson(value);
        case 'MMLicenseRenewalLink':
          return MMLicenseRenewalLink.fromJson(value);
        case 'MMLoginByCwsTokenRequest':
          return MMLoginByCwsTokenRequest.fromJson(value);
        case 'MMLoginRequest':
          return MMLoginRequest.fromJson(value);
        case 'MMMarketplacePlugin':
          return MMMarketplacePlugin.fromJson(value);
        case 'MMMessagesLimits':
          return MMMessagesLimits.fromJson(value);
        case 'MMMigrateAuthToLdapRequest':
          return MMMigrateAuthToLdapRequest.fromJson(value);
        case 'MMMigrateAuthToSamlRequest':
          return MMMigrateAuthToSamlRequest.fromJson(value);
        case 'MMMigrateIdLdapRequest':
          return MMMigrateIdLdapRequest.fromJson(value);
        case 'MMMoveChannelRequest':
          return MMMoveChannelRequest.fromJson(value);
        case 'MMMoveCommandRequest':
          return MMMoveCommandRequest.fromJson(value);
        case 'MMNotice':
          return MMNotice.fromJson(value);
        case 'MMOAuthApp':
          return MMOAuthApp.fromJson(value);
        case 'MMOpenGraph':
          return MMOpenGraph.fromJson(value);
        case 'MMOpenGraphArticle':
          return MMOpenGraphArticle.fromJson(value);
        case 'MMOpenGraphArticleAuthorsInner':
          return MMOpenGraphArticleAuthorsInner.fromJson(value);
        case 'MMOpenGraphAudiosInner':
          return MMOpenGraphAudiosInner.fromJson(value);
        case 'MMOpenGraphBook':
          return MMOpenGraphBook.fromJson(value);
        case 'MMOpenGraphImagesInner':
          return MMOpenGraphImagesInner.fromJson(value);
        case 'MMOpenGraphRequest':
          return MMOpenGraphRequest.fromJson(value);
        case 'MMOpenGraphVideosInner':
          return MMOpenGraphVideosInner.fromJson(value);
        case 'MMOpenInteractiveDialogRequest':
          return MMOpenInteractiveDialogRequest.fromJson(value);
        case 'MMOpenInteractiveDialogRequestDialog':
          return MMOpenInteractiveDialogRequestDialog.fromJson(value);
        case 'MMOrderedSidebarCategories':
          return MMOrderedSidebarCategories.fromJson(value);
        case 'MMOrphanedRecord':
          return MMOrphanedRecord.fromJson(value);
        case 'MMOutgoingWebhook':
          return MMOutgoingWebhook.fromJson(value);
        case 'MMPatchChannelRequest':
          return MMPatchChannelRequest.fromJson(value);
        case 'MMPatchGroupRequest':
          return MMPatchGroupRequest.fromJson(value);
        case 'MMPatchGroupSyncableForTeamRequest':
          return MMPatchGroupSyncableForTeamRequest.fromJson(value);
        case 'MMPatchPostRequest':
          return MMPatchPostRequest.fromJson(value);
        case 'MMPatchRoleRequest':
          return MMPatchRoleRequest.fromJson(value);
        case 'MMPatchSchemeRequest':
          return MMPatchSchemeRequest.fromJson(value);
        case 'MMPatchTeamRequest':
          return MMPatchTeamRequest.fromJson(value);
        case 'MMPatchUserRequest':
          return MMPatchUserRequest.fromJson(value);
        case 'MMPaymentMethod':
          return MMPaymentMethod.fromJson(value);
        case 'MMPaymentSetupIntent':
          return MMPaymentSetupIntent.fromJson(value);
        case 'MMPluginManifest':
          return MMPluginManifest.fromJson(value);
        case 'MMPluginManifestBackend':
          return MMPluginManifestBackend.fromJson(value);
        case 'MMPluginManifestServer':
          return MMPluginManifestServer.fromJson(value);
        case 'MMPluginManifestServerExecutables':
          return MMPluginManifestServerExecutables.fromJson(value);
        case 'MMPluginManifestWebapp':
          return MMPluginManifestWebapp.fromJson(value);
        case 'MMPluginStatus':
          return MMPluginStatus.fromJson(value);
        case 'MMPost':
          return MMPost.fromJson(value);
        case 'MMPostList':
          return MMPostList.fromJson(value);
        case 'MMPostListWithSearchMatches':
          return MMPostListWithSearchMatches.fromJson(value);
        case 'MMPostLogRequest':
          return MMPostLogRequest.fromJson(value);
        case 'MMPostMetadata':
          return MMPostMetadata.fromJson(value);
        case 'MMPostMetadataEmbedsInner':
          return MMPostMetadataEmbedsInner.fromJson(value);
        case 'MMPostMetadataImagesInner':
          return MMPostMetadataImagesInner.fromJson(value);
        case 'MMPostsUsage':
          return MMPostsUsage.fromJson(value);
        case 'MMPreference':
          return MMPreference.fromJson(value);
        case 'MMProduct':
          return MMProduct.fromJson(value);
        case 'MMProductLimits':
          return MMProductLimits.fromJson(value);
        case 'MMPublishUserTypingRequest':
          return MMPublishUserTypingRequest.fromJson(value);
        case 'MMPushNotification':
          return MMPushNotification.fromJson(value);
        case 'MMReaction':
          return MMReaction.fromJson(value);
        case 'MMRegenCommandToken200Response':
          return MMRegenCommandToken200Response.fromJson(value);
        case 'MMRegisterTermsOfServiceActionRequest':
          return MMRegisterTermsOfServiceActionRequest.fromJson(value);
        case 'MMRelationalIntegrityCheckData':
          return MMRelationalIntegrityCheckData.fromJson(value);
        case 'MMRemoteClusterInfo':
          return MMRemoteClusterInfo.fromJson(value);
        case 'MMRemoveRecentCustomStatusRequest':
          return MMRemoveRecentCustomStatusRequest.fromJson(value);
        case 'MMRequestTrialLicenseRequest':
          return MMRequestTrialLicenseRequest.fromJson(value);
        case 'MMResetPasswordRequest':
          return MMResetPasswordRequest.fromJson(value);
        case 'MMResetSamlAuthDataToEmail200Response':
          return MMResetSamlAuthDataToEmail200Response.fromJson(value);
        case 'MMResetSamlAuthDataToEmailRequest':
          return MMResetSamlAuthDataToEmailRequest.fromJson(value);
        case 'MMRetentionPolicyForChannelList':
          return MMRetentionPolicyForChannelList.fromJson(value);
        case 'MMRetentionPolicyForTeamList':
          return MMRetentionPolicyForTeamList.fromJson(value);
        case 'MMRevokeSessionRequest':
          return MMRevokeSessionRequest.fromJson(value);
        case 'MMRevokeUserAccessTokenRequest':
          return MMRevokeUserAccessTokenRequest.fromJson(value);
        case 'MMRole':
          return MMRole.fromJson(value);
        case 'MMSamlCertificateStatus':
          return MMSamlCertificateStatus.fromJson(value);
        case 'MMScheme':
          return MMScheme.fromJson(value);
        case 'MMSearchAllChannels200Response':
          return MMSearchAllChannels200Response.fromJson(value);
        case 'MMSearchAllChannelsRequest':
          return MMSearchAllChannelsRequest.fromJson(value);
        case 'MMSearchArchivedChannelsRequest':
          return MMSearchArchivedChannelsRequest.fromJson(value);
        case 'MMSearchChannelsForRetentionPolicyRequest':
          return MMSearchChannelsForRetentionPolicyRequest.fromJson(value);
        case 'MMSearchChannelsRequest':
          return MMSearchChannelsRequest.fromJson(value);
        case 'MMSearchEmojiRequest':
          return MMSearchEmojiRequest.fromJson(value);
        case 'MMSearchGroupChannelsRequest':
          return MMSearchGroupChannelsRequest.fromJson(value);
        case 'MMSearchPostsRequest':
          return MMSearchPostsRequest.fromJson(value);
        case 'MMSearchTeams200Response':
          return MMSearchTeams200Response.fromJson(value);
        case 'MMSearchTeamsForRetentionPolicyRequest':
          return MMSearchTeamsForRetentionPolicyRequest.fromJson(value);
        case 'MMSearchTeamsRequest':
          return MMSearchTeamsRequest.fromJson(value);
        case 'MMSearchUserAccessTokensRequest':
          return MMSearchUserAccessTokensRequest.fromJson(value);
        case 'MMSearchUsersRequest':
          return MMSearchUsersRequest.fromJson(value);
        case 'MMSendPasswordResetEmailRequest':
          return MMSendPasswordResetEmailRequest.fromJson(value);
        case 'MMSendVerificationEmailRequest':
          return MMSendVerificationEmailRequest.fromJson(value);
        case 'MMSendWarnMetricAckRequest':
          return MMSendWarnMetricAckRequest.fromJson(value);
        case 'MMServerBusy':
          return MMServerBusy.fromJson(value);
        case 'MMSession':
          return MMSession.fromJson(value);
        case 'MMSharedChannel':
          return MMSharedChannel.fromJson(value);
        case 'MMSidebarCategory':
          return MMSidebarCategory.fromJson(value);
        case 'MMSidebarCategoryWithChannels':
          return MMSidebarCategoryWithChannels.fromJson(value);
        case 'MMSlackAttachment':
          return MMSlackAttachment.fromJson(value);
        case 'MMSlackAttachmentField':
          return MMSlackAttachmentField.fromJson(value);
        case 'MMStatus':
          return MMStatus.fromJson(value);
        case 'MMStatusOK':
          return MMStatusOK.fromJson(value);
        case 'MMSubmitInteractiveDialogRequest':
          return MMSubmitInteractiveDialogRequest.fromJson(value);
        case 'MMSubscription':
          return MMSubscription.fromJson(value);
        case 'MMSubscriptionStats':
          return MMSubscriptionStats.fromJson(value);
        case 'MMSwitchAccountType200Response':
          return MMSwitchAccountType200Response.fromJson(value);
        case 'MMSwitchAccountTypeRequest':
          return MMSwitchAccountTypeRequest.fromJson(value);
        case 'MMSystem':
          return MMSystem.fromJson(value);
        case 'MMSystemStatusResponse':
          return MMSystemStatusResponse.fromJson(value);
        case 'MMTeam':
          return MMTeam.fromJson(value);
        case 'MMTeamExists':
          return MMTeamExists.fromJson(value);
        case 'MMTeamMap':
          return MMTeamMap.fromJson(value);
        case 'MMTeamMember':
          return MMTeamMember.fromJson(value);
        case 'MMTeamStats':
          return MMTeamStats.fromJson(value);
        case 'MMTeamUnread':
          return MMTeamUnread.fromJson(value);
        case 'MMTeamsLimits':
          return MMTeamsLimits.fromJson(value);
        case 'MMTermsOfService':
          return MMTermsOfService.fromJson(value);
        case 'MMTestSiteURLRequest':
          return MMTestSiteURLRequest.fromJson(value);
        case 'MMTimezone':
          return MMTimezone.fromJson(value);
        case 'MMTopChannel':
          return MMTopChannel.fromJson(value);
        case 'MMTopChannelList':
          return MMTopChannelList.fromJson(value);
        case 'MMTopReaction':
          return MMTopReaction.fromJson(value);
        case 'MMTopReactionList':
          return MMTopReactionList.fromJson(value);
        case 'MMUpdateChannelPrivacyRequest':
          return MMUpdateChannelPrivacyRequest.fromJson(value);
        case 'MMUpdateChannelRequest':
          return MMUpdateChannelRequest.fromJson(value);
        case 'MMUpdateCloudCustomerRequest':
          return MMUpdateCloudCustomerRequest.fromJson(value);
        case 'MMUpdateIncomingWebhookRequest':
          return MMUpdateIncomingWebhookRequest.fromJson(value);
        case 'MMUpdateOAuthAppRequest':
          return MMUpdateOAuthAppRequest.fromJson(value);
        case 'MMUpdateOutgoingWebhookRequest':
          return MMUpdateOutgoingWebhookRequest.fromJson(value);
        case 'MMUpdatePostRequest':
          return MMUpdatePostRequest.fromJson(value);
        case 'MMUpdateTeamMemberSchemeRolesRequest':
          return MMUpdateTeamMemberSchemeRolesRequest.fromJson(value);
        case 'MMUpdateTeamPrivacyRequest':
          return MMUpdateTeamPrivacyRequest.fromJson(value);
        case 'MMUpdateTeamRequest':
          return MMUpdateTeamRequest.fromJson(value);
        case 'MMUpdateTeamSchemeRequest':
          return MMUpdateTeamSchemeRequest.fromJson(value);
        case 'MMUpdateUserActiveRequest':
          return MMUpdateUserActiveRequest.fromJson(value);
        case 'MMUpdateUserCustomStatusRequest':
          return MMUpdateUserCustomStatusRequest.fromJson(value);
        case 'MMUpdateUserMfaRequest':
          return MMUpdateUserMfaRequest.fromJson(value);
        case 'MMUpdateUserPasswordRequest':
          return MMUpdateUserPasswordRequest.fromJson(value);
        case 'MMUpdateUserRequest':
          return MMUpdateUserRequest.fromJson(value);
        case 'MMUpdateUserRolesRequest':
          return MMUpdateUserRolesRequest.fromJson(value);
        case 'MMUpdateUserStatusRequest':
          return MMUpdateUserStatusRequest.fromJson(value);
        case 'MMUpgradeToEnterpriseStatus200Response':
          return MMUpgradeToEnterpriseStatus200Response.fromJson(value);
        case 'MMUploadFile201Response':
          return MMUploadFile201Response.fromJson(value);
        case 'MMUploadSession':
          return MMUploadSession.fromJson(value);
        case 'MMUser':
          return MMUser.fromJson(value);
        case 'MMUserAccessToken':
          return MMUserAccessToken.fromJson(value);
        case 'MMUserAccessTokenSanitized':
          return MMUserAccessTokenSanitized.fromJson(value);
        case 'MMUserAuthData':
          return MMUserAuthData.fromJson(value);
        case 'MMUserAutocomplete':
          return MMUserAutocomplete.fromJson(value);
        case 'MMUserAutocompleteInChannel':
          return MMUserAutocompleteInChannel.fromJson(value);
        case 'MMUserAutocompleteInTeam':
          return MMUserAutocompleteInTeam.fromJson(value);
        case 'MMUserNotifyProps':
          return MMUserNotifyProps.fromJson(value);
        case 'MMUserTermsOfService':
          return MMUserTermsOfService.fromJson(value);
        case 'MMUserThread':
          return MMUserThread.fromJson(value);
        case 'MMUserThreads':
          return MMUserThreads.fromJson(value);
        case 'MMUsersStats':
          return MMUsersStats.fromJson(value);
        case 'MMVerifyUserEmailRequest':
          return MMVerifyUserEmailRequest.fromJson(value);
        case 'MMViewChannel200Response':
          return MMViewChannel200Response.fromJson(value);
        case 'MMViewChannelRequest':
          return MMViewChannelRequest.fromJson(value);
        default:
          dynamic match;
          if (value is List && (match = _regList.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => _deserialize(v, match, growable: growable,))
              .toList(growable: growable);
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => _deserialize(v, match, growable: growable,))
              .toSet();
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)?.group(1)) != null) {
            return Map<String, dynamic>.fromIterables(
              value.keys.cast<String>(),
              value.values.map<dynamic>((dynamic v) => _deserialize(v, match, growable: growable,)),
            );
          }
      }
    } on Exception catch (error, trace) {
      throw MMApiException.withInner(HttpStatus.internalServerError, 'Exception during deserialization.', error, trace,);
    }
    throw MMApiException(HttpStatus.internalServerError, 'Could not find a suitable class for deserialization',);
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
