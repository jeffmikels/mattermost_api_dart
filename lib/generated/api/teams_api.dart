//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;


class TeamsApi {
  TeamsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add user to team
  ///
  /// Add user to the team by user_id. ##### Permissions Must be authenticated and team be open to add self. For adding another user, authenticated user must have the `add_user_to_team` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [AddTeamMemberRequest] addTeamMemberRequest (required):
  Future<Response> addTeamMemberWithHttpInfo(String teamId, AddTeamMemberRequest addTeamMemberRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/{team_id}/members'
      .replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody = addTeamMemberRequest;

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

  /// Add user to team
  ///
  /// Add user to the team by user_id. ##### Permissions Must be authenticated and team be open to add self. For adding another user, authenticated user must have the `add_user_to_team` permission. 
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [AddTeamMemberRequest] addTeamMemberRequest (required):
  Future<TeamMember?> addTeamMember(String teamId, AddTeamMemberRequest addTeamMemberRequest,) async {
    final response = await addTeamMemberWithHttpInfo(teamId, addTeamMemberRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TeamMember',) as TeamMember;
    
    }
    return null;
  }

  /// Add user to team from invite
  ///
  /// Using either an invite id or hash/data pair from an email invite link, add a user to a team. ##### Permissions Must be authenticated. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] token (required):
  ///   Token id from the invitation
  Future<Response> addTeamMemberFromInviteWithHttpInfo(String token,) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/members/invite';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'token', token));

    const contentTypes = <String>[];


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

  /// Add user to team from invite
  ///
  /// Using either an invite id or hash/data pair from an email invite link, add a user to a team. ##### Permissions Must be authenticated. 
  ///
  /// Parameters:
  ///
  /// * [String] token (required):
  ///   Token id from the invitation
  Future<TeamMember?> addTeamMemberFromInvite(String token,) async {
    final response = await addTeamMemberFromInviteWithHttpInfo(token,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TeamMember',) as TeamMember;
    
    }
    return null;
  }

  /// Add multiple users to team
  ///
  /// Add a number of users to the team by user_id. ##### Permissions Must be authenticated. Authenticated user must have the `add_user_to_team` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [List<TeamMember>] teamMember (required):
  ///
  /// * [bool] graceful:
  ///   Instead of aborting the operation if a user cannot be added, return an arrray that will contain both the success and added members and the ones with error, in form of `[{\"member\": {...}, \"user_id\", \"...\", \"error\": {...}}]`
  Future<Response> addTeamMembersWithHttpInfo(String teamId, List<TeamMember> teamMember, { bool? graceful, }) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/{team_id}/members/batch'
      .replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody = teamMember;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (graceful != null) {
      queryParams.addAll(_queryParams('', 'graceful', graceful));
    }

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

  /// Add multiple users to team
  ///
  /// Add a number of users to the team by user_id. ##### Permissions Must be authenticated. Authenticated user must have the `add_user_to_team` permission. 
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [List<TeamMember>] teamMember (required):
  ///
  /// * [bool] graceful:
  ///   Instead of aborting the operation if a user cannot be added, return an arrray that will contain both the success and added members and the ones with error, in form of `[{\"member\": {...}, \"user_id\", \"...\", \"error\": {...}}]`
  Future<List<TeamMember>?> addTeamMembers(String teamId, List<TeamMember> teamMember, { bool? graceful, }) async {
    final response = await addTeamMembersWithHttpInfo(teamId, teamMember,  graceful: graceful, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TeamMember>') as List)
        .cast<TeamMember>()
        .toList();

    }
    return null;
  }

  /// Create a team
  ///
  /// Create a new team on the system. ##### Permissions Must be authenticated and have the `create_team` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateTeamRequest] createTeamRequest (required):
  ///   Team that is to be created
  Future<Response> createTeamWithHttpInfo(CreateTeamRequest createTeamRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/teams';

    // ignore: prefer_final_locals
    Object? postBody = createTeamRequest;

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

  /// Create a team
  ///
  /// Create a new team on the system. ##### Permissions Must be authenticated and have the `create_team` permission. 
  ///
  /// Parameters:
  ///
  /// * [CreateTeamRequest] createTeamRequest (required):
  ///   Team that is to be created
  Future<Team?> createTeam(CreateTeamRequest createTeamRequest,) async {
    final response = await createTeamWithHttpInfo(createTeamRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Team',) as Team;
    
    }
    return null;
  }

  /// Get teams
  ///
  /// For regular users only returns open teams. Users with the \"manage_system\" permission will return teams regardless of type. The result is based on query string parameters - page and per_page. ##### Permissions Must be authenticated. \"manage_system\" permission is required to show all teams. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of teams per page.
  ///
  /// * [bool] includeTotalCount:
  ///
  /// * [bool] excludePolicyConstrained:
  ///   If set to true, teams which are part of a data retention policy will be excluded. The `sysconsole_read_compliance` permission is required to use this parameter. __Minimum server version__: 5.35
  Future<Response> getAllTeamsWithHttpInfo({ int? page, int? perPage, bool? includeTotalCount, bool? excludePolicyConstrained, }) async {
    // ignore: prefer_const_declarations
    final path = r'/teams';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (perPage != null) {
      queryParams.addAll(_queryParams('', 'per_page', perPage));
    }
    if (includeTotalCount != null) {
      queryParams.addAll(_queryParams('', 'include_total_count', includeTotalCount));
    }
    if (excludePolicyConstrained != null) {
      queryParams.addAll(_queryParams('', 'exclude_policy_constrained', excludePolicyConstrained));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get teams
  ///
  /// For regular users only returns open teams. Users with the \"manage_system\" permission will return teams regardless of type. The result is based on query string parameters - page and per_page. ##### Permissions Must be authenticated. \"manage_system\" permission is required to show all teams. 
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of teams per page.
  ///
  /// * [bool] includeTotalCount:
  ///
  /// * [bool] excludePolicyConstrained:
  ///   If set to true, teams which are part of a data retention policy will be excluded. The `sysconsole_read_compliance` permission is required to use this parameter. __Minimum server version__: 5.35
  Future<List<Team>?> getAllTeams({ int? page, int? perPage, bool? includeTotalCount, bool? excludePolicyConstrained, }) async {
    final response = await getAllTeamsWithHttpInfo( page: page, perPage: perPage, includeTotalCount: includeTotalCount, excludePolicyConstrained: excludePolicyConstrained, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Team>') as List)
        .cast<Team>()
        .toList();

    }
    return null;
  }

  /// Get a team
  ///
  /// Get a team on the system. ##### Permissions Must be authenticated and have the `view_team` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  Future<Response> getTeamWithHttpInfo(String teamId,) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/{team_id}'
      .replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get a team
  ///
  /// Get a team on the system. ##### Permissions Must be authenticated and have the `view_team` permission. 
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  Future<Team?> getTeam(String teamId,) async {
    final response = await getTeamWithHttpInfo(teamId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Team',) as Team;
    
    }
    return null;
  }

  /// Get a team by name
  ///
  /// Get a team based on provided name string ##### Permissions Must be authenticated, team type is open and have the `view_team` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Team Name
  Future<Response> getTeamByNameWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/name/{name}'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get a team by name
  ///
  /// Get a team based on provided name string ##### Permissions Must be authenticated, team type is open and have the `view_team` permission. 
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Team Name
  Future<Team?> getTeamByName(String name,) async {
    final response = await getTeamByNameWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Team',) as Team;
    
    }
    return null;
  }

  /// Get the team icon
  ///
  /// Get the team icon of the team.  __Minimum server version__: 4.9  ##### Permissions User must be authenticated. In addition, team must be open or the user must have the `view_team` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  Future<Response> getTeamIconWithHttpInfo(String teamId,) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/{team_id}/image'
      .replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get the team icon
  ///
  /// Get the team icon of the team.  __Minimum server version__: 4.9  ##### Permissions User must be authenticated. In addition, team must be open or the user must have the `view_team` permission. 
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  Future<void> getTeamIcon(String teamId,) async {
    final response = await getTeamIconWithHttpInfo(teamId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get invite info for a team
  ///
  /// Get the `name`, `display_name`, `description` and `id` for a team from the invite id.  __Minimum server version__: 4.0  ##### Permissions No authentication required. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inviteId (required):
  ///   Invite id for a team
  Future<Response> getTeamInviteInfoWithHttpInfo(String inviteId,) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/invite/{invite_id}'
      .replaceAll('{invite_id}', inviteId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get invite info for a team
  ///
  /// Get the `name`, `display_name`, `description` and `id` for a team from the invite id.  __Minimum server version__: 4.0  ##### Permissions No authentication required. 
  ///
  /// Parameters:
  ///
  /// * [String] inviteId (required):
  ///   Invite id for a team
  Future<GetTeamInviteInfo200Response?> getTeamInviteInfo(String inviteId,) async {
    final response = await getTeamInviteInfoWithHttpInfo(inviteId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetTeamInviteInfo200Response',) as GetTeamInviteInfo200Response;
    
    }
    return null;
  }

  /// Get a team member
  ///
  /// Get a team member on the system. ##### Permissions Must be authenticated and have the `view_team` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [String] userId (required):
  ///   User GUID
  Future<Response> getTeamMemberWithHttpInfo(String teamId, String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/{team_id}/members/{user_id}'
      .replaceAll('{team_id}', teamId)
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get a team member
  ///
  /// Get a team member on the system. ##### Permissions Must be authenticated and have the `view_team` permission. 
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [String] userId (required):
  ///   User GUID
  Future<TeamMember?> getTeamMember(String teamId, String userId,) async {
    final response = await getTeamMemberWithHttpInfo(teamId, userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TeamMember',) as TeamMember;
    
    }
    return null;
  }

  /// Get team members
  ///
  /// Get a page team members list based on query string parameters - team id, page and per page. ##### Permissions Must be authenticated and have the `view_team` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of users per page.
  Future<Response> getTeamMembersWithHttpInfo(String teamId, { int? page, int? perPage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/{team_id}/members'
      .replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (perPage != null) {
      queryParams.addAll(_queryParams('', 'per_page', perPage));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get team members
  ///
  /// Get a page team members list based on query string parameters - team id, page and per page. ##### Permissions Must be authenticated and have the `view_team` permission. 
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of users per page.
  Future<List<TeamMember>?> getTeamMembers(String teamId, { int? page, int? perPage, }) async {
    final response = await getTeamMembersWithHttpInfo(teamId,  page: page, perPage: perPage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TeamMember>') as List)
        .cast<TeamMember>()
        .toList();

    }
    return null;
  }

  /// Get team members by ids
  ///
  /// Get a list of team members based on a provided array of user ids. ##### Permissions Must have `view_team` permission for the team. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [List<String>] requestBody (required):
  ///   List of user ids
  Future<Response> getTeamMembersByIdsWithHttpInfo(String teamId, List<String> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/{team_id}/members/ids'
      .replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

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

  /// Get team members by ids
  ///
  /// Get a list of team members based on a provided array of user ids. ##### Permissions Must have `view_team` permission for the team. 
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [List<String>] requestBody (required):
  ///   List of user ids
  Future<List<TeamMember>?> getTeamMembersByIds(String teamId, List<String> requestBody,) async {
    final response = await getTeamMembersByIdsWithHttpInfo(teamId, requestBody,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TeamMember>') as List)
        .cast<TeamMember>()
        .toList();

    }
    return null;
  }

  /// Get team members for a user
  ///
  /// Get a list of team members for a user. Useful for getting the ids of teams the user is on and the roles they have in those teams. ##### Permissions Must be logged in as the user or have the `edit_other_users` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  Future<Response> getTeamMembersForUserWithHttpInfo(String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/teams/members'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get team members for a user
  ///
  /// Get a list of team members for a user. Useful for getting the ids of teams the user is on and the roles they have in those teams. ##### Permissions Must be logged in as the user or have the `edit_other_users` permission. 
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  Future<List<TeamMember>?> getTeamMembersForUser(String userId,) async {
    final response = await getTeamMembersForUserWithHttpInfo(userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TeamMember>') as List)
        .cast<TeamMember>()
        .toList();

    }
    return null;
  }

  /// Get a team stats
  ///
  /// Get a team stats on the system. ##### Permissions Must be authenticated and have the `view_team` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  Future<Response> getTeamStatsWithHttpInfo(String teamId,) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/{team_id}/stats'
      .replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get a team stats
  ///
  /// Get a team stats on the system. ##### Permissions Must be authenticated and have the `view_team` permission. 
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  Future<TeamStats?> getTeamStats(String teamId,) async {
    final response = await getTeamStatsWithHttpInfo(teamId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TeamStats',) as TeamStats;
    
    }
    return null;
  }

  /// Get unreads for a team
  ///
  /// Get the unread mention and message counts for a team for the specified user. ##### Permissions Must be the user or have `edit_other_users` permission and have `view_team` permission for the team. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  Future<Response> getTeamUnreadWithHttpInfo(String userId, String teamId,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/teams/{team_id}/unread'
      .replaceAll('{user_id}', userId)
      .replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get unreads for a team
  ///
  /// Get the unread mention and message counts for a team for the specified user. ##### Permissions Must be the user or have `edit_other_users` permission and have `view_team` permission for the team. 
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  Future<TeamUnread?> getTeamUnread(String userId, String teamId,) async {
    final response = await getTeamUnreadWithHttpInfo(userId, teamId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TeamUnread',) as TeamUnread;
    
    }
    return null;
  }

  /// Get a user's teams
  ///
  /// Get a list of teams that a user is on. ##### Permissions Must be authenticated as the user or have the `manage_system` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  Future<Response> getTeamsForUserWithHttpInfo(String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/teams'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get a user's teams
  ///
  /// Get a list of teams that a user is on. ##### Permissions Must be authenticated as the user or have the `manage_system` permission. 
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  Future<List<Team>?> getTeamsForUser(String userId,) async {
    final response = await getTeamsForUserWithHttpInfo(userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Team>') as List)
        .cast<Team>()
        .toList();

    }
    return null;
  }

  /// Get team unreads for a user
  ///
  /// Get the count for unread messages and mentions in the teams the user is a member of. ##### Permissions Must be logged in. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [String] excludeTeam (required):
  ///   Optional team id to be excluded from the results
  ///
  /// * [bool] includeCollapsedThreads:
  ///   Boolean to determine whether the collapsed threads should be included or not
  Future<Response> getTeamsUnreadForUserWithHttpInfo(String userId, String excludeTeam, { bool? includeCollapsedThreads, }) async {
    // ignore: prefer_const_declarations
    final path = r'/users/{user_id}/teams/unread'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'exclude_team', excludeTeam));
    if (includeCollapsedThreads != null) {
      queryParams.addAll(_queryParams('', 'include_collapsed_threads', includeCollapsedThreads));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get team unreads for a user
  ///
  /// Get the count for unread messages and mentions in the teams the user is a member of. ##### Permissions Must be logged in. 
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [String] excludeTeam (required):
  ///   Optional team id to be excluded from the results
  ///
  /// * [bool] includeCollapsedThreads:
  ///   Boolean to determine whether the collapsed threads should be included or not
  Future<List<TeamUnread>?> getTeamsUnreadForUser(String userId, String excludeTeam, { bool? includeCollapsedThreads, }) async {
    final response = await getTeamsUnreadForUserWithHttpInfo(userId, excludeTeam,  includeCollapsedThreads: includeCollapsedThreads, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TeamUnread>') as List)
        .cast<TeamUnread>()
        .toList();

    }
    return null;
  }

  /// Import a Team from other application
  ///
  /// Import a team into a existing team. Import users, channels, posts, hooks. ##### Permissions Must have `permission_import_team` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [MultipartFile] file (required):
  ///   A file to be uploaded in zip format.
  ///
  /// * [int] filesize (required):
  ///   The size of the zip file to be imported.
  ///
  /// * [String] importFrom (required):
  ///   String that defines from which application the team was exported to be imported into Mattermost.
  Future<Response> importTeamWithHttpInfo(String teamId, MultipartFile file, int filesize, String importFrom,) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/{team_id}/import'
      .replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (file != null) {
      hasFields = true;
      mp.fields[r'file'] = file.field;
      mp.files.add(file);
    }
    if (filesize != null) {
      hasFields = true;
      mp.fields[r'filesize'] = parameterToString(filesize);
    }
    if (importFrom != null) {
      hasFields = true;
      mp.fields[r'importFrom'] = parameterToString(importFrom);
    }
    if (hasFields) {
      postBody = mp;
    }

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

  /// Import a Team from other application
  ///
  /// Import a team into a existing team. Import users, channels, posts, hooks. ##### Permissions Must have `permission_import_team` permission. 
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [MultipartFile] file (required):
  ///   A file to be uploaded in zip format.
  ///
  /// * [int] filesize (required):
  ///   The size of the zip file to be imported.
  ///
  /// * [String] importFrom (required):
  ///   String that defines from which application the team was exported to be imported into Mattermost.
  Future<ImportTeam200Response?> importTeam(String teamId, MultipartFile file, int filesize, String importFrom,) async {
    final response = await importTeamWithHttpInfo(teamId, file, filesize, importFrom,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ImportTeam200Response',) as ImportTeam200Response;
    
    }
    return null;
  }

  /// Invalidate active email invitations
  ///
  /// Invalidate active email invitations that have not been accepted by the user. ##### Permissions Must have `sysconsole_write_authentication` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> invalidateEmailInvitesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/teams/invites/email';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Invalidate active email invitations
  ///
  /// Invalidate active email invitations that have not been accepted by the user. ##### Permissions Must have `sysconsole_write_authentication` permission. 
  Future<StatusOK?> invalidateEmailInvites() async {
    final response = await invalidateEmailInvitesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StatusOK',) as StatusOK;
    
    }
    return null;
  }

  /// Invite guests to the team by email
  ///
  /// Invite guests to existing team channels usign the user's email.  The number of emails that can be sent is rate limited to 20 per hour with a burst of 20 emails. If the rate limit exceeds, the error message contains details on when to retry and when the timer will be reset.  __Minimum server version__: 5.16  ##### Permissions Must have `invite_guest` permission for the team. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [InviteGuestsToTeamRequest] inviteGuestsToTeamRequest (required):
  ///   Guests invite information
  Future<Response> inviteGuestsToTeamWithHttpInfo(String teamId, InviteGuestsToTeamRequest inviteGuestsToTeamRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/{team_id}/invite-guests/email'
      .replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody = inviteGuestsToTeamRequest;

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

  /// Invite guests to the team by email
  ///
  /// Invite guests to existing team channels usign the user's email.  The number of emails that can be sent is rate limited to 20 per hour with a burst of 20 emails. If the rate limit exceeds, the error message contains details on when to retry and when the timer will be reset.  __Minimum server version__: 5.16  ##### Permissions Must have `invite_guest` permission for the team. 
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [InviteGuestsToTeamRequest] inviteGuestsToTeamRequest (required):
  ///   Guests invite information
  Future<StatusOK?> inviteGuestsToTeam(String teamId, InviteGuestsToTeamRequest inviteGuestsToTeamRequest,) async {
    final response = await inviteGuestsToTeamWithHttpInfo(teamId, inviteGuestsToTeamRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StatusOK',) as StatusOK;
    
    }
    return null;
  }

  /// Invite users to the team by email
  ///
  /// Invite users to the existing team using the user's email.  The number of emails that can be sent is rate limited to 20 per hour with a burst of 20 emails. If the rate limit exceeds, the error message contains details on when to retry and when the timer will be reset. ##### Permissions Must have `invite_user` and `add_user_to_team` permissions for the team. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [List<String>] requestBody (required):
  ///   List of user's email
  Future<Response> inviteUsersToTeamWithHttpInfo(String teamId, List<String> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/{team_id}/invite/email'
      .replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

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

  /// Invite users to the team by email
  ///
  /// Invite users to the existing team using the user's email.  The number of emails that can be sent is rate limited to 20 per hour with a burst of 20 emails. If the rate limit exceeds, the error message contains details on when to retry and when the timer will be reset. ##### Permissions Must have `invite_user` and `add_user_to_team` permissions for the team. 
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [List<String>] requestBody (required):
  ///   List of user's email
  Future<StatusOK?> inviteUsersToTeam(String teamId, List<String> requestBody,) async {
    final response = await inviteUsersToTeamWithHttpInfo(teamId, requestBody,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StatusOK',) as StatusOK;
    
    }
    return null;
  }

  /// Patch a team
  ///
  /// Partially update a team by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored. ##### Permissions Must have the `manage_team` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [PatchTeamRequest] patchTeamRequest (required):
  ///   Team object that is to be updated
  Future<Response> patchTeamWithHttpInfo(String teamId, PatchTeamRequest patchTeamRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/{team_id}/patch'
      .replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody = patchTeamRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Patch a team
  ///
  /// Partially update a team by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored. ##### Permissions Must have the `manage_team` permission. 
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [PatchTeamRequest] patchTeamRequest (required):
  ///   Team object that is to be updated
  Future<Team?> patchTeam(String teamId, PatchTeamRequest patchTeamRequest,) async {
    final response = await patchTeamWithHttpInfo(teamId, patchTeamRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Team',) as Team;
    
    }
    return null;
  }

  /// Regenerate the Invite ID from a Team
  ///
  /// Regenerates the invite ID used in invite links of a team ##### Permissions Must be authenticated and have the `manage_team` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  Future<Response> regenerateTeamInviteIdWithHttpInfo(String teamId,) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/{team_id}/regenerate_invite_id'
      .replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Regenerate the Invite ID from a Team
  ///
  /// Regenerates the invite ID used in invite links of a team ##### Permissions Must be authenticated and have the `manage_team` permission. 
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  Future<Team?> regenerateTeamInviteId(String teamId,) async {
    final response = await regenerateTeamInviteIdWithHttpInfo(teamId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Team',) as Team;
    
    }
    return null;
  }

  /// Remove the team icon
  ///
  /// Remove the team icon for the team.  __Minimum server version__: 4.10  ##### Permissions Must be authenticated and have the `manage_team` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  Future<Response> removeTeamIconWithHttpInfo(String teamId,) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/{team_id}/image'
      .replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Remove the team icon
  ///
  /// Remove the team icon for the team.  __Minimum server version__: 4.10  ##### Permissions Must be authenticated and have the `manage_team` permission. 
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  Future<StatusOK?> removeTeamIcon(String teamId,) async {
    final response = await removeTeamIconWithHttpInfo(teamId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StatusOK',) as StatusOK;
    
    }
    return null;
  }

  /// Remove user from team
  ///
  /// Delete the team member object for a user, effectively removing them from a team. ##### Permissions Must be logged in as the user or have the `remove_user_from_team` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [String] userId (required):
  ///   User GUID
  Future<Response> removeTeamMemberWithHttpInfo(String teamId, String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/{team_id}/members/{user_id}'
      .replaceAll('{team_id}', teamId)
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Remove user from team
  ///
  /// Delete the team member object for a user, effectively removing them from a team. ##### Permissions Must be logged in as the user or have the `remove_user_from_team` permission. 
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [String] userId (required):
  ///   User GUID
  Future<StatusOK?> removeTeamMember(String teamId, String userId,) async {
    final response = await removeTeamMemberWithHttpInfo(teamId, userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StatusOK',) as StatusOK;
    
    }
    return null;
  }

  /// Restore a team
  ///
  /// Restore a team that was previously soft deleted.  __Minimum server version__: 5.24  ##### Permissions Must have the `manage_team` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  Future<Response> restoreTeamWithHttpInfo(String teamId,) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/{team_id}/restore'
      .replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Restore a team
  ///
  /// Restore a team that was previously soft deleted.  __Minimum server version__: 5.24  ##### Permissions Must have the `manage_team` permission. 
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  Future<Team?> restoreTeam(String teamId,) async {
    final response = await restoreTeamWithHttpInfo(teamId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Team',) as Team;
    
    }
    return null;
  }

  /// Search files in a team
  ///
  /// Search for files in a team based on file name, extention and file content (if file content extraction is enabled and supported for the files). __Minimum server version__: 5.34 ##### Permissions Must be authenticated and have the `view_team` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [String] terms (required):
  ///   The search terms as inputed by the user. To search for files from a user include `from:someusername`, using a user's username. To search in a specific channel include `in:somechannel`, using the channel name (not the display name). To search for specific extensions included `ext:extension`.
  ///
  /// * [bool] isOrSearch (required):
  ///   Set to true if an Or search should be performed vs an And search.
  ///
  /// * [int] timeZoneOffset:
  ///   Offset from UTC of user timezone for date searches.
  ///
  /// * [bool] includeDeletedChannels:
  ///   Set to true if deleted channels should be included in the search. (archived channels)
  ///
  /// * [int] page:
  ///   The page to select. (Only works with Elasticsearch)
  ///
  /// * [int] perPage:
  ///   The number of posts per page. (Only works with Elasticsearch)
  Future<Response> searchFilesWithHttpInfo(String teamId, String terms, bool isOrSearch, { int? timeZoneOffset, bool? includeDeletedChannels, int? page, int? perPage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/{team_id}/files/search'
      .replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (terms != null) {
      hasFields = true;
      mp.fields[r'terms'] = parameterToString(terms);
    }
    if (isOrSearch != null) {
      hasFields = true;
      mp.fields[r'is_or_search'] = parameterToString(isOrSearch);
    }
    if (timeZoneOffset != null) {
      hasFields = true;
      mp.fields[r'time_zone_offset'] = parameterToString(timeZoneOffset);
    }
    if (includeDeletedChannels != null) {
      hasFields = true;
      mp.fields[r'include_deleted_channels'] = parameterToString(includeDeletedChannels);
    }
    if (page != null) {
      hasFields = true;
      mp.fields[r'page'] = parameterToString(page);
    }
    if (perPage != null) {
      hasFields = true;
      mp.fields[r'per_page'] = parameterToString(perPage);
    }
    if (hasFields) {
      postBody = mp;
    }

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

  /// Search files in a team
  ///
  /// Search for files in a team based on file name, extention and file content (if file content extraction is enabled and supported for the files). __Minimum server version__: 5.34 ##### Permissions Must be authenticated and have the `view_team` permission. 
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [String] terms (required):
  ///   The search terms as inputed by the user. To search for files from a user include `from:someusername`, using a user's username. To search in a specific channel include `in:somechannel`, using the channel name (not the display name). To search for specific extensions included `ext:extension`.
  ///
  /// * [bool] isOrSearch (required):
  ///   Set to true if an Or search should be performed vs an And search.
  ///
  /// * [int] timeZoneOffset:
  ///   Offset from UTC of user timezone for date searches.
  ///
  /// * [bool] includeDeletedChannels:
  ///   Set to true if deleted channels should be included in the search. (archived channels)
  ///
  /// * [int] page:
  ///   The page to select. (Only works with Elasticsearch)
  ///
  /// * [int] perPage:
  ///   The number of posts per page. (Only works with Elasticsearch)
  Future<FileInfoList?> searchFiles(String teamId, String terms, bool isOrSearch, { int? timeZoneOffset, bool? includeDeletedChannels, int? page, int? perPage, }) async {
    final response = await searchFilesWithHttpInfo(teamId, terms, isOrSearch,  timeZoneOffset: timeZoneOffset, includeDeletedChannels: includeDeletedChannels, page: page, perPage: perPage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FileInfoList',) as FileInfoList;
    
    }
    return null;
  }

  /// Search teams
  ///
  /// Search teams based on search term and options provided in the request body.  ##### Permissions Logged in user only shows open teams Logged in user with \"manage_system\" permission shows all teams 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SearchTeamsRequest] searchTeamsRequest (required):
  ///   Search criteria
  Future<Response> searchTeamsWithHttpInfo(SearchTeamsRequest searchTeamsRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/search';

    // ignore: prefer_final_locals
    Object? postBody = searchTeamsRequest;

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

  /// Search teams
  ///
  /// Search teams based on search term and options provided in the request body.  ##### Permissions Logged in user only shows open teams Logged in user with \"manage_system\" permission shows all teams 
  ///
  /// Parameters:
  ///
  /// * [SearchTeamsRequest] searchTeamsRequest (required):
  ///   Search criteria
  Future<SearchTeams200Response?> searchTeams(SearchTeamsRequest searchTeamsRequest,) async {
    final response = await searchTeamsWithHttpInfo(searchTeamsRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SearchTeams200Response',) as SearchTeams200Response;
    
    }
    return null;
  }

  /// Sets the team icon
  ///
  /// Sets the team icon for the team.  __Minimum server version__: 4.9  ##### Permissions Must be authenticated and have the `manage_team` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [MultipartFile] image (required):
  ///   The image to be uploaded
  Future<Response> setTeamIconWithHttpInfo(String teamId, MultipartFile image,) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/{team_id}/image'
      .replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (image != null) {
      hasFields = true;
      mp.fields[r'image'] = image.field;
      mp.files.add(image);
    }
    if (hasFields) {
      postBody = mp;
    }

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

  /// Sets the team icon
  ///
  /// Sets the team icon for the team.  __Minimum server version__: 4.9  ##### Permissions Must be authenticated and have the `manage_team` permission. 
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [MultipartFile] image (required):
  ///   The image to be uploaded
  Future<StatusOK?> setTeamIcon(String teamId, MultipartFile image,) async {
    final response = await setTeamIconWithHttpInfo(teamId, image,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StatusOK',) as StatusOK;
    
    }
    return null;
  }

  /// Delete a team
  ///
  /// Soft deletes a team, by marking the team as deleted in the database. Soft deleted teams will not be accessible in the user interface.  Optionally use the permanent query parameter to hard delete the team for compliance reasons. As of server version 5.0, to use this feature `ServiceSettings.EnableAPITeamDeletion` must be set to `true` in the server's configuration. ##### Permissions Must have the `manage_team` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [bool] permanent:
  ///   Permanently delete the team, to be used for compliance reasons only. As of server version 5.0, `ServiceSettings.EnableAPITeamDeletion` must be set to `true` in the server's configuration.
  Future<Response> softDeleteTeamWithHttpInfo(String teamId, { bool? permanent, }) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/{team_id}'
      .replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (permanent != null) {
      queryParams.addAll(_queryParams('', 'permanent', permanent));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete a team
  ///
  /// Soft deletes a team, by marking the team as deleted in the database. Soft deleted teams will not be accessible in the user interface.  Optionally use the permanent query parameter to hard delete the team for compliance reasons. As of server version 5.0, to use this feature `ServiceSettings.EnableAPITeamDeletion` must be set to `true` in the server's configuration. ##### Permissions Must have the `manage_team` permission. 
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [bool] permanent:
  ///   Permanently delete the team, to be used for compliance reasons only. As of server version 5.0, `ServiceSettings.EnableAPITeamDeletion` must be set to `true` in the server's configuration.
  Future<StatusOK?> softDeleteTeam(String teamId, { bool? permanent, }) async {
    final response = await softDeleteTeamWithHttpInfo(teamId,  permanent: permanent, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StatusOK',) as StatusOK;
    
    }
    return null;
  }

  /// Check if team exists
  ///
  /// Check if the team exists based on a team name. ##### Permissions Must be authenticated. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Team Name
  Future<Response> teamExistsWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/name/{name}/exists'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Check if team exists
  ///
  /// Check if the team exists based on a team name. ##### Permissions Must be authenticated. 
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Team Name
  Future<TeamExists?> teamExists(String name,) async {
    final response = await teamExistsWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TeamExists',) as TeamExists;
    
    }
    return null;
  }

  /// Team members minus group members.
  ///
  /// Get the set of users who are members of the team minus the set of users who are members of the given groups. Each user object contains an array of group objects representing the group memberships for that user. Each user object contains the boolean fields `scheme_guest`, `scheme_user`, and `scheme_admin` representing the roles that user has for the given team.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.14 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [String] groupIds (required):
  ///   A comma-separated list of group ids.
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of users per page.
  Future<Response> teamMembersMinusGroupMembersWithHttpInfo(String teamId, String groupIds, { int? page, int? perPage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/{team_id}/members_minus_group_members'
      .replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'group_ids', groupIds));
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (perPage != null) {
      queryParams.addAll(_queryParams('', 'per_page', perPage));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Team members minus group members.
  ///
  /// Get the set of users who are members of the team minus the set of users who are members of the given groups. Each user object contains an array of group objects representing the group memberships for that user. Each user object contains the boolean fields `scheme_guest`, `scheme_user`, and `scheme_admin` representing the roles that user has for the given team.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.14 
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [String] groupIds (required):
  ///   A comma-separated list of group ids.
  ///
  /// * [int] page:
  ///   The page to select.
  ///
  /// * [int] perPage:
  ///   The number of users per page.
  Future<void> teamMembersMinusGroupMembers(String teamId, String groupIds, { int? page, int? perPage, }) async {
    final response = await teamMembersMinusGroupMembersWithHttpInfo(teamId, groupIds,  page: page, perPage: perPage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update a team
  ///
  /// Update a team by providing the team object. The fields that can be updated are defined in the request body, all other provided fields will be ignored. ##### Permissions Must have the `manage_team` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [UpdateTeamRequest] updateTeamRequest (required):
  ///   Team to update
  Future<Response> updateTeamWithHttpInfo(String teamId, UpdateTeamRequest updateTeamRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/{team_id}'
      .replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody = updateTeamRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update a team
  ///
  /// Update a team by providing the team object. The fields that can be updated are defined in the request body, all other provided fields will be ignored. ##### Permissions Must have the `manage_team` permission. 
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [UpdateTeamRequest] updateTeamRequest (required):
  ///   Team to update
  Future<Team?> updateTeam(String teamId, UpdateTeamRequest updateTeamRequest,) async {
    final response = await updateTeamWithHttpInfo(teamId, updateTeamRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Team',) as Team;
    
    }
    return null;
  }

  /// Update a team member roles
  ///
  /// Update a team member roles. Valid team roles are \"team_user\", \"team_admin\" or both of them. Overwrites any previously assigned team roles. ##### Permissions Must be authenticated and have the `manage_team_roles` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [UpdateUserRolesRequest] updateUserRolesRequest (required):
  ///   Space-delimited team roles to assign to the user
  Future<Response> updateTeamMemberRolesWithHttpInfo(String teamId, String userId, UpdateUserRolesRequest updateUserRolesRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/{team_id}/members/{user_id}/roles'
      .replaceAll('{team_id}', teamId)
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody = updateUserRolesRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update a team member roles
  ///
  /// Update a team member roles. Valid team roles are \"team_user\", \"team_admin\" or both of them. Overwrites any previously assigned team roles. ##### Permissions Must be authenticated and have the `manage_team_roles` permission. 
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [UpdateUserRolesRequest] updateUserRolesRequest (required):
  ///   Space-delimited team roles to assign to the user
  Future<StatusOK?> updateTeamMemberRoles(String teamId, String userId, UpdateUserRolesRequest updateUserRolesRequest,) async {
    final response = await updateTeamMemberRolesWithHttpInfo(teamId, userId, updateUserRolesRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StatusOK',) as StatusOK;
    
    }
    return null;
  }

  /// Update the scheme-derived roles of a team member.
  ///
  /// Update a team member's scheme_admin/scheme_user properties. Typically this should either be `scheme_admin=false, scheme_user=true` for ordinary team member, or `scheme_admin=true, scheme_user=true` for a team admin.  __Minimum server version__: 5.0  ##### Permissions Must be authenticated and have the `manage_team_roles` permission. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [UpdateTeamMemberSchemeRolesRequest] updateTeamMemberSchemeRolesRequest (required):
  ///   Scheme properties.
  Future<Response> updateTeamMemberSchemeRolesWithHttpInfo(String teamId, String userId, UpdateTeamMemberSchemeRolesRequest updateTeamMemberSchemeRolesRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/{team_id}/members/{user_id}/schemeRoles'
      .replaceAll('{team_id}', teamId)
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody = updateTeamMemberSchemeRolesRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update the scheme-derived roles of a team member.
  ///
  /// Update a team member's scheme_admin/scheme_user properties. Typically this should either be `scheme_admin=false, scheme_user=true` for ordinary team member, or `scheme_admin=true, scheme_user=true` for a team admin.  __Minimum server version__: 5.0  ##### Permissions Must be authenticated and have the `manage_team_roles` permission. 
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [String] userId (required):
  ///   User GUID
  ///
  /// * [UpdateTeamMemberSchemeRolesRequest] updateTeamMemberSchemeRolesRequest (required):
  ///   Scheme properties.
  Future<StatusOK?> updateTeamMemberSchemeRoles(String teamId, String userId, UpdateTeamMemberSchemeRolesRequest updateTeamMemberSchemeRolesRequest,) async {
    final response = await updateTeamMemberSchemeRolesWithHttpInfo(teamId, userId, updateTeamMemberSchemeRolesRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StatusOK',) as StatusOK;
    
    }
    return null;
  }

  /// Update teams's privacy
  ///
  /// Updates team's privacy allowing changing a team from Public (open) to Private (invitation only) and back.  __Minimum server version__: 5.24  ##### Permissions `manage_team` permission for the team of the team. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [UpdateTeamPrivacyRequest] updateTeamPrivacyRequest (required):
  Future<Response> updateTeamPrivacyWithHttpInfo(String teamId, UpdateTeamPrivacyRequest updateTeamPrivacyRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/{team_id}/privacy'
      .replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody = updateTeamPrivacyRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update teams's privacy
  ///
  /// Updates team's privacy allowing changing a team from Public (open) to Private (invitation only) and back.  __Minimum server version__: 5.24  ##### Permissions `manage_team` permission for the team of the team. 
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [UpdateTeamPrivacyRequest] updateTeamPrivacyRequest (required):
  Future<Team?> updateTeamPrivacy(String teamId, UpdateTeamPrivacyRequest updateTeamPrivacyRequest,) async {
    final response = await updateTeamPrivacyWithHttpInfo(teamId, updateTeamPrivacyRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Team',) as Team;
    
    }
    return null;
  }

  /// Set a team's scheme
  ///
  /// Set a team's scheme, more specifically sets the scheme_id value of a team record.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.0 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [UpdateTeamSchemeRequest] updateTeamSchemeRequest (required):
  ///   Scheme GUID
  Future<Response> updateTeamSchemeWithHttpInfo(String teamId, UpdateTeamSchemeRequest updateTeamSchemeRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/{team_id}/scheme'
      .replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody = updateTeamSchemeRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Set a team's scheme
  ///
  /// Set a team's scheme, more specifically sets the scheme_id value of a team record.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.0 
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   Team GUID
  ///
  /// * [UpdateTeamSchemeRequest] updateTeamSchemeRequest (required):
  ///   Scheme GUID
  Future<StatusOK?> updateTeamScheme(String teamId, UpdateTeamSchemeRequest updateTeamSchemeRequest,) async {
    final response = await updateTeamSchemeWithHttpInfo(teamId, updateTeamSchemeRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StatusOK',) as StatusOK;
    
    }
    return null;
  }
}
