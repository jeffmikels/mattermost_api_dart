//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:mattermost_api/api.dart';
import 'package:test/test.dart';


/// tests for MattermostPostsApi
void main() {
  // final instance = MattermostPostsApi();

  group('tests for MattermostPostsApi', () {
    // Create a post
    //
    // Create a new post in a channel. To create the post as a comment on another post, provide `root_id`. ##### Permissions Must have `create_post` permission for the channel the post is being created in. 
    //
    //Future<MMPost> createPost(MMCreatePostRequest mMCreatePostRequest, { bool setOnline }) async
    test('test createPost', () async {
      // TODO
    });

    // Create a ephemeral post
    //
    // Create a new ephemeral post in a channel. ##### Permissions Must have `create_post_ephemeral` permission (currently only given to system admin) 
    //
    //Future<MMPost> createPostEphemeral(MMCreatePostEphemeralRequest mMCreatePostEphemeralRequest) async
    test('test createPostEphemeral', () async {
      // TODO
    });

    // Delete a post
    //
    // Soft deletes a post, by marking the post as deleted in the database. Soft deleted posts will not be returned in post queries. ##### Permissions Must be logged in as the user or have `delete_others_posts` permission. 
    //
    //Future<MMStatusOK> deletePost(String postId) async
    test('test deletePost', () async {
      // TODO
    });

    // Perform a post action
    //
    // Perform a post action, which allows users to interact with integrations through posts. ##### Permissions Must be authenticated and have the `read_channel` permission to the channel the post is in. 
    //
    //Future<MMStatusOK> doPostAction(String postId, String actionId) async
    test('test doPostAction', () async {
      // TODO
    });

    // Get file info for post
    //
    // Gets a list of file information objects for the files attached to a post. ##### Permissions Must have `read_channel` permission for the channel the post is in. 
    //
    //Future<List<MMFileInfo>> getFileInfosForPost(String postId, { bool includeDeleted }) async
    test('test getFileInfosForPost', () async {
      // TODO
    });

    // Get a list of flagged posts
    //
    // Get a page of flagged posts of a user provided user id string. Selects from a channel, team, or all flagged posts by a user. Will only return posts from channels in which the user is member. ##### Permissions Must be user or have `manage_system` permission. 
    //
    //Future<List<MMPostList>> getFlaggedPostsForUser(String userId, { String teamId, String channelId, int page, int perPage }) async
    test('test getFlaggedPostsForUser', () async {
      // TODO
    });

    // Get a post
    //
    // Get a single post. ##### Permissions Must have `read_channel` permission for the channel the post is in or if the channel is public, have the `read_public_channels` permission for the team. 
    //
    //Future<MMPost> getPost(String postId, { bool includeDeleted }) async
    test('test getPost', () async {
      // TODO
    });

    // Get a thread
    //
    // Get a post and the rest of the posts in the same thread. ##### Permissions Must have `read_channel` permission for the channel the post is in or if the channel is public, have the `read_public_channels` permission for the team. 
    //
    //Future<MMPostList> getPostThread(String postId, { int perPage, String fromPost, int fromCreateAt, String direction, bool skipFetchThreads, bool collapsedThreads, bool collapsedThreadsExtended }) async
    test('test getPostThread', () async {
      // TODO
    });

    // Get posts around oldest unread
    //
    // Get the oldest unread post in the channel for the given user as well as the posts around it. The returned list is sorted in descending order (most recent post first). ##### Permissions Must be logged in as the user or have `edit_other_users` permission, and must have `read_channel` permission for the channel. __Minimum server version__: 5.14 
    //
    //Future<MMPostList> getPostsAroundLastUnread(String userId, String channelId, { int limitBefore, int limitAfter, bool skipFetchThreads, bool collapsedThreads, bool collapsedThreadsExtended }) async
    test('test getPostsAroundLastUnread', () async {
      // TODO
    });

    // Get posts by a list of ids
    //
    // Fetch a list of posts based on the provided postIDs ##### Permissions Must have `read_channel` permission for the channel the post is in or if the channel is public, have the `read_public_channels` permission for the team. 
    //
    //Future<List<MMPost>> getPostsByIds(List<String> requestBody) async
    test('test getPostsByIds', () async {
      // TODO
    });

    // Get posts for a channel
    //
    // Get a page of posts in a channel. Use the query parameters to modify the behaviour of this endpoint. The parameter `since` must not be used with any of `before`, `after`, `page`, and `per_page` parameters. If `since` is used, it will always return all posts modified since that time, ordered by their create time limited till 1000. A caveat with this parameter is that there is no guarantee that the returned posts will be consecutive. It is left to the clients to maintain state and fill any missing holes in the post order. ##### Permissions Must have `read_channel` permission for the channel. 
    //
    //Future<MMPostList> getPostsForChannel(String channelId, { int page, int perPage, int since, String before, String after }) async
    test('test getPostsForChannel', () async {
      // TODO
    });

    // Patch a post
    //
    // Partially update a post by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored. ##### Permissions Must have the `edit_post` permission. 
    //
    //Future<MMPost> patchPost(String postId, MMPatchPostRequest mMPatchPostRequest) async
    test('test patchPost', () async {
      // TODO
    });

    // Pin a post to the channel
    //
    // Pin a post to a channel it is in based from the provided post id string. ##### Permissions Must be authenticated and have the `read_channel` permission to the channel the post is in. 
    //
    //Future<MMStatusOK> pinPost(String postId) async
    test('test pinPost', () async {
      // TODO
    });

    // Search for team posts
    //
    // Search posts in the team and from the provided terms string. ##### Permissions Must be authenticated and have the `view_team` permission. 
    //
    //Future<MMPostListWithSearchMatches> searchPosts(String teamId, MMSearchPostsRequest mMSearchPostsRequest) async
    test('test searchPosts', () async {
      // TODO
    });

    // Mark as unread from a post.
    //
    // Mark a channel as being unread from a given post. ##### Permissions Must have `read_channel` permission for the channel the post is in or if the channel is public, have the `read_public_channels` permission for the team. Must have `edit_other_users` permission if the user is not the one marking the post for himself.  __Minimum server version__: 5.18 
    //
    //Future<MMChannelUnreadAt> setPostUnread(String userId, String postId) async
    test('test setPostUnread', () async {
      // TODO
    });

    // Unpin a post to the channel
    //
    // Unpin a post to a channel it is in based from the provided post id string. ##### Permissions Must be authenticated and have the `read_channel` permission to the channel the post is in. 
    //
    //Future<MMStatusOK> unpinPost(String postId) async
    test('test unpinPost', () async {
      // TODO
    });

    // Update a post
    //
    // Update a post. Only the fields listed below are updatable, omitted fields will be treated as blank. ##### Permissions Must have `edit_post` permission for the channel the post is in. 
    //
    //Future<MMPost> updatePost(String postId, MMUpdatePostRequest mMUpdatePostRequest) async
    test('test updatePost', () async {
      // TODO
    });

  });
}
