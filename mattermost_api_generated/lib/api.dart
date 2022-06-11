//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library mattermost.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/mattermost_authentication_api.dart';
part 'api/mattermost_bleve_api.dart';
part 'api/mattermost_bots_api.dart';
part 'api/mattermost_brand_api.dart';
part 'api/mattermost_channels_api.dart';
part 'api/mattermost_cloud_api.dart';
part 'api/mattermost_cluster_api.dart';
part 'api/mattermost_commands_api.dart';
part 'api/mattermost_compliance_api.dart';
part 'api/mattermost_data_retention_api.dart';
part 'api/mattermost_elasticsearch_api.dart';
part 'api/mattermost_emoji_api.dart';
part 'api/mattermost_exports_api.dart';
part 'api/mattermost_files_api.dart';
part 'api/mattermost_groups_api.dart';
part 'api/mattermost_imports_api.dart';
part 'api/mattermost_insights_api.dart';
part 'api/mattermost_integration_actions_api.dart';
part 'api/mattermost_jobs_api.dart';
part 'api/mattermost_ldap_api.dart';
part 'api/mattermost_migrate_api.dart';
part 'api/mattermost_o_auth_api.dart';
part 'api/mattermost_open_graph_api.dart';
part 'api/mattermost_permissions_api.dart';
part 'api/mattermost_plugins_api.dart';
part 'api/mattermost_posts_api.dart';
part 'api/mattermost_preferences_api.dart';
part 'api/mattermost_reactions_api.dart';
part 'api/mattermost_roles_api.dart';
part 'api/mattermost_root_api.dart';
part 'api/mattermost_saml_api.dart';
part 'api/mattermost_schemes_api.dart';
part 'api/mattermost_search_api.dart';
part 'api/mattermost_shared_channels_api.dart';
part 'api/mattermost_status_api.dart';
part 'api/mattermost_system_api.dart';
part 'api/mattermost_teams_api.dart';
part 'api/mattermost_terms_of_service_api.dart';
part 'api/mattermost_threads_api.dart';
part 'api/mattermost_uploads_api.dart';
part 'api/mattermost_usage_api.dart';
part 'api/mattermost_users_api.dart';
part 'api/mattermost_webhooks_api.dart';

part 'model/mattermost_add_channel_member_request.dart';
part 'model/mattermost_add_group_members_request.dart';
part 'model/mattermost_add_on.dart';
part 'model/mattermost_add_team_member_request.dart';
part 'model/mattermost_address.dart';
part 'model/mattermost_app_error.dart';
part 'model/mattermost_attach_device_id_request.dart';
part 'model/mattermost_audit.dart';
part 'model/mattermost_autocomplete_suggestion.dart';
part 'model/mattermost_boards_limits.dart';
part 'model/mattermost_bot.dart';
part 'model/mattermost_channel.dart';
part 'model/mattermost_channel_data.dart';
part 'model/mattermost_channel_member.dart';
part 'model/mattermost_channel_member_count_by_group.dart';
part 'model/mattermost_channel_member_with_team_data.dart';
part 'model/mattermost_channel_member_with_team_data_all_of.dart';
part 'model/mattermost_channel_moderated_role.dart';
part 'model/mattermost_channel_moderated_roles.dart';
part 'model/mattermost_channel_moderated_roles_patch.dart';
part 'model/mattermost_channel_moderation.dart';
part 'model/mattermost_channel_moderation_patch.dart';
part 'model/mattermost_channel_notify_props.dart';
part 'model/mattermost_channel_stats.dart';
part 'model/mattermost_channel_unread.dart';
part 'model/mattermost_channel_unread_at.dart';
part 'model/mattermost_channel_with_team_data.dart';
part 'model/mattermost_channel_with_team_data_all_of.dart';
part 'model/mattermost_check_user_mfa200_response.dart';
part 'model/mattermost_check_user_mfa_request.dart';
part 'model/mattermost_cloud_customer.dart';
part 'model/mattermost_cluster_info.dart';
part 'model/mattermost_command.dart';
part 'model/mattermost_command_response.dart';
part 'model/mattermost_compliance.dart';
part 'model/mattermost_config.dart';
part 'model/mattermost_config_analytics_settings.dart';
part 'model/mattermost_config_cluster_settings.dart';
part 'model/mattermost_config_compliance_settings.dart';
part 'model/mattermost_config_email_settings.dart';
part 'model/mattermost_config_file_settings.dart';
part 'model/mattermost_config_git_lab_settings.dart';
part 'model/mattermost_config_ldap_settings.dart';
part 'model/mattermost_config_localization_settings.dart';
part 'model/mattermost_config_log_settings.dart';
part 'model/mattermost_config_metrics_settings.dart';
part 'model/mattermost_config_native_app_settings.dart';
part 'model/mattermost_config_password_settings.dart';
part 'model/mattermost_config_privacy_settings.dart';
part 'model/mattermost_config_rate_limit_settings.dart';
part 'model/mattermost_config_saml_settings.dart';
part 'model/mattermost_config_service_settings.dart';
part 'model/mattermost_config_sql_settings.dart';
part 'model/mattermost_config_support_settings.dart';
part 'model/mattermost_config_team_settings.dart';
part 'model/mattermost_convert_bot_to_user_request.dart';
part 'model/mattermost_create_bot_request.dart';
part 'model/mattermost_create_channel_request.dart';
part 'model/mattermost_create_command_request.dart';
part 'model/mattermost_create_group_request.dart';
part 'model/mattermost_create_group_request_group.dart';
part 'model/mattermost_create_incoming_webhook_request.dart';
part 'model/mattermost_create_job_request.dart';
part 'model/mattermost_create_o_auth_app_request.dart';
part 'model/mattermost_create_outgoing_webhook_request.dart';
part 'model/mattermost_create_post_ephemeral_request.dart';
part 'model/mattermost_create_post_ephemeral_request_post.dart';
part 'model/mattermost_create_post_request.dart';
part 'model/mattermost_create_scheme_request.dart';
part 'model/mattermost_create_team_request.dart';
part 'model/mattermost_create_upload_request.dart';
part 'model/mattermost_create_user_access_token_request.dart';
part 'model/mattermost_create_user_request.dart';
part 'model/mattermost_data_retention_policy.dart';
part 'model/mattermost_data_retention_policy_all_of.dart';
part 'model/mattermost_data_retention_policy_create.dart';
part 'model/mattermost_data_retention_policy_for_channel.dart';
part 'model/mattermost_data_retention_policy_for_team.dart';
part 'model/mattermost_data_retention_policy_with_team_and_channel_counts.dart';
part 'model/mattermost_data_retention_policy_with_team_and_channel_counts_all_of.dart';
part 'model/mattermost_data_retention_policy_with_team_and_channel_ids.dart';
part 'model/mattermost_data_retention_policy_with_team_and_channel_ids_all_of.dart';
part 'model/mattermost_data_retention_policy_without_id.dart';
part 'model/mattermost_delete_group_members_request.dart';
part 'model/mattermost_disable_user_access_token_request.dart';
part 'model/mattermost_emoji.dart';
part 'model/mattermost_enable_user_access_token_request.dart';
part 'model/mattermost_environment_config.dart';
part 'model/mattermost_environment_config_analytics_settings.dart';
part 'model/mattermost_environment_config_cluster_settings.dart';
part 'model/mattermost_environment_config_compliance_settings.dart';
part 'model/mattermost_environment_config_email_settings.dart';
part 'model/mattermost_environment_config_file_settings.dart';
part 'model/mattermost_environment_config_git_lab_settings.dart';
part 'model/mattermost_environment_config_ldap_settings.dart';
part 'model/mattermost_environment_config_localization_settings.dart';
part 'model/mattermost_environment_config_log_settings.dart';
part 'model/mattermost_environment_config_metrics_settings.dart';
part 'model/mattermost_environment_config_native_app_settings.dart';
part 'model/mattermost_environment_config_password_settings.dart';
part 'model/mattermost_environment_config_rate_limit_settings.dart';
part 'model/mattermost_environment_config_saml_settings.dart';
part 'model/mattermost_environment_config_service_settings.dart';
part 'model/mattermost_environment_config_sql_settings.dart';
part 'model/mattermost_environment_config_support_settings.dart';
part 'model/mattermost_environment_config_team_settings.dart';
part 'model/mattermost_execute_command_request.dart';
part 'model/mattermost_file_info.dart';
part 'model/mattermost_file_info_list.dart';
part 'model/mattermost_files_limits.dart';
part 'model/mattermost_generate_mfa_secret200_response.dart';
part 'model/mattermost_get_data_retention_policies_count200_response.dart';
part 'model/mattermost_get_file_link200_response.dart';
part 'model/mattermost_get_group_stats200_response.dart';
part 'model/mattermost_get_group_users200_response.dart';
part 'model/mattermost_get_plugins200_response.dart';
part 'model/mattermost_get_redirect_location200_response.dart';
part 'model/mattermost_get_saml_metadata_from_idp_request.dart';
part 'model/mattermost_get_team_invite_info200_response.dart';
part 'model/mattermost_get_users_by_group_channel_ids200_response.dart';
part 'model/mattermost_global_data_retention_policy.dart';
part 'model/mattermost_group.dart';
part 'model/mattermost_group_syncable_channel.dart';
part 'model/mattermost_group_syncable_channels.dart';
part 'model/mattermost_group_syncable_team.dart';
part 'model/mattermost_group_syncable_teams.dart';
part 'model/mattermost_group_with_scheme_admin.dart';
part 'model/mattermost_import_team200_response.dart';
part 'model/mattermost_incoming_webhook.dart';
part 'model/mattermost_install_marketplace_plugin_request.dart';
part 'model/mattermost_integrations_limits.dart';
part 'model/mattermost_integrity_check_result.dart';
part 'model/mattermost_invite_guests_to_team_request.dart';
part 'model/mattermost_invoice.dart';
part 'model/mattermost_invoice_line_item.dart';
part 'model/mattermost_job.dart';
part 'model/mattermost_ldap_group.dart';
part 'model/mattermost_ldap_groups_paged.dart';
part 'model/mattermost_license_renewal_link.dart';
part 'model/mattermost_login_by_cws_token_request.dart';
part 'model/mattermost_login_request.dart';
part 'model/mattermost_marketplace_plugin.dart';
part 'model/mattermost_messages_limits.dart';
part 'model/mattermost_migrate_auth_to_ldap_request.dart';
part 'model/mattermost_migrate_auth_to_saml_request.dart';
part 'model/mattermost_migrate_id_ldap_request.dart';
part 'model/mattermost_move_channel_request.dart';
part 'model/mattermost_move_command_request.dart';
part 'model/mattermost_notice.dart';
part 'model/mattermost_o_auth_app.dart';
part 'model/mattermost_open_graph.dart';
part 'model/mattermost_open_graph_article.dart';
part 'model/mattermost_open_graph_article_authors_inner.dart';
part 'model/mattermost_open_graph_audios_inner.dart';
part 'model/mattermost_open_graph_book.dart';
part 'model/mattermost_open_graph_images_inner.dart';
part 'model/mattermost_open_graph_request.dart';
part 'model/mattermost_open_graph_videos_inner.dart';
part 'model/mattermost_open_interactive_dialog_request.dart';
part 'model/mattermost_open_interactive_dialog_request_dialog.dart';
part 'model/mattermost_ordered_sidebar_categories.dart';
part 'model/mattermost_orphaned_record.dart';
part 'model/mattermost_outgoing_webhook.dart';
part 'model/mattermost_patch_channel_request.dart';
part 'model/mattermost_patch_group_request.dart';
part 'model/mattermost_patch_group_syncable_for_team_request.dart';
part 'model/mattermost_patch_post_request.dart';
part 'model/mattermost_patch_role_request.dart';
part 'model/mattermost_patch_scheme_request.dart';
part 'model/mattermost_patch_team_request.dart';
part 'model/mattermost_patch_user_request.dart';
part 'model/mattermost_payment_method.dart';
part 'model/mattermost_payment_setup_intent.dart';
part 'model/mattermost_plugin_manifest.dart';
part 'model/mattermost_plugin_manifest_backend.dart';
part 'model/mattermost_plugin_manifest_server.dart';
part 'model/mattermost_plugin_manifest_server_executables.dart';
part 'model/mattermost_plugin_manifest_webapp.dart';
part 'model/mattermost_plugin_status.dart';
part 'model/mattermost_post.dart';
part 'model/mattermost_post_list.dart';
part 'model/mattermost_post_list_with_search_matches.dart';
part 'model/mattermost_post_log_request.dart';
part 'model/mattermost_post_metadata.dart';
part 'model/mattermost_post_metadata_embeds_inner.dart';
part 'model/mattermost_post_metadata_images_inner.dart';
part 'model/mattermost_posts_usage.dart';
part 'model/mattermost_preference.dart';
part 'model/mattermost_product.dart';
part 'model/mattermost_product_limits.dart';
part 'model/mattermost_publish_user_typing_request.dart';
part 'model/mattermost_push_notification.dart';
part 'model/mattermost_reaction.dart';
part 'model/mattermost_regen_command_token200_response.dart';
part 'model/mattermost_register_terms_of_service_action_request.dart';
part 'model/mattermost_relational_integrity_check_data.dart';
part 'model/mattermost_remote_cluster_info.dart';
part 'model/mattermost_remove_recent_custom_status_request.dart';
part 'model/mattermost_request_trial_license_request.dart';
part 'model/mattermost_reset_password_request.dart';
part 'model/mattermost_reset_saml_auth_data_to_email200_response.dart';
part 'model/mattermost_reset_saml_auth_data_to_email_request.dart';
part 'model/mattermost_retention_policy_for_channel_list.dart';
part 'model/mattermost_retention_policy_for_team_list.dart';
part 'model/mattermost_revoke_session_request.dart';
part 'model/mattermost_revoke_user_access_token_request.dart';
part 'model/mattermost_role.dart';
part 'model/mattermost_saml_certificate_status.dart';
part 'model/mattermost_scheme.dart';
part 'model/mattermost_search_all_channels200_response.dart';
part 'model/mattermost_search_all_channels_request.dart';
part 'model/mattermost_search_archived_channels_request.dart';
part 'model/mattermost_search_channels_for_retention_policy_request.dart';
part 'model/mattermost_search_channels_request.dart';
part 'model/mattermost_search_emoji_request.dart';
part 'model/mattermost_search_group_channels_request.dart';
part 'model/mattermost_search_posts_request.dart';
part 'model/mattermost_search_teams200_response.dart';
part 'model/mattermost_search_teams_for_retention_policy_request.dart';
part 'model/mattermost_search_teams_request.dart';
part 'model/mattermost_search_user_access_tokens_request.dart';
part 'model/mattermost_search_users_request.dart';
part 'model/mattermost_send_password_reset_email_request.dart';
part 'model/mattermost_send_verification_email_request.dart';
part 'model/mattermost_send_warn_metric_ack_request.dart';
part 'model/mattermost_server_busy.dart';
part 'model/mattermost_session.dart';
part 'model/mattermost_shared_channel.dart';
part 'model/mattermost_sidebar_category.dart';
part 'model/mattermost_sidebar_category_with_channels.dart';
part 'model/mattermost_slack_attachment.dart';
part 'model/mattermost_slack_attachment_field.dart';
part 'model/mattermost_status.dart';
part 'model/mattermost_status_ok.dart';
part 'model/mattermost_submit_interactive_dialog_request.dart';
part 'model/mattermost_subscription.dart';
part 'model/mattermost_subscription_stats.dart';
part 'model/mattermost_switch_account_type200_response.dart';
part 'model/mattermost_switch_account_type_request.dart';
part 'model/mattermost_system.dart';
part 'model/mattermost_system_status_response.dart';
part 'model/mattermost_team.dart';
part 'model/mattermost_team_exists.dart';
part 'model/mattermost_team_map.dart';
part 'model/mattermost_team_member.dart';
part 'model/mattermost_team_stats.dart';
part 'model/mattermost_team_unread.dart';
part 'model/mattermost_teams_limits.dart';
part 'model/mattermost_terms_of_service.dart';
part 'model/mattermost_test_site_url_request.dart';
part 'model/mattermost_timezone.dart';
part 'model/mattermost_top_channel.dart';
part 'model/mattermost_top_channel_list.dart';
part 'model/mattermost_top_reaction.dart';
part 'model/mattermost_top_reaction_list.dart';
part 'model/mattermost_update_channel_privacy_request.dart';
part 'model/mattermost_update_channel_request.dart';
part 'model/mattermost_update_cloud_customer_request.dart';
part 'model/mattermost_update_incoming_webhook_request.dart';
part 'model/mattermost_update_o_auth_app_request.dart';
part 'model/mattermost_update_outgoing_webhook_request.dart';
part 'model/mattermost_update_post_request.dart';
part 'model/mattermost_update_team_member_scheme_roles_request.dart';
part 'model/mattermost_update_team_privacy_request.dart';
part 'model/mattermost_update_team_request.dart';
part 'model/mattermost_update_team_scheme_request.dart';
part 'model/mattermost_update_user_active_request.dart';
part 'model/mattermost_update_user_custom_status_request.dart';
part 'model/mattermost_update_user_mfa_request.dart';
part 'model/mattermost_update_user_password_request.dart';
part 'model/mattermost_update_user_request.dart';
part 'model/mattermost_update_user_roles_request.dart';
part 'model/mattermost_update_user_status_request.dart';
part 'model/mattermost_upgrade_to_enterprise_status200_response.dart';
part 'model/mattermost_upload_file201_response.dart';
part 'model/mattermost_upload_session.dart';
part 'model/mattermost_user.dart';
part 'model/mattermost_user_access_token.dart';
part 'model/mattermost_user_access_token_sanitized.dart';
part 'model/mattermost_user_auth_data.dart';
part 'model/mattermost_user_autocomplete.dart';
part 'model/mattermost_user_autocomplete_in_channel.dart';
part 'model/mattermost_user_autocomplete_in_team.dart';
part 'model/mattermost_user_notify_props.dart';
part 'model/mattermost_user_terms_of_service.dart';
part 'model/mattermost_user_thread.dart';
part 'model/mattermost_user_threads.dart';
part 'model/mattermost_users_stats.dart';
part 'model/mattermost_verify_user_email_request.dart';
part 'model/mattermost_view_channel200_response.dart';
part 'model/mattermost_view_channel_request.dart';


const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

/// also add individual apis as getters on the primary default api client
extension MattermostApiClientExtension on  MattermostApiClient {
	
	MattermostAuthenticationApi get authentication => MattermostAuthenticationApi(this);
	
	MattermostBleveApi get bleve => MattermostBleveApi(this);
	
	MattermostBotsApi get bots => MattermostBotsApi(this);
	
	MattermostBrandApi get brand => MattermostBrandApi(this);
	
	MattermostChannelsApi get channels => MattermostChannelsApi(this);
	
	MattermostCloudApi get cloud => MattermostCloudApi(this);
	
	MattermostClusterApi get cluster => MattermostClusterApi(this);
	
	MattermostCommandsApi get commands => MattermostCommandsApi(this);
	
	MattermostComplianceApi get compliance => MattermostComplianceApi(this);
	
	MattermostDataRetentionApi get dataRetention => MattermostDataRetentionApi(this);
	
	MattermostElasticsearchApi get elasticsearch => MattermostElasticsearchApi(this);
	
	MattermostEmojiApi get emoji => MattermostEmojiApi(this);
	
	MattermostExportsApi get exports => MattermostExportsApi(this);
	
	MattermostFilesApi get files => MattermostFilesApi(this);
	
	MattermostGroupsApi get groups => MattermostGroupsApi(this);
	
	MattermostImportsApi get imports => MattermostImportsApi(this);
	
	MattermostInsightsApi get insights => MattermostInsightsApi(this);
	
	MattermostIntegrationActionsApi get integrationActions => MattermostIntegrationActionsApi(this);
	
	MattermostJobsApi get jobs => MattermostJobsApi(this);
	
	
	MattermostLdapApi get ldap => MattermostLdapApi(this);
	
	MattermostMigrateApi get migrate => MattermostMigrateApi(this);
	
	MattermostOAuthApi get oAuth => MattermostOAuthApi(this);
	
	MattermostOpenGraphApi get openGraph => MattermostOpenGraphApi(this);
	
	MattermostPermissionsApi get permissions => MattermostPermissionsApi(this);
	
	MattermostPluginsApi get plugins => MattermostPluginsApi(this);
	
	MattermostPostsApi get posts => MattermostPostsApi(this);
	
	MattermostPreferencesApi get preferences => MattermostPreferencesApi(this);
	
	MattermostReactionsApi get reactions => MattermostReactionsApi(this);
	
	MattermostRolesApi get roles => MattermostRolesApi(this);
	
	MattermostRootApi get root => MattermostRootApi(this);
	
	MattermostSAMLApi get sAML => MattermostSAMLApi(this);
	
	MattermostSchemesApi get schemes => MattermostSchemesApi(this);
	
	MattermostSearchApi get search => MattermostSearchApi(this);
	
	MattermostSharedChannelsApi get sharedChannels => MattermostSharedChannelsApi(this);
	
	MattermostStatusApi get status => MattermostStatusApi(this);
	
	MattermostSystemApi get system => MattermostSystemApi(this);
	
	MattermostTeamsApi get teams => MattermostTeamsApi(this);
	
	MattermostTermsOfServiceApi get termsOfService => MattermostTermsOfServiceApi(this);
	
	MattermostThreadsApi get threads => MattermostThreadsApi(this);
	
	MattermostUploadsApi get uploads => MattermostUploadsApi(this);
	
	MattermostUsageApi get usage => MattermostUsageApi(this);
	
	MattermostUsersApi get users => MattermostUsersApi(this);
	
	MattermostWebhooksApi get webhooks => MattermostWebhooksApi(this);
	
}


MattermostApiClient defaultMattermostApiClient = MattermostApiClient();
