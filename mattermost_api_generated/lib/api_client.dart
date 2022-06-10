//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class ApiClient {
  ApiClient({this.basePath = 'http://your-mattermost-url.com/api/v4', this.authentication});

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
  final Authentication? authentication;

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  Map<String,String> get defaultHeaderMap => _defaultHeaderMap;

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    List<QueryParam> queryParams,
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

    final urlEncodedQueryParams = queryParams.map((param) => '$param');
    final queryString = urlEncodedQueryParams.isNotEmpty ? '?${urlEncodedQueryParams.join('&')}' : '';
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
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Socket operation failed: $method $path',
        error,
        trace,
      );
    } on TlsException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'TLS/SSL communication failed: $method $path',
        error,
        trace,
      );
    } on IOException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'I/O operation failed: $method $path',
        error,
        trace,
      );
    } on ClientException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'HTTP connection failed: $method $path',
        error,
        trace,
      );
    } on Exception catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Exception occurred: $method $path',
        error,
        trace,
      );
    }

    throw ApiException(
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
    List<QueryParam> queryParams,
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
        case 'AddChannelMemberRequest':
          return AddChannelMemberRequest.fromJson(value);
        case 'AddGroupMembersRequest':
          return AddGroupMembersRequest.fromJson(value);
        case 'AddOn':
          return AddOn.fromJson(value);
        case 'AddTeamMemberRequest':
          return AddTeamMemberRequest.fromJson(value);
        case 'Address':
          return Address.fromJson(value);
        case 'AppError':
          return AppError.fromJson(value);
        case 'AttachDeviceIdRequest':
          return AttachDeviceIdRequest.fromJson(value);
        case 'Audit':
          return Audit.fromJson(value);
        case 'AutocompleteSuggestion':
          return AutocompleteSuggestion.fromJson(value);
        case 'BoardsLimits':
          return BoardsLimits.fromJson(value);
        case 'Bot':
          return Bot.fromJson(value);
        case 'Channel':
          return Channel.fromJson(value);
        case 'ChannelData':
          return ChannelData.fromJson(value);
        case 'ChannelMember':
          return ChannelMember.fromJson(value);
        case 'ChannelMemberCountByGroup':
          return ChannelMemberCountByGroup.fromJson(value);
        case 'ChannelMemberWithTeamData':
          return ChannelMemberWithTeamData.fromJson(value);
        case 'ChannelMemberWithTeamDataAllOf':
          return ChannelMemberWithTeamDataAllOf.fromJson(value);
        case 'ChannelModeratedRole':
          return ChannelModeratedRole.fromJson(value);
        case 'ChannelModeratedRoles':
          return ChannelModeratedRoles.fromJson(value);
        case 'ChannelModeratedRolesPatch':
          return ChannelModeratedRolesPatch.fromJson(value);
        case 'ChannelModeration':
          return ChannelModeration.fromJson(value);
        case 'ChannelModerationPatch':
          return ChannelModerationPatch.fromJson(value);
        case 'ChannelNotifyProps':
          return ChannelNotifyProps.fromJson(value);
        case 'ChannelStats':
          return ChannelStats.fromJson(value);
        case 'ChannelUnread':
          return ChannelUnread.fromJson(value);
        case 'ChannelUnreadAt':
          return ChannelUnreadAt.fromJson(value);
        case 'ChannelWithTeamData':
          return ChannelWithTeamData.fromJson(value);
        case 'ChannelWithTeamDataAllOf':
          return ChannelWithTeamDataAllOf.fromJson(value);
        case 'CheckUserMfa200Response':
          return CheckUserMfa200Response.fromJson(value);
        case 'CheckUserMfaRequest':
          return CheckUserMfaRequest.fromJson(value);
        case 'CloudCustomer':
          return CloudCustomer.fromJson(value);
        case 'ClusterInfo':
          return ClusterInfo.fromJson(value);
        case 'Command':
          return Command.fromJson(value);
        case 'CommandResponse':
          return CommandResponse.fromJson(value);
        case 'Compliance':
          return Compliance.fromJson(value);
        case 'Config':
          return Config.fromJson(value);
        case 'ConfigAnalyticsSettings':
          return ConfigAnalyticsSettings.fromJson(value);
        case 'ConfigClusterSettings':
          return ConfigClusterSettings.fromJson(value);
        case 'ConfigComplianceSettings':
          return ConfigComplianceSettings.fromJson(value);
        case 'ConfigEmailSettings':
          return ConfigEmailSettings.fromJson(value);
        case 'ConfigFileSettings':
          return ConfigFileSettings.fromJson(value);
        case 'ConfigGitLabSettings':
          return ConfigGitLabSettings.fromJson(value);
        case 'ConfigLdapSettings':
          return ConfigLdapSettings.fromJson(value);
        case 'ConfigLocalizationSettings':
          return ConfigLocalizationSettings.fromJson(value);
        case 'ConfigLogSettings':
          return ConfigLogSettings.fromJson(value);
        case 'ConfigMetricsSettings':
          return ConfigMetricsSettings.fromJson(value);
        case 'ConfigNativeAppSettings':
          return ConfigNativeAppSettings.fromJson(value);
        case 'ConfigPasswordSettings':
          return ConfigPasswordSettings.fromJson(value);
        case 'ConfigPrivacySettings':
          return ConfigPrivacySettings.fromJson(value);
        case 'ConfigRateLimitSettings':
          return ConfigRateLimitSettings.fromJson(value);
        case 'ConfigSamlSettings':
          return ConfigSamlSettings.fromJson(value);
        case 'ConfigServiceSettings':
          return ConfigServiceSettings.fromJson(value);
        case 'ConfigSqlSettings':
          return ConfigSqlSettings.fromJson(value);
        case 'ConfigSupportSettings':
          return ConfigSupportSettings.fromJson(value);
        case 'ConfigTeamSettings':
          return ConfigTeamSettings.fromJson(value);
        case 'ConvertBotToUserRequest':
          return ConvertBotToUserRequest.fromJson(value);
        case 'CreateBotRequest':
          return CreateBotRequest.fromJson(value);
        case 'CreateChannelRequest':
          return CreateChannelRequest.fromJson(value);
        case 'CreateCommandRequest':
          return CreateCommandRequest.fromJson(value);
        case 'CreateGroupRequest':
          return CreateGroupRequest.fromJson(value);
        case 'CreateGroupRequestGroup':
          return CreateGroupRequestGroup.fromJson(value);
        case 'CreateIncomingWebhookRequest':
          return CreateIncomingWebhookRequest.fromJson(value);
        case 'CreateJobRequest':
          return CreateJobRequest.fromJson(value);
        case 'CreateOAuthAppRequest':
          return CreateOAuthAppRequest.fromJson(value);
        case 'CreateOutgoingWebhookRequest':
          return CreateOutgoingWebhookRequest.fromJson(value);
        case 'CreatePostEphemeralRequest':
          return CreatePostEphemeralRequest.fromJson(value);
        case 'CreatePostEphemeralRequestPost':
          return CreatePostEphemeralRequestPost.fromJson(value);
        case 'CreatePostRequest':
          return CreatePostRequest.fromJson(value);
        case 'CreateSchemeRequest':
          return CreateSchemeRequest.fromJson(value);
        case 'CreateTeamRequest':
          return CreateTeamRequest.fromJson(value);
        case 'CreateUploadRequest':
          return CreateUploadRequest.fromJson(value);
        case 'CreateUserAccessTokenRequest':
          return CreateUserAccessTokenRequest.fromJson(value);
        case 'CreateUserRequest':
          return CreateUserRequest.fromJson(value);
        case 'DataRetentionPolicy':
          return DataRetentionPolicy.fromJson(value);
        case 'DataRetentionPolicyAllOf':
          return DataRetentionPolicyAllOf.fromJson(value);
        case 'DataRetentionPolicyCreate':
          return DataRetentionPolicyCreate.fromJson(value);
        case 'DataRetentionPolicyForChannel':
          return DataRetentionPolicyForChannel.fromJson(value);
        case 'DataRetentionPolicyForTeam':
          return DataRetentionPolicyForTeam.fromJson(value);
        case 'DataRetentionPolicyWithTeamAndChannelCounts':
          return DataRetentionPolicyWithTeamAndChannelCounts.fromJson(value);
        case 'DataRetentionPolicyWithTeamAndChannelCountsAllOf':
          return DataRetentionPolicyWithTeamAndChannelCountsAllOf.fromJson(value);
        case 'DataRetentionPolicyWithTeamAndChannelIds':
          return DataRetentionPolicyWithTeamAndChannelIds.fromJson(value);
        case 'DataRetentionPolicyWithTeamAndChannelIdsAllOf':
          return DataRetentionPolicyWithTeamAndChannelIdsAllOf.fromJson(value);
        case 'DataRetentionPolicyWithoutId':
          return DataRetentionPolicyWithoutId.fromJson(value);
        case 'DeleteGroupMembersRequest':
          return DeleteGroupMembersRequest.fromJson(value);
        case 'DisableUserAccessTokenRequest':
          return DisableUserAccessTokenRequest.fromJson(value);
        case 'Emoji':
          return Emoji.fromJson(value);
        case 'EnableUserAccessTokenRequest':
          return EnableUserAccessTokenRequest.fromJson(value);
        case 'EnvironmentConfig':
          return EnvironmentConfig.fromJson(value);
        case 'EnvironmentConfigAnalyticsSettings':
          return EnvironmentConfigAnalyticsSettings.fromJson(value);
        case 'EnvironmentConfigClusterSettings':
          return EnvironmentConfigClusterSettings.fromJson(value);
        case 'EnvironmentConfigComplianceSettings':
          return EnvironmentConfigComplianceSettings.fromJson(value);
        case 'EnvironmentConfigEmailSettings':
          return EnvironmentConfigEmailSettings.fromJson(value);
        case 'EnvironmentConfigFileSettings':
          return EnvironmentConfigFileSettings.fromJson(value);
        case 'EnvironmentConfigGitLabSettings':
          return EnvironmentConfigGitLabSettings.fromJson(value);
        case 'EnvironmentConfigLdapSettings':
          return EnvironmentConfigLdapSettings.fromJson(value);
        case 'EnvironmentConfigLocalizationSettings':
          return EnvironmentConfigLocalizationSettings.fromJson(value);
        case 'EnvironmentConfigLogSettings':
          return EnvironmentConfigLogSettings.fromJson(value);
        case 'EnvironmentConfigMetricsSettings':
          return EnvironmentConfigMetricsSettings.fromJson(value);
        case 'EnvironmentConfigNativeAppSettings':
          return EnvironmentConfigNativeAppSettings.fromJson(value);
        case 'EnvironmentConfigPasswordSettings':
          return EnvironmentConfigPasswordSettings.fromJson(value);
        case 'EnvironmentConfigRateLimitSettings':
          return EnvironmentConfigRateLimitSettings.fromJson(value);
        case 'EnvironmentConfigSamlSettings':
          return EnvironmentConfigSamlSettings.fromJson(value);
        case 'EnvironmentConfigServiceSettings':
          return EnvironmentConfigServiceSettings.fromJson(value);
        case 'EnvironmentConfigSqlSettings':
          return EnvironmentConfigSqlSettings.fromJson(value);
        case 'EnvironmentConfigSupportSettings':
          return EnvironmentConfigSupportSettings.fromJson(value);
        case 'EnvironmentConfigTeamSettings':
          return EnvironmentConfigTeamSettings.fromJson(value);
        case 'ExecuteCommandRequest':
          return ExecuteCommandRequest.fromJson(value);
        case 'FileInfo':
          return FileInfo.fromJson(value);
        case 'FileInfoList':
          return FileInfoList.fromJson(value);
        case 'FilesLimits':
          return FilesLimits.fromJson(value);
        case 'GenerateMfaSecret200Response':
          return GenerateMfaSecret200Response.fromJson(value);
        case 'GetDataRetentionPoliciesCount200Response':
          return GetDataRetentionPoliciesCount200Response.fromJson(value);
        case 'GetFileLink200Response':
          return GetFileLink200Response.fromJson(value);
        case 'GetGroupStats200Response':
          return GetGroupStats200Response.fromJson(value);
        case 'GetGroupUsers200Response':
          return GetGroupUsers200Response.fromJson(value);
        case 'GetPlugins200Response':
          return GetPlugins200Response.fromJson(value);
        case 'GetRedirectLocation200Response':
          return GetRedirectLocation200Response.fromJson(value);
        case 'GetSamlMetadataFromIdpRequest':
          return GetSamlMetadataFromIdpRequest.fromJson(value);
        case 'GetTeamInviteInfo200Response':
          return GetTeamInviteInfo200Response.fromJson(value);
        case 'GetUsersByGroupChannelIds200Response':
          return GetUsersByGroupChannelIds200Response.fromJson(value);
        case 'GlobalDataRetentionPolicy':
          return GlobalDataRetentionPolicy.fromJson(value);
        case 'Group':
          return Group.fromJson(value);
        case 'GroupSyncableChannel':
          return GroupSyncableChannel.fromJson(value);
        case 'GroupSyncableChannels':
          return GroupSyncableChannels.fromJson(value);
        case 'GroupSyncableTeam':
          return GroupSyncableTeam.fromJson(value);
        case 'GroupSyncableTeams':
          return GroupSyncableTeams.fromJson(value);
        case 'GroupWithSchemeAdmin':
          return GroupWithSchemeAdmin.fromJson(value);
        case 'ImportTeam200Response':
          return ImportTeam200Response.fromJson(value);
        case 'IncomingWebhook':
          return IncomingWebhook.fromJson(value);
        case 'InstallMarketplacePluginRequest':
          return InstallMarketplacePluginRequest.fromJson(value);
        case 'IntegrationsLimits':
          return IntegrationsLimits.fromJson(value);
        case 'IntegrityCheckResult':
          return IntegrityCheckResult.fromJson(value);
        case 'InviteGuestsToTeamRequest':
          return InviteGuestsToTeamRequest.fromJson(value);
        case 'Invoice':
          return Invoice.fromJson(value);
        case 'InvoiceLineItem':
          return InvoiceLineItem.fromJson(value);
        case 'Job':
          return Job.fromJson(value);
        case 'LDAPGroup':
          return LDAPGroup.fromJson(value);
        case 'LDAPGroupsPaged':
          return LDAPGroupsPaged.fromJson(value);
        case 'LicenseRenewalLink':
          return LicenseRenewalLink.fromJson(value);
        case 'LoginByCwsTokenRequest':
          return LoginByCwsTokenRequest.fromJson(value);
        case 'LoginRequest':
          return LoginRequest.fromJson(value);
        case 'MarketplacePlugin':
          return MarketplacePlugin.fromJson(value);
        case 'MessagesLimits':
          return MessagesLimits.fromJson(value);
        case 'MigrateAuthToLdapRequest':
          return MigrateAuthToLdapRequest.fromJson(value);
        case 'MigrateAuthToSamlRequest':
          return MigrateAuthToSamlRequest.fromJson(value);
        case 'MigrateIdLdapRequest':
          return MigrateIdLdapRequest.fromJson(value);
        case 'MoveChannelRequest':
          return MoveChannelRequest.fromJson(value);
        case 'MoveCommandRequest':
          return MoveCommandRequest.fromJson(value);
        case 'Notice':
          return Notice.fromJson(value);
        case 'OAuthApp':
          return OAuthApp.fromJson(value);
        case 'OpenGraph':
          return OpenGraph.fromJson(value);
        case 'OpenGraphArticle':
          return OpenGraphArticle.fromJson(value);
        case 'OpenGraphArticleAuthorsInner':
          return OpenGraphArticleAuthorsInner.fromJson(value);
        case 'OpenGraphAudiosInner':
          return OpenGraphAudiosInner.fromJson(value);
        case 'OpenGraphBook':
          return OpenGraphBook.fromJson(value);
        case 'OpenGraphImagesInner':
          return OpenGraphImagesInner.fromJson(value);
        case 'OpenGraphRequest':
          return OpenGraphRequest.fromJson(value);
        case 'OpenGraphVideosInner':
          return OpenGraphVideosInner.fromJson(value);
        case 'OpenInteractiveDialogRequest':
          return OpenInteractiveDialogRequest.fromJson(value);
        case 'OpenInteractiveDialogRequestDialog':
          return OpenInteractiveDialogRequestDialog.fromJson(value);
        case 'OrderedSidebarCategories':
          return OrderedSidebarCategories.fromJson(value);
        case 'OrphanedRecord':
          return OrphanedRecord.fromJson(value);
        case 'OutgoingWebhook':
          return OutgoingWebhook.fromJson(value);
        case 'PatchChannelRequest':
          return PatchChannelRequest.fromJson(value);
        case 'PatchGroupRequest':
          return PatchGroupRequest.fromJson(value);
        case 'PatchGroupSyncableForTeamRequest':
          return PatchGroupSyncableForTeamRequest.fromJson(value);
        case 'PatchPostRequest':
          return PatchPostRequest.fromJson(value);
        case 'PatchRoleRequest':
          return PatchRoleRequest.fromJson(value);
        case 'PatchSchemeRequest':
          return PatchSchemeRequest.fromJson(value);
        case 'PatchTeamRequest':
          return PatchTeamRequest.fromJson(value);
        case 'PatchUserRequest':
          return PatchUserRequest.fromJson(value);
        case 'PaymentMethod':
          return PaymentMethod.fromJson(value);
        case 'PaymentSetupIntent':
          return PaymentSetupIntent.fromJson(value);
        case 'PluginManifest':
          return PluginManifest.fromJson(value);
        case 'PluginManifestBackend':
          return PluginManifestBackend.fromJson(value);
        case 'PluginManifestServer':
          return PluginManifestServer.fromJson(value);
        case 'PluginManifestServerExecutables':
          return PluginManifestServerExecutables.fromJson(value);
        case 'PluginManifestWebapp':
          return PluginManifestWebapp.fromJson(value);
        case 'PluginStatus':
          return PluginStatus.fromJson(value);
        case 'Post':
          return Post.fromJson(value);
        case 'PostList':
          return PostList.fromJson(value);
        case 'PostListWithSearchMatches':
          return PostListWithSearchMatches.fromJson(value);
        case 'PostLogRequest':
          return PostLogRequest.fromJson(value);
        case 'PostMetadata':
          return PostMetadata.fromJson(value);
        case 'PostMetadataEmbedsInner':
          return PostMetadataEmbedsInner.fromJson(value);
        case 'PostMetadataImagesInner':
          return PostMetadataImagesInner.fromJson(value);
        case 'PostsUsage':
          return PostsUsage.fromJson(value);
        case 'Preference':
          return Preference.fromJson(value);
        case 'Product':
          return Product.fromJson(value);
        case 'ProductLimits':
          return ProductLimits.fromJson(value);
        case 'PublishUserTypingRequest':
          return PublishUserTypingRequest.fromJson(value);
        case 'PushNotification':
          return PushNotification.fromJson(value);
        case 'Reaction':
          return Reaction.fromJson(value);
        case 'RegenCommandToken200Response':
          return RegenCommandToken200Response.fromJson(value);
        case 'RegisterTermsOfServiceActionRequest':
          return RegisterTermsOfServiceActionRequest.fromJson(value);
        case 'RelationalIntegrityCheckData':
          return RelationalIntegrityCheckData.fromJson(value);
        case 'RemoteClusterInfo':
          return RemoteClusterInfo.fromJson(value);
        case 'RemoveRecentCustomStatusRequest':
          return RemoveRecentCustomStatusRequest.fromJson(value);
        case 'RequestTrialLicenseRequest':
          return RequestTrialLicenseRequest.fromJson(value);
        case 'ResetPasswordRequest':
          return ResetPasswordRequest.fromJson(value);
        case 'ResetSamlAuthDataToEmail200Response':
          return ResetSamlAuthDataToEmail200Response.fromJson(value);
        case 'ResetSamlAuthDataToEmailRequest':
          return ResetSamlAuthDataToEmailRequest.fromJson(value);
        case 'RetentionPolicyForChannelList':
          return RetentionPolicyForChannelList.fromJson(value);
        case 'RetentionPolicyForTeamList':
          return RetentionPolicyForTeamList.fromJson(value);
        case 'RevokeSessionRequest':
          return RevokeSessionRequest.fromJson(value);
        case 'RevokeUserAccessTokenRequest':
          return RevokeUserAccessTokenRequest.fromJson(value);
        case 'Role':
          return Role.fromJson(value);
        case 'SamlCertificateStatus':
          return SamlCertificateStatus.fromJson(value);
        case 'Scheme':
          return Scheme.fromJson(value);
        case 'SearchAllChannels200Response':
          return SearchAllChannels200Response.fromJson(value);
        case 'SearchAllChannelsRequest':
          return SearchAllChannelsRequest.fromJson(value);
        case 'SearchArchivedChannelsRequest':
          return SearchArchivedChannelsRequest.fromJson(value);
        case 'SearchChannelsForRetentionPolicyRequest':
          return SearchChannelsForRetentionPolicyRequest.fromJson(value);
        case 'SearchChannelsRequest':
          return SearchChannelsRequest.fromJson(value);
        case 'SearchEmojiRequest':
          return SearchEmojiRequest.fromJson(value);
        case 'SearchGroupChannelsRequest':
          return SearchGroupChannelsRequest.fromJson(value);
        case 'SearchPostsRequest':
          return SearchPostsRequest.fromJson(value);
        case 'SearchTeams200Response':
          return SearchTeams200Response.fromJson(value);
        case 'SearchTeamsForRetentionPolicyRequest':
          return SearchTeamsForRetentionPolicyRequest.fromJson(value);
        case 'SearchTeamsRequest':
          return SearchTeamsRequest.fromJson(value);
        case 'SearchUserAccessTokensRequest':
          return SearchUserAccessTokensRequest.fromJson(value);
        case 'SearchUsersRequest':
          return SearchUsersRequest.fromJson(value);
        case 'SendPasswordResetEmailRequest':
          return SendPasswordResetEmailRequest.fromJson(value);
        case 'SendVerificationEmailRequest':
          return SendVerificationEmailRequest.fromJson(value);
        case 'SendWarnMetricAckRequest':
          return SendWarnMetricAckRequest.fromJson(value);
        case 'ServerBusy':
          return ServerBusy.fromJson(value);
        case 'Session':
          return Session.fromJson(value);
        case 'SharedChannel':
          return SharedChannel.fromJson(value);
        case 'SidebarCategory':
          return SidebarCategory.fromJson(value);
        case 'SidebarCategoryWithChannels':
          return SidebarCategoryWithChannels.fromJson(value);
        case 'SlackAttachment':
          return SlackAttachment.fromJson(value);
        case 'SlackAttachmentField':
          return SlackAttachmentField.fromJson(value);
        case 'Status':
          return Status.fromJson(value);
        case 'StatusOK':
          return StatusOK.fromJson(value);
        case 'SubmitInteractiveDialogRequest':
          return SubmitInteractiveDialogRequest.fromJson(value);
        case 'Subscription':
          return Subscription.fromJson(value);
        case 'SubscriptionStats':
          return SubscriptionStats.fromJson(value);
        case 'SwitchAccountType200Response':
          return SwitchAccountType200Response.fromJson(value);
        case 'SwitchAccountTypeRequest':
          return SwitchAccountTypeRequest.fromJson(value);
        case 'System':
          return System.fromJson(value);
        case 'SystemStatusResponse':
          return SystemStatusResponse.fromJson(value);
        case 'Team':
          return Team.fromJson(value);
        case 'TeamExists':
          return TeamExists.fromJson(value);
        case 'TeamMap':
          return TeamMap.fromJson(value);
        case 'TeamMember':
          return TeamMember.fromJson(value);
        case 'TeamStats':
          return TeamStats.fromJson(value);
        case 'TeamUnread':
          return TeamUnread.fromJson(value);
        case 'TeamsLimits':
          return TeamsLimits.fromJson(value);
        case 'TermsOfService':
          return TermsOfService.fromJson(value);
        case 'TestSiteURLRequest':
          return TestSiteURLRequest.fromJson(value);
        case 'Timezone':
          return Timezone.fromJson(value);
        case 'TopChannel':
          return TopChannel.fromJson(value);
        case 'TopChannelList':
          return TopChannelList.fromJson(value);
        case 'TopReaction':
          return TopReaction.fromJson(value);
        case 'TopReactionList':
          return TopReactionList.fromJson(value);
        case 'UpdateChannelPrivacyRequest':
          return UpdateChannelPrivacyRequest.fromJson(value);
        case 'UpdateChannelRequest':
          return UpdateChannelRequest.fromJson(value);
        case 'UpdateCloudCustomerRequest':
          return UpdateCloudCustomerRequest.fromJson(value);
        case 'UpdateIncomingWebhookRequest':
          return UpdateIncomingWebhookRequest.fromJson(value);
        case 'UpdateOAuthAppRequest':
          return UpdateOAuthAppRequest.fromJson(value);
        case 'UpdateOutgoingWebhookRequest':
          return UpdateOutgoingWebhookRequest.fromJson(value);
        case 'UpdatePostRequest':
          return UpdatePostRequest.fromJson(value);
        case 'UpdateTeamMemberSchemeRolesRequest':
          return UpdateTeamMemberSchemeRolesRequest.fromJson(value);
        case 'UpdateTeamPrivacyRequest':
          return UpdateTeamPrivacyRequest.fromJson(value);
        case 'UpdateTeamRequest':
          return UpdateTeamRequest.fromJson(value);
        case 'UpdateTeamSchemeRequest':
          return UpdateTeamSchemeRequest.fromJson(value);
        case 'UpdateUserActiveRequest':
          return UpdateUserActiveRequest.fromJson(value);
        case 'UpdateUserCustomStatusRequest':
          return UpdateUserCustomStatusRequest.fromJson(value);
        case 'UpdateUserMfaRequest':
          return UpdateUserMfaRequest.fromJson(value);
        case 'UpdateUserPasswordRequest':
          return UpdateUserPasswordRequest.fromJson(value);
        case 'UpdateUserRequest':
          return UpdateUserRequest.fromJson(value);
        case 'UpdateUserRolesRequest':
          return UpdateUserRolesRequest.fromJson(value);
        case 'UpdateUserStatusRequest':
          return UpdateUserStatusRequest.fromJson(value);
        case 'UpgradeToEnterpriseStatus200Response':
          return UpgradeToEnterpriseStatus200Response.fromJson(value);
        case 'UploadFile201Response':
          return UploadFile201Response.fromJson(value);
        case 'UploadSession':
          return UploadSession.fromJson(value);
        case 'User':
          return User.fromJson(value);
        case 'UserAccessToken':
          return UserAccessToken.fromJson(value);
        case 'UserAccessTokenSanitized':
          return UserAccessTokenSanitized.fromJson(value);
        case 'UserAuthData':
          return UserAuthData.fromJson(value);
        case 'UserAutocomplete':
          return UserAutocomplete.fromJson(value);
        case 'UserAutocompleteInChannel':
          return UserAutocompleteInChannel.fromJson(value);
        case 'UserAutocompleteInTeam':
          return UserAutocompleteInTeam.fromJson(value);
        case 'UserNotifyProps':
          return UserNotifyProps.fromJson(value);
        case 'UserTermsOfService':
          return UserTermsOfService.fromJson(value);
        case 'UserThread':
          return UserThread.fromJson(value);
        case 'UserThreads':
          return UserThreads.fromJson(value);
        case 'UsersStats':
          return UsersStats.fromJson(value);
        case 'VerifyUserEmailRequest':
          return VerifyUserEmailRequest.fromJson(value);
        case 'ViewChannel200Response':
          return ViewChannel200Response.fromJson(value);
        case 'ViewChannelRequest':
          return ViewChannelRequest.fromJson(value);
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
      throw ApiException.withInner(HttpStatus.internalServerError, 'Exception during deserialization.', error, trace,);
    }
    throw ApiException(HttpStatus.internalServerError, 'Could not find a suitable class for deserialization',);
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
    : ApiClient._deserialize(
        jsonDecode(message.json),
        targetType,
        growable: message.growable,
      );
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object? value) async => value == null ? '' : json.encode(value);
