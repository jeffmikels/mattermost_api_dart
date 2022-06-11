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
  MattermostApiClient({this.basePath = 'http://your-mattermost-url.com/api/v4', this.authentication});

  final String basePath;

  var _client = Client();

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  set client(Client newClient) {
    _client = newClient;
  }

  final _defaultHeaderMap = <String, String>{};
  final MattermostAuthentication? authentication;

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  Map<String,String> get defaultHeaderMap => _defaultHeaderMap;

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    List<MattermostQueryParam> queryParams,
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

    final urlEncodedMattermostQueryParams = queryParams.map((param) => '$param');
    final queryString = urlEncodedMattermostQueryParams.isNotEmpty ? '?${urlEncodedMattermostQueryParams.join('&')}' : '';
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
      throw MattermostApiException.withInner(
        HttpStatus.badRequest,
        'Socket operation failed: $method $path',
        error,
        trace,
      );
    } on TlsException catch (error, trace) {
      throw MattermostApiException.withInner(
        HttpStatus.badRequest,
        'TLS/SSL communication failed: $method $path',
        error,
        trace,
      );
    } on IOException catch (error, trace) {
      throw MattermostApiException.withInner(
        HttpStatus.badRequest,
        'I/O operation failed: $method $path',
        error,
        trace,
      );
    } on ClientException catch (error, trace) {
      throw MattermostApiException.withInner(
        HttpStatus.badRequest,
        'HTTP connection failed: $method $path',
        error,
        trace,
      );
    } on Exception catch (error, trace) {
      throw MattermostApiException.withInner(
        HttpStatus.badRequest,
        'Exception occurred: $method $path',
        error,
        trace,
      );
    }

    throw MattermostApiException(
      HttpStatus.badRequest,
      'Invalid HTTP operation: $method $path',
    );
  }

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

  /// Update query and header parameters based on authentication settings.
  void _updateParamsForAuth(
    List<MattermostQueryParam> queryParams,
    Map<String, String> headerParams,
  ) {
    if (authentication != null) {
      authentication!.applyToParams(queryParams, headerParams);
    }
  }

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
        case 'MattermostAddChannelMemberRequest':
          return MattermostAddChannelMemberRequest.fromJson(value);
        case 'MattermostAddGroupMembersRequest':
          return MattermostAddGroupMembersRequest.fromJson(value);
        case 'MattermostAddOn':
          return MattermostAddOn.fromJson(value);
        case 'MattermostAddTeamMemberRequest':
          return MattermostAddTeamMemberRequest.fromJson(value);
        case 'MattermostAddress':
          return MattermostAddress.fromJson(value);
        case 'MattermostAppError':
          return MattermostAppError.fromJson(value);
        case 'MattermostAttachDeviceIdRequest':
          return MattermostAttachDeviceIdRequest.fromJson(value);
        case 'MattermostAudit':
          return MattermostAudit.fromJson(value);
        case 'MattermostAutocompleteSuggestion':
          return MattermostAutocompleteSuggestion.fromJson(value);
        case 'MattermostBoardsLimits':
          return MattermostBoardsLimits.fromJson(value);
        case 'MattermostBot':
          return MattermostBot.fromJson(value);
        case 'MattermostChannel':
          return MattermostChannel.fromJson(value);
        case 'MattermostChannelData':
          return MattermostChannelData.fromJson(value);
        case 'MattermostChannelMember':
          return MattermostChannelMember.fromJson(value);
        case 'MattermostChannelMemberCountByGroup':
          return MattermostChannelMemberCountByGroup.fromJson(value);
        case 'MattermostChannelMemberWithTeamData':
          return MattermostChannelMemberWithTeamData.fromJson(value);
        case 'MattermostChannelMemberWithTeamDataAllOf':
          return MattermostChannelMemberWithTeamDataAllOf.fromJson(value);
        case 'MattermostChannelModeratedRole':
          return MattermostChannelModeratedRole.fromJson(value);
        case 'MattermostChannelModeratedRoles':
          return MattermostChannelModeratedRoles.fromJson(value);
        case 'MattermostChannelModeratedRolesPatch':
          return MattermostChannelModeratedRolesPatch.fromJson(value);
        case 'MattermostChannelModeration':
          return MattermostChannelModeration.fromJson(value);
        case 'MattermostChannelModerationPatch':
          return MattermostChannelModerationPatch.fromJson(value);
        case 'MattermostChannelNotifyProps':
          return MattermostChannelNotifyProps.fromJson(value);
        case 'MattermostChannelStats':
          return MattermostChannelStats.fromJson(value);
        case 'MattermostChannelUnread':
          return MattermostChannelUnread.fromJson(value);
        case 'MattermostChannelUnreadAt':
          return MattermostChannelUnreadAt.fromJson(value);
        case 'MattermostChannelWithTeamData':
          return MattermostChannelWithTeamData.fromJson(value);
        case 'MattermostChannelWithTeamDataAllOf':
          return MattermostChannelWithTeamDataAllOf.fromJson(value);
        case 'MattermostCheckUserMfa200Response':
          return MattermostCheckUserMfa200Response.fromJson(value);
        case 'MattermostCheckUserMfaRequest':
          return MattermostCheckUserMfaRequest.fromJson(value);
        case 'MattermostCloudCustomer':
          return MattermostCloudCustomer.fromJson(value);
        case 'MattermostClusterInfo':
          return MattermostClusterInfo.fromJson(value);
        case 'MattermostCommand':
          return MattermostCommand.fromJson(value);
        case 'MattermostCommandResponse':
          return MattermostCommandResponse.fromJson(value);
        case 'MattermostCompliance':
          return MattermostCompliance.fromJson(value);
        case 'MattermostConfig':
          return MattermostConfig.fromJson(value);
        case 'MattermostConfigAnalyticsSettings':
          return MattermostConfigAnalyticsSettings.fromJson(value);
        case 'MattermostConfigClusterSettings':
          return MattermostConfigClusterSettings.fromJson(value);
        case 'MattermostConfigComplianceSettings':
          return MattermostConfigComplianceSettings.fromJson(value);
        case 'MattermostConfigEmailSettings':
          return MattermostConfigEmailSettings.fromJson(value);
        case 'MattermostConfigFileSettings':
          return MattermostConfigFileSettings.fromJson(value);
        case 'MattermostConfigGitLabSettings':
          return MattermostConfigGitLabSettings.fromJson(value);
        case 'MattermostConfigLdapSettings':
          return MattermostConfigLdapSettings.fromJson(value);
        case 'MattermostConfigLocalizationSettings':
          return MattermostConfigLocalizationSettings.fromJson(value);
        case 'MattermostConfigLogSettings':
          return MattermostConfigLogSettings.fromJson(value);
        case 'MattermostConfigMetricsSettings':
          return MattermostConfigMetricsSettings.fromJson(value);
        case 'MattermostConfigNativeAppSettings':
          return MattermostConfigNativeAppSettings.fromJson(value);
        case 'MattermostConfigPasswordSettings':
          return MattermostConfigPasswordSettings.fromJson(value);
        case 'MattermostConfigPrivacySettings':
          return MattermostConfigPrivacySettings.fromJson(value);
        case 'MattermostConfigRateLimitSettings':
          return MattermostConfigRateLimitSettings.fromJson(value);
        case 'MattermostConfigSamlSettings':
          return MattermostConfigSamlSettings.fromJson(value);
        case 'MattermostConfigServiceSettings':
          return MattermostConfigServiceSettings.fromJson(value);
        case 'MattermostConfigSqlSettings':
          return MattermostConfigSqlSettings.fromJson(value);
        case 'MattermostConfigSupportSettings':
          return MattermostConfigSupportSettings.fromJson(value);
        case 'MattermostConfigTeamSettings':
          return MattermostConfigTeamSettings.fromJson(value);
        case 'MattermostConvertBotToUserRequest':
          return MattermostConvertBotToUserRequest.fromJson(value);
        case 'MattermostCreateBotRequest':
          return MattermostCreateBotRequest.fromJson(value);
        case 'MattermostCreateChannelRequest':
          return MattermostCreateChannelRequest.fromJson(value);
        case 'MattermostCreateCommandRequest':
          return MattermostCreateCommandRequest.fromJson(value);
        case 'MattermostCreateGroupRequest':
          return MattermostCreateGroupRequest.fromJson(value);
        case 'MattermostCreateGroupRequestGroup':
          return MattermostCreateGroupRequestGroup.fromJson(value);
        case 'MattermostCreateIncomingWebhookRequest':
          return MattermostCreateIncomingWebhookRequest.fromJson(value);
        case 'MattermostCreateJobRequest':
          return MattermostCreateJobRequest.fromJson(value);
        case 'MattermostCreateOAuthAppRequest':
          return MattermostCreateOAuthAppRequest.fromJson(value);
        case 'MattermostCreateOutgoingWebhookRequest':
          return MattermostCreateOutgoingWebhookRequest.fromJson(value);
        case 'MattermostCreatePostEphemeralRequest':
          return MattermostCreatePostEphemeralRequest.fromJson(value);
        case 'MattermostCreatePostEphemeralRequestPost':
          return MattermostCreatePostEphemeralRequestPost.fromJson(value);
        case 'MattermostCreatePostRequest':
          return MattermostCreatePostRequest.fromJson(value);
        case 'MattermostCreateSchemeRequest':
          return MattermostCreateSchemeRequest.fromJson(value);
        case 'MattermostCreateTeamRequest':
          return MattermostCreateTeamRequest.fromJson(value);
        case 'MattermostCreateUploadRequest':
          return MattermostCreateUploadRequest.fromJson(value);
        case 'MattermostCreateUserAccessTokenRequest':
          return MattermostCreateUserAccessTokenRequest.fromJson(value);
        case 'MattermostCreateUserRequest':
          return MattermostCreateUserRequest.fromJson(value);
        case 'MattermostDataRetentionPolicy':
          return MattermostDataRetentionPolicy.fromJson(value);
        case 'MattermostDataRetentionPolicyAllOf':
          return MattermostDataRetentionPolicyAllOf.fromJson(value);
        case 'MattermostDataRetentionPolicyCreate':
          return MattermostDataRetentionPolicyCreate.fromJson(value);
        case 'MattermostDataRetentionPolicyForChannel':
          return MattermostDataRetentionPolicyForChannel.fromJson(value);
        case 'MattermostDataRetentionPolicyForTeam':
          return MattermostDataRetentionPolicyForTeam.fromJson(value);
        case 'MattermostDataRetentionPolicyWithTeamAndChannelCounts':
          return MattermostDataRetentionPolicyWithTeamAndChannelCounts.fromJson(value);
        case 'MattermostDataRetentionPolicyWithTeamAndChannelCountsAllOf':
          return MattermostDataRetentionPolicyWithTeamAndChannelCountsAllOf.fromJson(value);
        case 'MattermostDataRetentionPolicyWithTeamAndChannelIds':
          return MattermostDataRetentionPolicyWithTeamAndChannelIds.fromJson(value);
        case 'MattermostDataRetentionPolicyWithTeamAndChannelIdsAllOf':
          return MattermostDataRetentionPolicyWithTeamAndChannelIdsAllOf.fromJson(value);
        case 'MattermostDataRetentionPolicyWithoutId':
          return MattermostDataRetentionPolicyWithoutId.fromJson(value);
        case 'MattermostDeleteGroupMembersRequest':
          return MattermostDeleteGroupMembersRequest.fromJson(value);
        case 'MattermostDisableUserAccessTokenRequest':
          return MattermostDisableUserAccessTokenRequest.fromJson(value);
        case 'MattermostEmoji':
          return MattermostEmoji.fromJson(value);
        case 'MattermostEnableUserAccessTokenRequest':
          return MattermostEnableUserAccessTokenRequest.fromJson(value);
        case 'MattermostEnvironmentConfig':
          return MattermostEnvironmentConfig.fromJson(value);
        case 'MattermostEnvironmentConfigAnalyticsSettings':
          return MattermostEnvironmentConfigAnalyticsSettings.fromJson(value);
        case 'MattermostEnvironmentConfigClusterSettings':
          return MattermostEnvironmentConfigClusterSettings.fromJson(value);
        case 'MattermostEnvironmentConfigComplianceSettings':
          return MattermostEnvironmentConfigComplianceSettings.fromJson(value);
        case 'MattermostEnvironmentConfigEmailSettings':
          return MattermostEnvironmentConfigEmailSettings.fromJson(value);
        case 'MattermostEnvironmentConfigFileSettings':
          return MattermostEnvironmentConfigFileSettings.fromJson(value);
        case 'MattermostEnvironmentConfigGitLabSettings':
          return MattermostEnvironmentConfigGitLabSettings.fromJson(value);
        case 'MattermostEnvironmentConfigLdapSettings':
          return MattermostEnvironmentConfigLdapSettings.fromJson(value);
        case 'MattermostEnvironmentConfigLocalizationSettings':
          return MattermostEnvironmentConfigLocalizationSettings.fromJson(value);
        case 'MattermostEnvironmentConfigLogSettings':
          return MattermostEnvironmentConfigLogSettings.fromJson(value);
        case 'MattermostEnvironmentConfigMetricsSettings':
          return MattermostEnvironmentConfigMetricsSettings.fromJson(value);
        case 'MattermostEnvironmentConfigNativeAppSettings':
          return MattermostEnvironmentConfigNativeAppSettings.fromJson(value);
        case 'MattermostEnvironmentConfigPasswordSettings':
          return MattermostEnvironmentConfigPasswordSettings.fromJson(value);
        case 'MattermostEnvironmentConfigRateLimitSettings':
          return MattermostEnvironmentConfigRateLimitSettings.fromJson(value);
        case 'MattermostEnvironmentConfigSamlSettings':
          return MattermostEnvironmentConfigSamlSettings.fromJson(value);
        case 'MattermostEnvironmentConfigServiceSettings':
          return MattermostEnvironmentConfigServiceSettings.fromJson(value);
        case 'MattermostEnvironmentConfigSqlSettings':
          return MattermostEnvironmentConfigSqlSettings.fromJson(value);
        case 'MattermostEnvironmentConfigSupportSettings':
          return MattermostEnvironmentConfigSupportSettings.fromJson(value);
        case 'MattermostEnvironmentConfigTeamSettings':
          return MattermostEnvironmentConfigTeamSettings.fromJson(value);
        case 'MattermostExecuteCommandRequest':
          return MattermostExecuteCommandRequest.fromJson(value);
        case 'MattermostFileInfo':
          return MattermostFileInfo.fromJson(value);
        case 'MattermostFileInfoList':
          return MattermostFileInfoList.fromJson(value);
        case 'MattermostFilesLimits':
          return MattermostFilesLimits.fromJson(value);
        case 'MattermostGenerateMfaSecret200Response':
          return MattermostGenerateMfaSecret200Response.fromJson(value);
        case 'MattermostGetDataRetentionPoliciesCount200Response':
          return MattermostGetDataRetentionPoliciesCount200Response.fromJson(value);
        case 'MattermostGetFileLink200Response':
          return MattermostGetFileLink200Response.fromJson(value);
        case 'MattermostGetGroupStats200Response':
          return MattermostGetGroupStats200Response.fromJson(value);
        case 'MattermostGetGroupUsers200Response':
          return MattermostGetGroupUsers200Response.fromJson(value);
        case 'MattermostGetPlugins200Response':
          return MattermostGetPlugins200Response.fromJson(value);
        case 'MattermostGetRedirectLocation200Response':
          return MattermostGetRedirectLocation200Response.fromJson(value);
        case 'MattermostGetSamlMetadataFromIdpRequest':
          return MattermostGetSamlMetadataFromIdpRequest.fromJson(value);
        case 'MattermostGetTeamInviteInfo200Response':
          return MattermostGetTeamInviteInfo200Response.fromJson(value);
        case 'MattermostGetUsersByGroupChannelIds200Response':
          return MattermostGetUsersByGroupChannelIds200Response.fromJson(value);
        case 'MattermostGlobalDataRetentionPolicy':
          return MattermostGlobalDataRetentionPolicy.fromJson(value);
        case 'MattermostGroup':
          return MattermostGroup.fromJson(value);
        case 'MattermostGroupSyncableChannel':
          return MattermostGroupSyncableChannel.fromJson(value);
        case 'MattermostGroupSyncableChannels':
          return MattermostGroupSyncableChannels.fromJson(value);
        case 'MattermostGroupSyncableTeam':
          return MattermostGroupSyncableTeam.fromJson(value);
        case 'MattermostGroupSyncableTeams':
          return MattermostGroupSyncableTeams.fromJson(value);
        case 'MattermostGroupWithSchemeAdmin':
          return MattermostGroupWithSchemeAdmin.fromJson(value);
        case 'MattermostImportTeam200Response':
          return MattermostImportTeam200Response.fromJson(value);
        case 'MattermostIncomingWebhook':
          return MattermostIncomingWebhook.fromJson(value);
        case 'MattermostInstallMarketplacePluginRequest':
          return MattermostInstallMarketplacePluginRequest.fromJson(value);
        case 'MattermostIntegrationsLimits':
          return MattermostIntegrationsLimits.fromJson(value);
        case 'MattermostIntegrityCheckResult':
          return MattermostIntegrityCheckResult.fromJson(value);
        case 'MattermostInviteGuestsToTeamRequest':
          return MattermostInviteGuestsToTeamRequest.fromJson(value);
        case 'MattermostInvoice':
          return MattermostInvoice.fromJson(value);
        case 'MattermostInvoiceLineItem':
          return MattermostInvoiceLineItem.fromJson(value);
        case 'MattermostJob':
          return MattermostJob.fromJson(value);
        case 'MattermostLDAPGroup':
          return MattermostLDAPGroup.fromJson(value);
        case 'MattermostLDAPGroupsPaged':
          return MattermostLDAPGroupsPaged.fromJson(value);
        case 'MattermostLicenseRenewalLink':
          return MattermostLicenseRenewalLink.fromJson(value);
        case 'MattermostLoginByCwsTokenRequest':
          return MattermostLoginByCwsTokenRequest.fromJson(value);
        case 'MattermostLoginRequest':
          return MattermostLoginRequest.fromJson(value);
        case 'MattermostMarketplacePlugin':
          return MattermostMarketplacePlugin.fromJson(value);
        case 'MattermostMessagesLimits':
          return MattermostMessagesLimits.fromJson(value);
        case 'MattermostMigrateAuthToLdapRequest':
          return MattermostMigrateAuthToLdapRequest.fromJson(value);
        case 'MattermostMigrateAuthToSamlRequest':
          return MattermostMigrateAuthToSamlRequest.fromJson(value);
        case 'MattermostMigrateIdLdapRequest':
          return MattermostMigrateIdLdapRequest.fromJson(value);
        case 'MattermostMoveChannelRequest':
          return MattermostMoveChannelRequest.fromJson(value);
        case 'MattermostMoveCommandRequest':
          return MattermostMoveCommandRequest.fromJson(value);
        case 'MattermostNotice':
          return MattermostNotice.fromJson(value);
        case 'MattermostOAuthApp':
          return MattermostOAuthApp.fromJson(value);
        case 'MattermostOpenGraph':
          return MattermostOpenGraph.fromJson(value);
        case 'MattermostOpenGraphArticle':
          return MattermostOpenGraphArticle.fromJson(value);
        case 'MattermostOpenGraphArticleAuthorsInner':
          return MattermostOpenGraphArticleAuthorsInner.fromJson(value);
        case 'MattermostOpenGraphAudiosInner':
          return MattermostOpenGraphAudiosInner.fromJson(value);
        case 'MattermostOpenGraphBook':
          return MattermostOpenGraphBook.fromJson(value);
        case 'MattermostOpenGraphImagesInner':
          return MattermostOpenGraphImagesInner.fromJson(value);
        case 'MattermostOpenGraphRequest':
          return MattermostOpenGraphRequest.fromJson(value);
        case 'MattermostOpenGraphVideosInner':
          return MattermostOpenGraphVideosInner.fromJson(value);
        case 'MattermostOpenInteractiveDialogRequest':
          return MattermostOpenInteractiveDialogRequest.fromJson(value);
        case 'MattermostOpenInteractiveDialogRequestDialog':
          return MattermostOpenInteractiveDialogRequestDialog.fromJson(value);
        case 'MattermostOrderedSidebarCategories':
          return MattermostOrderedSidebarCategories.fromJson(value);
        case 'MattermostOrphanedRecord':
          return MattermostOrphanedRecord.fromJson(value);
        case 'MattermostOutgoingWebhook':
          return MattermostOutgoingWebhook.fromJson(value);
        case 'MattermostPatchChannelRequest':
          return MattermostPatchChannelRequest.fromJson(value);
        case 'MattermostPatchGroupRequest':
          return MattermostPatchGroupRequest.fromJson(value);
        case 'MattermostPatchGroupSyncableForTeamRequest':
          return MattermostPatchGroupSyncableForTeamRequest.fromJson(value);
        case 'MattermostPatchPostRequest':
          return MattermostPatchPostRequest.fromJson(value);
        case 'MattermostPatchRoleRequest':
          return MattermostPatchRoleRequest.fromJson(value);
        case 'MattermostPatchSchemeRequest':
          return MattermostPatchSchemeRequest.fromJson(value);
        case 'MattermostPatchTeamRequest':
          return MattermostPatchTeamRequest.fromJson(value);
        case 'MattermostPatchUserRequest':
          return MattermostPatchUserRequest.fromJson(value);
        case 'MattermostPaymentMethod':
          return MattermostPaymentMethod.fromJson(value);
        case 'MattermostPaymentSetupIntent':
          return MattermostPaymentSetupIntent.fromJson(value);
        case 'MattermostPluginManifest':
          return MattermostPluginManifest.fromJson(value);
        case 'MattermostPluginManifestBackend':
          return MattermostPluginManifestBackend.fromJson(value);
        case 'MattermostPluginManifestServer':
          return MattermostPluginManifestServer.fromJson(value);
        case 'MattermostPluginManifestServerExecutables':
          return MattermostPluginManifestServerExecutables.fromJson(value);
        case 'MattermostPluginManifestWebapp':
          return MattermostPluginManifestWebapp.fromJson(value);
        case 'MattermostPluginStatus':
          return MattermostPluginStatus.fromJson(value);
        case 'MattermostPost':
          return MattermostPost.fromJson(value);
        case 'MattermostPostList':
          return MattermostPostList.fromJson(value);
        case 'MattermostPostListWithSearchMatches':
          return MattermostPostListWithSearchMatches.fromJson(value);
        case 'MattermostPostLogRequest':
          return MattermostPostLogRequest.fromJson(value);
        case 'MattermostPostMetadata':
          return MattermostPostMetadata.fromJson(value);
        case 'MattermostPostMetadataEmbedsInner':
          return MattermostPostMetadataEmbedsInner.fromJson(value);
        case 'MattermostPostMetadataImagesInner':
          return MattermostPostMetadataImagesInner.fromJson(value);
        case 'MattermostPostsUsage':
          return MattermostPostsUsage.fromJson(value);
        case 'MattermostPreference':
          return MattermostPreference.fromJson(value);
        case 'MattermostProduct':
          return MattermostProduct.fromJson(value);
        case 'MattermostProductLimits':
          return MattermostProductLimits.fromJson(value);
        case 'MattermostPublishUserTypingRequest':
          return MattermostPublishUserTypingRequest.fromJson(value);
        case 'MattermostPushNotification':
          return MattermostPushNotification.fromJson(value);
        case 'MattermostReaction':
          return MattermostReaction.fromJson(value);
        case 'MattermostRegenCommandToken200Response':
          return MattermostRegenCommandToken200Response.fromJson(value);
        case 'MattermostRegisterTermsOfServiceActionRequest':
          return MattermostRegisterTermsOfServiceActionRequest.fromJson(value);
        case 'MattermostRelationalIntegrityCheckData':
          return MattermostRelationalIntegrityCheckData.fromJson(value);
        case 'MattermostRemoteClusterInfo':
          return MattermostRemoteClusterInfo.fromJson(value);
        case 'MattermostRemoveRecentCustomStatusRequest':
          return MattermostRemoveRecentCustomStatusRequest.fromJson(value);
        case 'MattermostRequestTrialLicenseRequest':
          return MattermostRequestTrialLicenseRequest.fromJson(value);
        case 'MattermostResetPasswordRequest':
          return MattermostResetPasswordRequest.fromJson(value);
        case 'MattermostResetSamlAuthDataToEmail200Response':
          return MattermostResetSamlAuthDataToEmail200Response.fromJson(value);
        case 'MattermostResetSamlAuthDataToEmailRequest':
          return MattermostResetSamlAuthDataToEmailRequest.fromJson(value);
        case 'MattermostRetentionPolicyForChannelList':
          return MattermostRetentionPolicyForChannelList.fromJson(value);
        case 'MattermostRetentionPolicyForTeamList':
          return MattermostRetentionPolicyForTeamList.fromJson(value);
        case 'MattermostRevokeSessionRequest':
          return MattermostRevokeSessionRequest.fromJson(value);
        case 'MattermostRevokeUserAccessTokenRequest':
          return MattermostRevokeUserAccessTokenRequest.fromJson(value);
        case 'MattermostRole':
          return MattermostRole.fromJson(value);
        case 'MattermostSamlCertificateStatus':
          return MattermostSamlCertificateStatus.fromJson(value);
        case 'MattermostScheme':
          return MattermostScheme.fromJson(value);
        case 'MattermostSearchAllChannels200Response':
          return MattermostSearchAllChannels200Response.fromJson(value);
        case 'MattermostSearchAllChannelsRequest':
          return MattermostSearchAllChannelsRequest.fromJson(value);
        case 'MattermostSearchArchivedChannelsRequest':
          return MattermostSearchArchivedChannelsRequest.fromJson(value);
        case 'MattermostSearchChannelsForRetentionPolicyRequest':
          return MattermostSearchChannelsForRetentionPolicyRequest.fromJson(value);
        case 'MattermostSearchChannelsRequest':
          return MattermostSearchChannelsRequest.fromJson(value);
        case 'MattermostSearchEmojiRequest':
          return MattermostSearchEmojiRequest.fromJson(value);
        case 'MattermostSearchGroupChannelsRequest':
          return MattermostSearchGroupChannelsRequest.fromJson(value);
        case 'MattermostSearchPostsRequest':
          return MattermostSearchPostsRequest.fromJson(value);
        case 'MattermostSearchTeams200Response':
          return MattermostSearchTeams200Response.fromJson(value);
        case 'MattermostSearchTeamsForRetentionPolicyRequest':
          return MattermostSearchTeamsForRetentionPolicyRequest.fromJson(value);
        case 'MattermostSearchTeamsRequest':
          return MattermostSearchTeamsRequest.fromJson(value);
        case 'MattermostSearchUserAccessTokensRequest':
          return MattermostSearchUserAccessTokensRequest.fromJson(value);
        case 'MattermostSearchUsersRequest':
          return MattermostSearchUsersRequest.fromJson(value);
        case 'MattermostSendPasswordResetEmailRequest':
          return MattermostSendPasswordResetEmailRequest.fromJson(value);
        case 'MattermostSendVerificationEmailRequest':
          return MattermostSendVerificationEmailRequest.fromJson(value);
        case 'MattermostSendWarnMetricAckRequest':
          return MattermostSendWarnMetricAckRequest.fromJson(value);
        case 'MattermostServerBusy':
          return MattermostServerBusy.fromJson(value);
        case 'MattermostSession':
          return MattermostSession.fromJson(value);
        case 'MattermostSharedChannel':
          return MattermostSharedChannel.fromJson(value);
        case 'MattermostSidebarCategory':
          return MattermostSidebarCategory.fromJson(value);
        case 'MattermostSidebarCategoryWithChannels':
          return MattermostSidebarCategoryWithChannels.fromJson(value);
        case 'MattermostSlackAttachment':
          return MattermostSlackAttachment.fromJson(value);
        case 'MattermostSlackAttachmentField':
          return MattermostSlackAttachmentField.fromJson(value);
        case 'MattermostStatus':
          return MattermostStatus.fromJson(value);
        case 'MattermostStatusOK':
          return MattermostStatusOK.fromJson(value);
        case 'MattermostSubmitInteractiveDialogRequest':
          return MattermostSubmitInteractiveDialogRequest.fromJson(value);
        case 'MattermostSubscription':
          return MattermostSubscription.fromJson(value);
        case 'MattermostSubscriptionStats':
          return MattermostSubscriptionStats.fromJson(value);
        case 'MattermostSwitchAccountType200Response':
          return MattermostSwitchAccountType200Response.fromJson(value);
        case 'MattermostSwitchAccountTypeRequest':
          return MattermostSwitchAccountTypeRequest.fromJson(value);
        case 'MattermostSystem':
          return MattermostSystem.fromJson(value);
        case 'MattermostSystemStatusResponse':
          return MattermostSystemStatusResponse.fromJson(value);
        case 'MattermostTeam':
          return MattermostTeam.fromJson(value);
        case 'MattermostTeamExists':
          return MattermostTeamExists.fromJson(value);
        case 'MattermostTeamMap':
          return MattermostTeamMap.fromJson(value);
        case 'MattermostTeamMember':
          return MattermostTeamMember.fromJson(value);
        case 'MattermostTeamStats':
          return MattermostTeamStats.fromJson(value);
        case 'MattermostTeamUnread':
          return MattermostTeamUnread.fromJson(value);
        case 'MattermostTeamsLimits':
          return MattermostTeamsLimits.fromJson(value);
        case 'MattermostTermsOfService':
          return MattermostTermsOfService.fromJson(value);
        case 'MattermostTestSiteURLRequest':
          return MattermostTestSiteURLRequest.fromJson(value);
        case 'MattermostTimezone':
          return MattermostTimezone.fromJson(value);
        case 'MattermostTopChannel':
          return MattermostTopChannel.fromJson(value);
        case 'MattermostTopChannelList':
          return MattermostTopChannelList.fromJson(value);
        case 'MattermostTopReaction':
          return MattermostTopReaction.fromJson(value);
        case 'MattermostTopReactionList':
          return MattermostTopReactionList.fromJson(value);
        case 'MattermostUpdateChannelPrivacyRequest':
          return MattermostUpdateChannelPrivacyRequest.fromJson(value);
        case 'MattermostUpdateChannelRequest':
          return MattermostUpdateChannelRequest.fromJson(value);
        case 'MattermostUpdateCloudCustomerRequest':
          return MattermostUpdateCloudCustomerRequest.fromJson(value);
        case 'MattermostUpdateIncomingWebhookRequest':
          return MattermostUpdateIncomingWebhookRequest.fromJson(value);
        case 'MattermostUpdateOAuthAppRequest':
          return MattermostUpdateOAuthAppRequest.fromJson(value);
        case 'MattermostUpdateOutgoingWebhookRequest':
          return MattermostUpdateOutgoingWebhookRequest.fromJson(value);
        case 'MattermostUpdatePostRequest':
          return MattermostUpdatePostRequest.fromJson(value);
        case 'MattermostUpdateTeamMemberSchemeRolesRequest':
          return MattermostUpdateTeamMemberSchemeRolesRequest.fromJson(value);
        case 'MattermostUpdateTeamPrivacyRequest':
          return MattermostUpdateTeamPrivacyRequest.fromJson(value);
        case 'MattermostUpdateTeamRequest':
          return MattermostUpdateTeamRequest.fromJson(value);
        case 'MattermostUpdateTeamSchemeRequest':
          return MattermostUpdateTeamSchemeRequest.fromJson(value);
        case 'MattermostUpdateUserActiveRequest':
          return MattermostUpdateUserActiveRequest.fromJson(value);
        case 'MattermostUpdateUserCustomStatusRequest':
          return MattermostUpdateUserCustomStatusRequest.fromJson(value);
        case 'MattermostUpdateUserMfaRequest':
          return MattermostUpdateUserMfaRequest.fromJson(value);
        case 'MattermostUpdateUserPasswordRequest':
          return MattermostUpdateUserPasswordRequest.fromJson(value);
        case 'MattermostUpdateUserRequest':
          return MattermostUpdateUserRequest.fromJson(value);
        case 'MattermostUpdateUserRolesRequest':
          return MattermostUpdateUserRolesRequest.fromJson(value);
        case 'MattermostUpdateUserStatusRequest':
          return MattermostUpdateUserStatusRequest.fromJson(value);
        case 'MattermostUpgradeToEnterpriseStatus200Response':
          return MattermostUpgradeToEnterpriseStatus200Response.fromJson(value);
        case 'MattermostUploadFile201Response':
          return MattermostUploadFile201Response.fromJson(value);
        case 'MattermostUploadSession':
          return MattermostUploadSession.fromJson(value);
        case 'MattermostUser':
          return MattermostUser.fromJson(value);
        case 'MattermostUserAccessToken':
          return MattermostUserAccessToken.fromJson(value);
        case 'MattermostUserAccessTokenSanitized':
          return MattermostUserAccessTokenSanitized.fromJson(value);
        case 'MattermostUserAuthData':
          return MattermostUserAuthData.fromJson(value);
        case 'MattermostUserAutocomplete':
          return MattermostUserAutocomplete.fromJson(value);
        case 'MattermostUserAutocompleteInChannel':
          return MattermostUserAutocompleteInChannel.fromJson(value);
        case 'MattermostUserAutocompleteInTeam':
          return MattermostUserAutocompleteInTeam.fromJson(value);
        case 'MattermostUserNotifyProps':
          return MattermostUserNotifyProps.fromJson(value);
        case 'MattermostUserTermsOfService':
          return MattermostUserTermsOfService.fromJson(value);
        case 'MattermostUserThread':
          return MattermostUserThread.fromJson(value);
        case 'MattermostUserThreads':
          return MattermostUserThreads.fromJson(value);
        case 'MattermostUsersStats':
          return MattermostUsersStats.fromJson(value);
        case 'MattermostVerifyUserEmailRequest':
          return MattermostVerifyUserEmailRequest.fromJson(value);
        case 'MattermostViewChannel200Response':
          return MattermostViewChannel200Response.fromJson(value);
        case 'MattermostViewChannelRequest':
          return MattermostViewChannelRequest.fromJson(value);
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
      throw MattermostApiException.withInner(HttpStatus.internalServerError, 'Exception during deserialization.', error, trace,);
    }
    throw MattermostApiException(HttpStatus.internalServerError, 'Could not find a suitable class for deserialization',);
  }
}

/// Primarily intended for use in an isolate.
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

/// Primarily intended for use in an isolate.
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
