SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict LNlbHZGzXrZUXCgT6bh7np6pIWIdCXlc9EouUR6q6uQcv3jrKwOtj0jT0HVEoMK

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") FROM stdin;
\.


--
-- Data for Name: custom_oauth_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."custom_oauth_providers" ("id", "provider_type", "identifier", "name", "client_id", "client_secret", "acceptable_client_ids", "scopes", "pkce_enabled", "attribute_mapping", "authorization_params", "enabled", "email_optional", "issuer", "discovery_url", "skip_nonce_check", "cached_discovery", "discovery_cached_at", "authorization_url", "token_url", "userinfo_url", "jwks_uri", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at", "invite_token", "referrer", "oauth_client_state_id", "linking_target_id", "email_optional") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") FROM stdin;
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") FROM stdin;
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."instances" ("id", "uuid", "raw_base_config", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_clients" ("id", "client_secret_hash", "registration_type", "redirect_uris", "grant_types", "client_name", "client_uri", "logo_uri", "created_at", "updated_at", "deleted_at", "client_type", "token_endpoint_auth_method") FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag", "oauth_client_id", "refresh_token_hmac_key", "refresh_token_counter", "scopes") FROM stdin;
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_factors" ("id", "user_id", "friendly_name", "factor_type", "status", "created_at", "updated_at", "secret", "phone", "last_challenged_at", "web_authn_credential", "web_authn_aaguid", "last_webauthn_challenge_data") FROM stdin;
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_challenges" ("id", "factor_id", "created_at", "verified_at", "ip_address", "otp_code", "web_authn_session_data") FROM stdin;
\.


--
-- Data for Name: oauth_authorizations; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_authorizations" ("id", "authorization_id", "client_id", "user_id", "redirect_uri", "scope", "state", "resource", "code_challenge", "code_challenge_method", "response_type", "status", "authorization_code", "created_at", "expires_at", "approved_at", "nonce") FROM stdin;
\.


--
-- Data for Name: oauth_client_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_client_states" ("id", "provider_type", "code_verifier", "created_at") FROM stdin;
\.


--
-- Data for Name: oauth_consents; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_consents" ("id", "user_id", "client_id", "scopes", "granted_at", "revoked_at") FROM stdin;
\.


--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."one_time_tokens" ("id", "user_id", "token_type", "token_hash", "relates_to", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") FROM stdin;
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_providers" ("id", "resource_id", "created_at", "updated_at", "disabled") FROM stdin;
\.


--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_providers" ("id", "sso_provider_id", "entity_id", "metadata_xml", "metadata_url", "attribute_mapping", "created_at", "updated_at", "name_id_format") FROM stdin;
\.


--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_relay_states" ("id", "sso_provider_id", "request_id", "for_email", "redirect_to", "created_at", "updated_at", "flow_state_id") FROM stdin;
\.


--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_domains" ("id", "sso_provider_id", "domain", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: webauthn_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."webauthn_challenges" ("id", "user_id", "challenge_type", "session_data", "created_at", "expires_at") FROM stdin;
\.


--
-- Data for Name: webauthn_credentials; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."webauthn_credentials" ("id", "user_id", "credential_id", "public_key", "attestation_type", "aaguid", "sign_count", "transports", "backup_eligible", "backed_up", "friendly_name", "created_at", "updated_at", "last_used_at") FROM stdin;
\.


--
-- Data for Name: annotation_tag_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."annotation_tag_entity" ("id", "name", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."role" ("slug", "displayName", "description", "roleType", "systemRole", "createdAt", "updatedAt") FROM stdin;
global:chatUser	Chat User	Chat User	global	t	2026-04-28 06:00:14.467+00	2026-04-28 06:00:14.467+00
global:owner	Owner	Owner	global	t	2026-04-28 05:58:25.899+00	2026-04-28 06:00:16.758+00
global:admin	Admin	Admin	global	t	2026-04-28 05:58:25.899+00	2026-04-28 06:00:16.758+00
global:member	Member	Member	global	t	2026-04-28 05:58:25.899+00	2026-04-28 06:00:16.758+00
project:admin	Project Admin	Full control of settings, members, workflows, credentials and executions	project	t	2026-04-28 05:58:25.899+00	2026-04-28 06:00:18.76+00
project:personalOwner	Project Owner	Project Owner	project	t	2026-04-28 05:58:25.899+00	2026-04-28 06:00:18.76+00
project:editor	Project Editor	Create, edit, and delete workflows, credentials, and executions	project	t	2026-04-28 05:58:25.899+00	2026-04-28 06:00:18.76+00
project:viewer	Project Viewer	Read-only access to workflows, credentials, and executions	project	t	2026-04-28 05:58:25.899+00	2026-04-28 06:00:18.76+00
project:chatUser	Project Chat User	Chat-only access to chatting with workflows that have n8n Chat enabled	project	t	2026-04-28 05:58:25.899+00	2026-04-28 06:00:18.76+00
credential:owner	Credential Owner	Credential Owner	credential	t	2026-04-28 06:00:14.467+00	2026-04-28 06:00:14.467+00
credential:user	Credential User	Credential User	credential	t	2026-04-28 06:00:14.467+00	2026-04-28 06:00:14.467+00
workflow:owner	Workflow Owner	Workflow Owner	workflow	t	2026-04-28 06:00:14.467+00	2026-04-28 06:00:14.467+00
workflow:editor	Workflow Editor	Workflow Editor	workflow	t	2026-04-28 06:00:14.467+00	2026-04-28 06:00:14.467+00
secretsProviderConnection:owner	Secrets Provider Connection Owner	Full control of secrets provider connection settings and secrets	secretsProviderConnection	t	2026-04-28 06:00:14.467+00	2026-04-28 06:00:14.467+00
secretsProviderConnection:user	Secrets Provider Connection User	Read-only access to use secrets from the connection	secretsProviderConnection	t	2026-04-28 06:00:14.467+00	2026-04-28 06:00:14.467+00
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user" ("id", "email", "firstName", "lastName", "password", "personalizationAnswers", "createdAt", "updatedAt", "settings", "disabled", "mfaEnabled", "mfaSecret", "mfaRecoveryCodes", "lastActiveAt", "roleSlug") FROM stdin;
55398dce-1d82-49fa-bf74-ad577c2d4506	dullareymart19@gmail.com	Rey Mart	Dulla	$2a$10$AFIqZ1Omcg.JXXtAKdoc2Ola3Dsn/rBRbjZP5oKj9O/EQhiG3fB8i	{"version":"v4","personalization_survey_submitted_at":"2026-04-28T06:07:44.218Z","personalization_survey_n8n_version":"2.17.8","automationGoalDevops":["data-syncing","cloud-infrastructure-orchestration","monitoring-alerting","ticketing-systems-integrations","reporting"],"companyType":"saas","role":"it"}	2026-04-28 05:54:33.414+00	2026-04-28 06:07:41.268+00	{"userActivated": false}	f	f	\N	\N	2026-04-28	global:owner
\.


--
-- Data for Name: auth_identity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."auth_identity" ("userId", "providerId", "providerType", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: auth_provider_sync_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."auth_provider_sync_history" ("id", "providerType", "runMode", "status", "startedAt", "endedAt", "scanned", "created", "updated", "disabled", "error") FROM stdin;
\.


--
-- Data for Name: binary_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."binary_data" ("fileId", "sourceType", "sourceId", "data", "mimeType", "fileName", "fileSize", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: dynamic_credential_resolver; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."dynamic_credential_resolver" ("id", "name", "type", "config", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: credentials_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."credentials_entity" ("name", "data", "type", "createdAt", "updatedAt", "id", "isManaged", "isGlobal", "isResolvable", "resolvableAllowFallback", "resolverId") FROM stdin;
Google Docs account	U2FsdGVkX1/daxvV7AxUBgj4jllZOBhkr1AZxbBYnKQsaCIyk5T8YDvJJuTmNAXveWTiNPIQuNOjrq812g5Z0HTEq+7Io5JtNamiSab+iPMA5AThLHEEZzXgM63J6t5F/tULRFDDh1rT1GYTVDjCJ5AwdbVy9MyWvjTszKXO/O3qLCQnZpLau8nVnhbs08/y1+u2kFUAigeuG9z+ZwL9WssOaVR5KrHpGdFWYHdsm3MMYGqkZj9AzrDX1SyIrZDf6CdRX4lgHRPfgz5cKX9Vnw==	googleDocsOAuth2Api	2026-04-28 07:02:50.111+00	2026-04-28 07:02:56.773+00	HlkPrQcSaMxnhuGJ	f	f	f	f	\N
Google Docs account 4	U2FsdGVkX18s5ko2MNGEecZ7rT4erXvRxJx/2DAX5IcoA8uZ5JvXI2fLlTT6N5vRkFScIxC4Uq74yrMmBu0/vKKQP4QsWTXKylYJbh9i6hUjXyYnn60e7LGROa4XrjLwfxfTZZt41gHY3dEPqfqdYhyssDRf75nfW9ho7GkSbiU+nLbZR+6lKapohSHabcC1QggwzR7/J39xUKaKnUSbwryLs5PZvknI9dPbj9IKkqQUoe2CuPHF+YJKprY2clw5PrjkeKPFl3TW9h52WgPALg==	googleDocsOAuth2Api	2026-04-28 07:26:24.977+00	2026-04-28 07:26:29.145+00	bnBO3m2UNnfNlLXq	f	f	f	f	\N
Google Docs account	U2FsdGVkX1+1NJuCbEHre3xBnSdkqBrdrFDawjUSov7/ycpyoDXr3EdFK3BRA4e/4LhSaiSvmKgLJ8z/xU7JL4elCasCXEOtIRI8K/jsTC3oFoRbsq+mV7kcG90nbwGPCeDYsyIL/dTqlCrTe6SaoPeZ1MbllAK+J8BU03tut/KOMxlq97km81B3gkOIE2cdeKxDCbis6NVWPHteKcMQRNeIhRKxZ4fn843ZxrEU51cZa73diHYsw9BKD6XH+TvOgqKeoi/9lSlEbLAKjI3VYQ==	googleDocsOAuth2Api	2026-04-28 07:02:54.651+00	2026-04-28 07:04:37.145+00	hujESDBlnw8wuny3	f	f	f	f	\N
Google Docs account 3	U2FsdGVkX1/2CmpQJ7gCN/2H+BTNm3QnpNqYe0svojTAwyG0/pNkAAnel6KHunRnDBQ2IfZ1SzIdfHrOnbwcxukEfzwugvGtuCt18n77QesJeHhw5977e4CfMALVxH9hxCbU8qekljSp8x4cwmkuL8kYqicmKpPwUZfJ7/r3p4c0JqZ5byLPmJPPMH27NxAC+7pgSj/9jMvZA/2/9kZiEsEUAbACfc0UKxvk36ltXct8WBVomAf0a6sxr8fRlryUrGLimHydzdjKwTORo3qbGQ==	googleDocsOAuth2Api	2026-04-28 07:14:55.146+00	2026-04-28 07:22:08.074+00	PkT8NqTrHhmg09ym	f	f	f	f	\N
\.


--
-- Data for Name: chat_hub_agents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_agents" ("id", "name", "description", "systemPrompt", "ownerId", "credentialId", "provider", "model", "createdAt", "updatedAt", "icon", "files", "suggestedPrompts") FROM stdin;
\.


--
-- Data for Name: chat_hub_tools; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_tools" ("id", "name", "type", "typeVersion", "ownerId", "definition", "enabled", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: chat_hub_agent_tools; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_agent_tools" ("agentId", "toolId") FROM stdin;
\.


--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."project" ("id", "name", "type", "createdAt", "updatedAt", "icon", "description", "creatorId") FROM stdin;
HzKRUqQS3PtmBfjw	Rey Mart Dulla <dullareymart19@gmail.com>	personal	2026-04-28 05:55:55.849+00	2026-04-28 06:06:59.133+00	\N	\N	55398dce-1d82-49fa-bf74-ad577c2d4506
\.


--
-- Data for Name: folder; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."folder" ("id", "name", "parentFolderId", "projectId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: workflow_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_entity" ("name", "active", "nodes", "connections", "createdAt", "updatedAt", "settings", "staticData", "pinData", "versionId", "triggerCount", "id", "meta", "parentFolderId", "isArchived", "versionCounter", "description", "activeVersionId") FROM stdin;
My workflow	f	[{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"13210c1d-71de-4b63-9f4e-ec3d4a779b57","name":"When clicking ‘Execute workflow’"}]	{"When clicking ‘Execute workflow’":{"main":[[]]}}	2026-04-28 06:36:33.008+00	2026-04-28 07:33:03.959+00	{"executionOrder":"v1","binaryMode":"separate"}	\N	{}	83cdae55-d932-45d3-9329-10b957e09d0b	0	byXk9ODoQGKNzIBu	{"templateCredsSetupCompleted":true}	\N	f	33	\N	\N
\.


--
-- Data for Name: chat_hub_sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_sessions" ("id", "title", "ownerId", "lastMessageAt", "credentialId", "provider", "model", "workflowId", "createdAt", "updatedAt", "agentId", "agentName", "type") FROM stdin;
\.


--
-- Data for Name: execution_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_entity" ("id", "finished", "mode", "retryOf", "retrySuccessId", "startedAt", "stoppedAt", "waitTill", "status", "workflowId", "deletedAt", "createdAt", "storedAt") FROM stdin;
1	f	manual	\N	\N	2026-04-28 07:08:31.276+00	2026-04-28 07:08:34.665+00	\N	error	byXk9ODoQGKNzIBu	\N	2026-04-28 07:08:30.435+00	db
2	f	manual	\N	\N	2026-04-28 07:10:58.923+00	2026-04-28 07:11:01.445+00	\N	error	byXk9ODoQGKNzIBu	\N	2026-04-28 07:10:58.086+00	db
3	f	manual	\N	\N	2026-04-28 07:32:48.037+00	2026-04-28 07:32:50.692+00	\N	error	byXk9ODoQGKNzIBu	\N	2026-04-28 07:32:47.21+00	db
\.


--
-- Data for Name: chat_hub_messages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_messages" ("id", "sessionId", "previousMessageId", "revisionOfMessageId", "retryOfMessageId", "type", "name", "content", "provider", "model", "workflowId", "executionId", "createdAt", "updatedAt", "agentId", "status", "attachments") FROM stdin;
\.


--
-- Data for Name: chat_hub_session_tools; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_session_tools" ("sessionId", "toolId") FROM stdin;
\.


--
-- Data for Name: credential_dependency; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."credential_dependency" ("id", "credentialId", "dependencyType", "dependencyId", "createdAt") FROM stdin;
\.


--
-- Data for Name: data_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."data_table" ("id", "name", "projectId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: data_table_column; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."data_table_column" ("id", "name", "type", "index", "dataTableId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: dynamic_credential_entry; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."dynamic_credential_entry" ("credential_id", "subject_id", "resolver_id", "data", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: dynamic_credential_user_entry; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."dynamic_credential_user_entry" ("credentialId", "userId", "resolverId", "data", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: event_destinations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."event_destinations" ("id", "destination", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: execution_annotations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_annotations" ("id", "executionId", "vote", "note", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: execution_annotation_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_annotation_tags" ("annotationId", "tagId") FROM stdin;
\.


--
-- Data for Name: execution_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_data" ("executionId", "workflowData", "data", "workflowVersionId") FROM stdin;
1	{"id":"byXk9ODoQGKNzIBu","name":"My workflow","active":false,"activeVersionId":null,"isArchived":false,"createdAt":"2026-04-28T06:36:33.008Z","updatedAt":"2026-04-28T07:08:24.978Z","nodes":[{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"13210c1d-71de-4b63-9f4e-ec3d4a779b57","name":"When clicking ‘Execute workflow’"},{"parameters":{"authentication":"oAuth2","resource":"document","operation":"get","documentURL":"1WgqHBF4Wyqi6tOIdkC6fAumPnLO2IrzkU1lIgkIuJIE","simple":true},"type":"n8n-nodes-base.googleDocs","typeVersion":2,"position":[208,0],"id":"a4789d9e-57f3-4e64-a48b-b82f9ff50d37","name":"Get a document","credentials":{"googleDocsOAuth2Api":{"id":"hujESDBlnw8wuny3","name":"Google Docs account"}}}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Get a document","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"staticData":null,"pinData":{}}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{"destinationNode":"5","runNodeFilter":"6"},{"error":"7","runData":"8","pinData":"9","lastNodeExecuted":"10"},{"contextData":"11","nodeExecutionStack":"12","metadata":"13","waitingExecution":"14","waitingExecutionSource":"15","runtimeData":"16"},"324e4e7a6c56d67a5285ca3c06986c435736c6f235bda9cdf6c319cd23aca1c8",{"nodeName":"10","mode":"17"},["18","10"],{"level":"19","tags":"20","timestamp":1777360114394,"context":"21","functionality":"22","name":"23","node":"24","messages":"25","httpCode":null,"message":"26","stack":"27"},{"When clicking ‘Execute workflow’":"28","Get a document":"29"},{},"Get a document",{},["30"],{},{},{},{"version":1,"establishedAt":1777360113461,"source":"31","redaction":"32","triggerNode":"33"},"inclusive","When clicking ‘Execute workflow’","warning",{},{},"regular","NodeApiError",{"parameters":"34","type":"35","typeVersion":2,"position":"36","id":"37","name":"10","credentials":"38"},["26"],"Unable to sign without access token","NodeApiError: Unable to sign without access token\\n    at ExecuteContext.googleApiRequest (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file+packages+nodes-base_@aws-sdk+credential-providers@3.808.0_asn1.js@5_8da18263ca0574b0db58d4fefd8173ce/node_modules/n8n-nodes-base/nodes/Google/Docs/GenericFunctions.ts:53:9)\\n    at processTicksAndRejections (node:internal/process/task_queues:104:5)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file+packages+nodes-base_@aws-sdk+credential-providers@3.808.0_asn1.js@5_8da18263ca0574b0db58d4fefd8173ce/node_modules/n8n-nodes-base/nodes/Google/Docs/GoogleDocs.node.ts:247:22)\\n    at WorkflowExecute.executeNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+exporter-trace-otlp_2d19a9be2839cb42cd2e8c9cacd05d5a/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1048:9)\\n    at WorkflowExecute.runNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+exporter-trace-otlp_2d19a9be2839cb42cd2e8c9cacd05d5a/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1239:11)\\n    at /usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+exporter-trace-otlp_2d19a9be2839cb42cd2e8c9cacd05d5a/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1687:27\\n    at /usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+exporter-trace-otlp_2d19a9be2839cb42cd2e8c9cacd05d5a/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:2339:11",["39"],["40"],{"node":"41","data":"42","source":"43"},"manual",{"version":1,"policy":"44"},{"name":"18","type":"45"},{"authentication":"46","resource":"47","operation":"48","documentURL":"49","simple":true},"n8n-nodes-base.googleDocs",[208,0],"a4789d9e-57f3-4e64-a48b-b82f9ff50d37",{"googleDocsOAuth2Api":"50"},{"startTime":1777360113971,"executionIndex":0,"source":"51","hints":"52","executionTime":5,"executionStatus":"53","data":"54"},{"startTime":1777360113978,"executionIndex":1,"source":"55","hints":"56","executionTime":685,"executionStatus":"57","error":"58"},{"parameters":"59","type":"35","typeVersion":2,"position":"60","id":"37","name":"10","credentials":"61"},{"main":"62"},{"main":"55"},"none","n8n-nodes-base.manualTrigger","oAuth2","document","get","1WgqHBF4Wyqi6tOIdkC6fAumPnLO2IrzkU1lIgkIuJIE",{"id":"63","name":"64"},[],[],"success",{"main":"65"},["66"],[],"error",{"level":"19","tags":"20","timestamp":1777360114394,"context":"21","functionality":"22","name":"23","node":"24","messages":"25","httpCode":null,"message":"26","stack":"27"},{"authentication":"46","resource":"47","operation":"48","documentURL":"49","simple":true},[208,0],{"googleDocsOAuth2Api":"67"},["68"],"hujESDBlnw8wuny3","Google Docs account",["69"],{"previousNode":"18","previousNodeOutput":0,"previousNodeRun":0},{"id":"63","name":"64"},["70"],["71"],{"json":"72","pairedItem":"73"},{"json":"72","pairedItem":"74"},{},{"item":0},{"item":0}]	cdd865b9-6bfd-421e-b2ff-e481bb3a963e
2	{"id":"byXk9ODoQGKNzIBu","name":"My workflow","active":false,"activeVersionId":null,"isArchived":false,"createdAt":"2026-04-28T06:36:33.008Z","updatedAt":"2026-04-28T07:10:53.612Z","nodes":[{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"13210c1d-71de-4b63-9f4e-ec3d4a779b57","name":"When clicking ‘Execute workflow’"},{"parameters":{"authentication":"oAuth2","resource":"document","operation":"get","documentURL":"1WgqHBF4Wyqi6tOIdkC6fAumPnLO2IrzkU1lIgkIuJIE","simple":true},"type":"n8n-nodes-base.googleDocs","typeVersion":2,"position":[208,0],"id":"0caa81dd-4e9c-4743-876e-3dad5ceb8390","name":"Get a document","credentials":{"googleDocsOAuth2Api":{"id":"hujESDBlnw8wuny3","name":"Google Docs account"}}}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Get a document","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"staticData":null,"pinData":{}}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{"destinationNode":"5","runNodeFilter":"6"},{"error":"7","runData":"8","pinData":"9","lastNodeExecuted":"10"},{"contextData":"11","nodeExecutionStack":"12","metadata":"13","waitingExecution":"14","waitingExecutionSource":"15","runtimeData":"16"},"4bbad8f156f4c4a0d08a437b46aa7d5e29271011684acbba0b814207298af081",{"nodeName":"10","mode":"17"},["18","10"],{"level":"19","tags":"20","timestamp":1777360261444,"context":"21","functionality":"22","name":"23","node":"24","messages":"25","httpCode":null,"message":"26","stack":"27"},{"When clicking ‘Execute workflow’":"28","Get a document":"29"},{},"Get a document",{},["30"],{},{},{},{"version":1,"establishedAt":1777360260601,"source":"31","redaction":"32","triggerNode":"33"},"inclusive","When clicking ‘Execute workflow’","warning",{},{},"regular","NodeApiError",{"parameters":"34","type":"35","typeVersion":2,"position":"36","id":"37","name":"10","credentials":"38"},["26"],"Unable to sign without access token","NodeApiError: Unable to sign without access token\\n    at ExecuteContext.googleApiRequest (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file+packages+nodes-base_@aws-sdk+credential-providers@3.808.0_asn1.js@5_8da18263ca0574b0db58d4fefd8173ce/node_modules/n8n-nodes-base/nodes/Google/Docs/GenericFunctions.ts:53:9)\\n    at processTicksAndRejections (node:internal/process/task_queues:104:5)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file+packages+nodes-base_@aws-sdk+credential-providers@3.808.0_asn1.js@5_8da18263ca0574b0db58d4fefd8173ce/node_modules/n8n-nodes-base/nodes/Google/Docs/GoogleDocs.node.ts:247:22)\\n    at WorkflowExecute.executeNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+exporter-trace-otlp_2d19a9be2839cb42cd2e8c9cacd05d5a/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1048:9)\\n    at WorkflowExecute.runNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+exporter-trace-otlp_2d19a9be2839cb42cd2e8c9cacd05d5a/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1239:11)\\n    at /usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+exporter-trace-otlp_2d19a9be2839cb42cd2e8c9cacd05d5a/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1687:27\\n    at /usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+exporter-trace-otlp_2d19a9be2839cb42cd2e8c9cacd05d5a/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:2339:11",["39"],["40"],{"node":"41","data":"42","source":"43"},"manual",{"version":1,"policy":"44"},{"name":"10","type":"35"},{"authentication":"45","resource":"46","operation":"47","documentURL":"48","simple":true},"n8n-nodes-base.googleDocs",[208,0],"0caa81dd-4e9c-4743-876e-3dad5ceb8390",{"googleDocsOAuth2Api":"49"},{"startTime":1777360113971,"executionIndex":0,"source":"50","hints":"51","executionTime":5,"executionStatus":"52","data":"53"},{"startTime":1777360261108,"executionIndex":1,"source":"54","hints":"55","executionTime":336,"executionStatus":"56","error":"57"},{"parameters":"58","type":"35","typeVersion":2,"position":"59","id":"37","name":"10","credentials":"60"},{"main":"61"},{"main":"54"},"none","oAuth2","document","get","1WgqHBF4Wyqi6tOIdkC6fAumPnLO2IrzkU1lIgkIuJIE",{"id":"62","name":"63"},[],[],"success",{"main":"64"},["65"],[],"error",{"level":"19","tags":"20","timestamp":1777360261444,"context":"21","functionality":"22","name":"23","node":"24","messages":"25","httpCode":null,"message":"26","stack":"27"},{"authentication":"45","resource":"46","operation":"47","documentURL":"48","simple":true},[208,0],{"googleDocsOAuth2Api":"66"},["67"],"hujESDBlnw8wuny3","Google Docs account",["68"],{"previousNode":"18","previousNodeOutput":0,"previousNodeRun":0},{"id":"62","name":"63"},["69"],["70"],{"json":"71","pairedItem":"72"},{"json":"71","pairedItem":"73"},{},{"item":0},{"item":0}]	9e407763-6a8e-4963-9fd6-c5f6d87234ce
3	{"id":"byXk9ODoQGKNzIBu","name":"My workflow","active":false,"activeVersionId":null,"isArchived":false,"createdAt":"2026-04-28T06:36:33.008Z","updatedAt":"2026-04-28T07:32:42.352Z","nodes":[{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"13210c1d-71de-4b63-9f4e-ec3d4a779b57","name":"When clicking ‘Execute workflow’"},{"parameters":{"authentication":"oAuth2","resource":"document","operation":"get","documentURL":"1WgqHBF4Wyqi6tOIdkC6fAumPnLO2IrzkU1lIgkIuJIE","simple":true},"type":"n8n-nodes-base.googleDocs","typeVersion":2,"position":[208,0],"id":"0f60466b-c4d4-43f3-bb0c-0fbb04f9cb7c","name":"Get a document","credentials":{"googleDocsOAuth2Api":{"id":"bnBO3m2UNnfNlLXq","name":"Google Docs account 4"}}}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Get a document","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"staticData":null,"pinData":{}}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{"destinationNode":"5","runNodeFilter":"6"},{"error":"7","runData":"8","pinData":"9","lastNodeExecuted":"10"},{"contextData":"11","nodeExecutionStack":"12","metadata":"13","waitingExecution":"14","waitingExecutionSource":"15","runtimeData":"16"},"5d094a54f178011e3b4cd5c9039e8f582aa0a75c5c8b38baf3a77d5dae24b09c",{"nodeName":"10","mode":"17"},["18","10"],{"level":"19","tags":"20","timestamp":1777361570690,"context":"21","functionality":"22","name":"23","node":"24","messages":"25","httpCode":null,"message":"26","stack":"27"},{"When clicking ‘Execute workflow’":"28","Get a document":"29"},{},"Get a document",{},["30"],{},{},{},{"version":1,"establishedAt":1777361569692,"source":"31","redaction":"32","triggerNode":"33"},"inclusive","When clicking ‘Execute workflow’","warning",{},{},"regular","NodeApiError",{"parameters":"34","type":"35","typeVersion":2,"position":"36","id":"37","name":"10","credentials":"38"},["26"],"Unable to sign without access token","NodeApiError: Unable to sign without access token\\n    at ExecuteContext.googleApiRequest (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file+packages+nodes-base_@aws-sdk+credential-providers@3.808.0_asn1.js@5_8da18263ca0574b0db58d4fefd8173ce/node_modules/n8n-nodes-base/nodes/Google/Docs/GenericFunctions.ts:53:9)\\n    at processTicksAndRejections (node:internal/process/task_queues:104:5)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file+packages+nodes-base_@aws-sdk+credential-providers@3.808.0_asn1.js@5_8da18263ca0574b0db58d4fefd8173ce/node_modules/n8n-nodes-base/nodes/Google/Docs/GoogleDocs.node.ts:247:22)\\n    at WorkflowExecute.executeNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+exporter-trace-otlp_2d19a9be2839cb42cd2e8c9cacd05d5a/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1048:9)\\n    at WorkflowExecute.runNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+exporter-trace-otlp_2d19a9be2839cb42cd2e8c9cacd05d5a/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1239:11)\\n    at /usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+exporter-trace-otlp_2d19a9be2839cb42cd2e8c9cacd05d5a/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1687:27\\n    at /usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+exporter-trace-otlp_2d19a9be2839cb42cd2e8c9cacd05d5a/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:2339:11",["39"],["40"],{"node":"41","data":"42","source":"43"},"manual",{"version":1,"policy":"44"},{"name":"18","type":"45"},{"authentication":"46","resource":"47","operation":"48","documentURL":"49","simple":true},"n8n-nodes-base.googleDocs",[208,0],"0f60466b-c4d4-43f3-bb0c-0fbb04f9cb7c",{"googleDocsOAuth2Api":"50"},{"startTime":1777361570354,"executionIndex":0,"source":"51","hints":"52","executionTime":2,"executionStatus":"53","data":"54"},{"startTime":1777361570357,"executionIndex":1,"source":"55","hints":"56","executionTime":334,"executionStatus":"57","error":"58"},{"parameters":"59","type":"35","typeVersion":2,"position":"60","id":"37","name":"10","credentials":"61"},{"main":"62"},{"main":"55"},"none","n8n-nodes-base.manualTrigger","oAuth2","document","get","1WgqHBF4Wyqi6tOIdkC6fAumPnLO2IrzkU1lIgkIuJIE",{"id":"63","name":"64"},[],[],"success",{"main":"65"},["66"],[],"error",{"level":"19","tags":"20","timestamp":1777361570690,"context":"21","functionality":"22","name":"23","node":"24","messages":"25","httpCode":null,"message":"26","stack":"27"},{"authentication":"46","resource":"47","operation":"48","documentURL":"49","simple":true},[208,0],{"googleDocsOAuth2Api":"67"},["68"],"bnBO3m2UNnfNlLXq","Google Docs account 4",["69"],{"previousNode":"18","previousNodeOutput":0,"previousNodeRun":0},{"id":"63","name":"64"},["70"],["71"],{"json":"72","pairedItem":"73"},{"json":"72","pairedItem":"74"},{},{"item":0},{"item":0}]	3556c943-9556-457d-8ac2-4918679ea0dc
\.


--
-- Data for Name: execution_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_metadata" ("id", "executionId", "key", "value") FROM stdin;
\.


--
-- Data for Name: tag_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."tag_entity" ("name", "createdAt", "updatedAt", "id") FROM stdin;
\.


--
-- Data for Name: folder_tag; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."folder_tag" ("folderId", "tagId") FROM stdin;
\.


--
-- Data for Name: insights_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."insights_metadata" ("metaId", "workflowId", "projectId", "workflowName", "projectName") FROM stdin;
\.


--
-- Data for Name: insights_by_period; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."insights_by_period" ("id", "metaId", "type", "value", "periodUnit", "periodStart") FROM stdin;
\.


--
-- Data for Name: insights_raw; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."insights_raw" ("id", "metaId", "type", "value", "timestamp") FROM stdin;
\.


--
-- Data for Name: installed_packages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."installed_packages" ("packageName", "installedVersion", "authorName", "authorEmail", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: installed_nodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."installed_nodes" ("name", "type", "latestVersion", "package") FROM stdin;
\.


--
-- Data for Name: instance_ai_threads; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_threads" ("id", "resourceId", "title", "metadata", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_iteration_logs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_iteration_logs" ("id", "threadId", "taskKey", "entry", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_messages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_messages" ("id", "threadId", "content", "role", "type", "resourceId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_observational_memory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_observational_memory" ("id", "lookupKey", "scope", "threadId", "resourceId", "activeObservations", "originType", "config", "generationCount", "lastObservedAt", "pendingMessageTokens", "totalTokensObserved", "observationTokenCount", "isObserving", "isReflecting", "observedMessageIds", "observedTimezone", "bufferedObservations", "bufferedObservationTokens", "bufferedMessageIds", "bufferedReflection", "bufferedReflectionTokens", "bufferedReflectionInputTokens", "reflectedObservationLineCount", "bufferedObservationChunks", "isBufferingObservation", "isBufferingReflection", "lastBufferedAtTokens", "lastBufferedAtTime", "metadata", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_resources; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_resources" ("id", "workingMemory", "metadata", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_run_snapshots; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_run_snapshots" ("threadId", "runId", "messageGroupId", "runIds", "tree", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_workflow_snapshots; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_workflow_snapshots" ("runId", "workflowName", "resourceId", "status", "snapshot", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_version_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_version_history" ("id", "major", "minor", "patch", "createdAt") FROM stdin;
1	2	17	8	2026-04-28 06:01:26.827+00
\.


--
-- Data for Name: invalid_auth_token; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."invalid_auth_token" ("token", "expiresAt") FROM stdin;
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."migrations" ("id", "timestamp", "name") FROM stdin;
1	1587669153312	InitialMigration1587669153312
2	1589476000887	WebhookModel1589476000887
3	1594828256133	CreateIndexStoppedAt1594828256133
4	1607431743768	MakeStoppedAtNullable1607431743768
5	1611144599516	AddWebhookId1611144599516
6	1617270242566	CreateTagEntity1617270242566
7	1620824779533	UniqueWorkflowNames1620824779533
8	1626176912946	AddwaitTill1626176912946
9	1630419189837	UpdateWorkflowCredentials1630419189837
10	1644422880309	AddExecutionEntityIndexes1644422880309
11	1646834195327	IncreaseTypeVarcharLimit1646834195327
12	1646992772331	CreateUserManagement1646992772331
13	1648740597343	LowerCaseUserEmail1648740597343
14	1652254514002	CommunityNodes1652254514002
15	1652367743993	AddUserSettings1652367743993
16	1652905585850	AddAPIKeyColumn1652905585850
17	1654090467022	IntroducePinData1654090467022
18	1658932090381	AddNodeIds1658932090381
19	1659902242948	AddJsonKeyPinData1659902242948
20	1660062385367	CreateCredentialsUserRole1660062385367
21	1663755770893	CreateWorkflowsEditorRole1663755770893
22	1664196174001	WorkflowStatistics1664196174001
23	1665484192212	CreateCredentialUsageTable1665484192212
24	1665754637025	RemoveCredentialUsageTable1665754637025
25	1669739707126	AddWorkflowVersionIdColumn1669739707126
26	1669823906995	AddTriggerCountColumn1669823906995
27	1671535397530	MessageEventBusDestinations1671535397530
28	1671726148421	RemoveWorkflowDataLoadedFlag1671726148421
29	1673268682475	DeleteExecutionsWithWorkflows1673268682475
30	1674138566000	AddStatusToExecutions1674138566000
31	1674509946020	CreateLdapEntities1674509946020
32	1675940580449	PurgeInvalidWorkflowConnections1675940580449
33	1676996103000	MigrateExecutionStatus1676996103000
34	1677236854063	UpdateRunningExecutionStatus1677236854063
35	1677501636754	CreateVariables1677501636754
36	1679416281778	CreateExecutionMetadataTable1679416281778
37	1681134145996	AddUserActivatedProperty1681134145996
38	1681134145997	RemoveSkipOwnerSetup1681134145997
39	1690000000000	MigrateIntegerKeysToString1690000000000
40	1690000000020	SeparateExecutionData1690000000020
41	1690000000030	RemoveResetPasswordColumns1690000000030
42	1690000000030	AddMfaColumns1690000000030
43	1690787606731	AddMissingPrimaryKeyOnExecutionData1690787606731
44	1691088862123	CreateWorkflowNameIndex1691088862123
45	1692967111175	CreateWorkflowHistoryTable1692967111175
46	1693491613982	ExecutionSoftDelete1693491613982
47	1693554410387	DisallowOrphanExecutions1693554410387
48	1694091729095	MigrateToTimestampTz1694091729095
49	1695128658538	AddWorkflowMetadata1695128658538
50	1695829275184	ModifyWorkflowHistoryNodesAndConnections1695829275184
51	1700571993961	AddGlobalAdminRole1700571993961
52	1705429061930	DropRoleMapping1705429061930
53	1711018413374	RemoveFailedExecutionStatus1711018413374
54	1711390882123	MoveSshKeysToDatabase1711390882123
55	1712044305787	RemoveNodesAccess1712044305787
56	1714133768519	CreateProject1714133768519
57	1714133768521	MakeExecutionStatusNonNullable1714133768521
58	1717498465931	AddActivatedAtUserSetting1717498465931
59	1720101653148	AddConstraintToExecutionMetadata1720101653148
60	1721377157740	FixExecutionMetadataSequence1721377157740
61	1723627610222	CreateInvalidAuthTokenTable1723627610222
62	1723796243146	RefactorExecutionIndices1723796243146
63	1724753530828	CreateAnnotationTables1724753530828
64	1724951148974	AddApiKeysTable1724951148974
65	1726606152711	CreateProcessedDataTable1726606152711
66	1727427440136	SeparateExecutionCreationFromStart1727427440136
67	1728659839644	AddMissingPrimaryKeyOnAnnotationTagMapping1728659839644
68	1729607673464	UpdateProcessedDataValueColumnToText1729607673464
69	1729607673469	AddProjectIcons1729607673469
70	1730386903556	CreateTestDefinitionTable1730386903556
71	1731404028106	AddDescriptionToTestDefinition1731404028106
72	1731582748663	MigrateTestDefinitionKeyToString1731582748663
73	1732271325258	CreateTestMetricTable1732271325258
74	1732549866705	CreateTestRun1732549866705
75	1733133775640	AddMockedNodesColumnToTestDefinition1733133775640
76	1734479635324	AddManagedColumnToCredentialsTable1734479635324
77	1736172058779	AddStatsColumnsToTestRun1736172058779
78	1736947513045	CreateTestCaseExecutionTable1736947513045
79	1737715421462	AddErrorColumnsToTestRuns1737715421462
80	1738709609940	CreateFolderTable1738709609940
81	1739549398681	CreateAnalyticsTables1739549398681
82	1740445074052	UpdateParentFolderIdColumn1740445074052
83	1741167584277	RenameAnalyticsToInsights1741167584277
84	1742918400000	AddScopesColumnToApiKeys1742918400000
85	1745322634000	ClearEvaluation1745322634000
86	1745587087521	AddWorkflowStatisticsRootCount1745587087521
87	1745934666076	AddWorkflowArchivedColumn1745934666076
88	1745934666077	DropRoleTable1745934666077
89	1747824239000	AddProjectDescriptionColumn1747824239000
90	1750252139166	AddLastActiveAtColumnToUser1750252139166
91	1750252139166	AddScopeTables1750252139166
92	1750252139167	AddRolesTables1750252139167
93	1750252139168	LinkRoleToUserTable1750252139168
94	1750252139170	RemoveOldRoleColumn1750252139170
95	1752669793000	AddInputsOutputsToTestCaseExecution1752669793000
96	1753953244168	LinkRoleToProjectRelationTable1753953244168
97	1754475614601	CreateDataStoreTables1754475614601
98	1754475614602	ReplaceDataStoreTablesWithDataTables1754475614602
99	1756906557570	AddTimestampsToRoleAndRoleIndexes1756906557570
100	1758731786132	AddAudienceColumnToApiKeys1758731786132
101	1758794506893	AddProjectIdToVariableTable1758794506893
102	1759399811000	ChangeValueTypesForInsights1759399811000
103	1760019379982	CreateChatHubTables1760019379982
104	1760020000000	CreateChatHubAgentTable1760020000000
105	1760020838000	UniqueRoleNames1760020838000
106	1760116750277	CreateOAuthEntities1760116750277
107	1760314000000	CreateWorkflowDependencyTable1760314000000
108	1760965142113	DropUnusedChatHubColumns1760965142113
109	1761047826451	AddWorkflowVersionColumn1761047826451
110	1761655473000	ChangeDependencyInfoToJson1761655473000
111	1761773155024	AddAttachmentsToChatHubMessages1761773155024
112	1761830340990	AddToolsColumnToChatHubTables1761830340990
113	1762177736257	AddWorkflowDescriptionColumn1762177736257
114	1762763704614	BackfillMissingWorkflowHistoryRecords1762763704614
115	1762771264000	ChangeDefaultForIdInUserTable1762771264000
116	1762771954619	AddIsGlobalColumnToCredentialsTable1762771954619
117	1762847206508	AddWorkflowHistoryAutoSaveFields1762847206508
118	1763047800000	AddActiveVersionIdColumn1763047800000
119	1763048000000	ActivateExecuteWorkflowTriggerWorkflows1763048000000
120	1763572724000	ChangeOAuthStateColumnToUnboundedVarchar1763572724000
121	1763716655000	CreateBinaryDataTable1763716655000
122	1764167920585	CreateWorkflowPublishHistoryTable1764167920585
123	1764276827837	AddCreatorIdToProjectTable1764276827837
124	1764682447000	CreateDynamicCredentialResolverTable1764682447000
125	1764689388394	AddDynamicCredentialEntryTable1764689388394
126	1765448186933	BackfillMissingWorkflowHistoryRecords1765448186933
127	1765459448000	AddResolvableFieldsToCredentials1765459448000
128	1765788427674	AddIconToAgentTable1765788427674
129	1765804780000	ConvertAgentIdToUuid1765804780000
130	1765886667897	AddAgentIdForeignKeys1765886667897
131	1765892199653	AddWorkflowVersionIdToExecutionData1765892199653
132	1766064542000	AddWorkflowPublishScopeToProjectRoles1766064542000
133	1766068346315	AddChatMessageIndices1766068346315
134	1766500000000	ExpandInsightsWorkflowIdLength1766500000000
135	1767018516000	ChangeWorkflowStatisticsFKToNoAction1767018516000
136	1768402473068	ExpandModelColumnLength1768402473068
137	1768557000000	AddStoredAtToExecutionEntity1768557000000
138	1768901721000	AddDynamicCredentialUserEntryTable1768901721000
139	1769000000000	AddPublishedVersionIdToWorkflowDependency1769000000000
140	1769433700000	CreateSecretsProviderConnectionTables1769433700000
141	1769698710000	CreateWorkflowPublishedVersionTable1769698710000
142	1769784356000	ExpandSubjectIDColumnLength1769784356000
143	1769900001000	AddWorkflowUnpublishScopeToCustomRoles1769900001000
144	1770000000000	CreateChatHubToolsTable1770000000000
145	1770000000000	ExpandProviderIdColumnLength1770000000000
146	1770220686000	CreateWorkflowBuilderSessionTable1770220686000
147	1771417407753	AddScalingFieldsToTestRun1771417407753
148	1771500000000	MigrateExternalSecretsToEntityStorage1771500000000
149	1771500000001	AddUnshareScopeToCustomRoles1771500000001
150	1771500000002	AddFilesColumnToChatHubAgents1771500000002
151	1772000000000	AddSuggestedPromptsToAgentTable1772000000000
152	1772619247761	AddRoleColumnToProjectSecretsProviderAccess1772619247761
153	1772619247762	ChangeWorkflowPublishedVersionFKsToRestrict1772619247762
154	1772700000000	AddTypeToChatHubSessions1772700000000
155	1772800000000	CreateRoleMappingRuleTable1772800000000
156	1773000000000	CreateCredentialDependencyTable1773000000000
157	1774280963551	AddRestoreFieldsToWorkflowBuilderSession1774280963551
158	1774854660000	CreateInstanceVersionHistoryTable1774854660000
159	1775000000000	CreateInstanceAiTables1775000000000
160	1775116241000	CreateTokenExchangeJtiTable1775116241000
161	1775740765000	ChangeWorkflowPublishHistoryVersionIdToSetNull1775740765000
162	1776000000000	CreateTrustedKeyTables1776000000000
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_clients" ("id", "name", "redirectUris", "grantTypes", "clientSecret", "clientSecretExpiresAt", "tokenEndpointAuthMethod", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: oauth_access_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_access_tokens" ("token", "clientId", "userId") FROM stdin;
\.


--
-- Data for Name: oauth_authorization_codes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_authorization_codes" ("code", "clientId", "userId", "redirectUri", "codeChallenge", "codeChallengeMethod", "expiresAt", "state", "used", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: oauth_refresh_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_refresh_tokens" ("token", "clientId", "userId", "expiresAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: oauth_user_consents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_user_consents" ("id", "userId", "clientId", "grantedAt") FROM stdin;
\.


--
-- Data for Name: processed_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."processed_data" ("workflowId", "context", "createdAt", "updatedAt", "value") FROM stdin;
\.


--
-- Data for Name: project_relation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."project_relation" ("projectId", "userId", "role", "createdAt", "updatedAt") FROM stdin;
HzKRUqQS3PtmBfjw	55398dce-1d82-49fa-bf74-ad577c2d4506	project:personalOwner	2026-04-28 05:55:55.849+00	2026-04-28 05:55:55.849+00
\.


--
-- Data for Name: secrets_provider_connection; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."secrets_provider_connection" ("id", "providerKey", "type", "encryptedSettings", "isEnabled", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: project_secrets_provider_access; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."project_secrets_provider_access" ("secretsProviderConnectionId", "projectId", "createdAt", "updatedAt", "role") FROM stdin;
\.


--
-- Data for Name: role_mapping_rule; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."role_mapping_rule" ("id", "expression", "role", "type", "order", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: role_mapping_rule_project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."role_mapping_rule_project" ("roleMappingRuleId", "projectId") FROM stdin;
\.


--
-- Data for Name: scope; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."scope" ("slug", "displayName", "description") FROM stdin;
workflow:unpublish	Unpublish Workflow	Allows unpublishing workflows.
workflow:unshare	Unshare Workflow	Allows removing workflow shares.
credential:unshare	Unshare Credential	Allows removing credential shares.
aiAssistant:manage	Manage AI Usage	Allows managing AI Usage settings.
aiAssistant:*	aiAssistant:*	\N
annotationTag:create	Create Annotation Tag	Allows creating new annotation tags.
annotationTag:read	annotationTag:read	\N
annotationTag:update	annotationTag:update	\N
annotationTag:delete	annotationTag:delete	\N
annotationTag:list	annotationTag:list	\N
annotationTag:*	annotationTag:*	\N
auditLogs:manage	auditLogs:manage	\N
auditLogs:*	auditLogs:*	\N
banner:dismiss	banner:dismiss	\N
banner:*	banner:*	\N
community:register	community:register	\N
community:*	community:*	\N
communityPackage:install	communityPackage:install	\N
communityPackage:uninstall	communityPackage:uninstall	\N
communityPackage:update	communityPackage:update	\N
communityPackage:list	communityPackage:list	\N
communityPackage:manage	communityPackage:manage	\N
communityPackage:*	communityPackage:*	\N
credential:share	credential:share	\N
credential:shareGlobally	credential:shareGlobally	\N
credential:move	credential:move	\N
credential:create	credential:create	\N
credential:read	credential:read	\N
credential:update	credential:update	\N
credential:delete	credential:delete	\N
credential:list	credential:list	\N
credential:*	credential:*	\N
externalSecretsProvider:sync	externalSecretsProvider:sync	\N
externalSecretsProvider:create	externalSecretsProvider:create	\N
externalSecretsProvider:read	externalSecretsProvider:read	\N
externalSecretsProvider:update	externalSecretsProvider:update	\N
externalSecretsProvider:delete	externalSecretsProvider:delete	\N
externalSecretsProvider:list	externalSecretsProvider:list	\N
externalSecretsProvider:*	externalSecretsProvider:*	\N
externalSecret:list	externalSecret:list	\N
externalSecret:*	externalSecret:*	\N
eventBusDestination:test	eventBusDestination:test	\N
eventBusDestination:create	eventBusDestination:create	\N
eventBusDestination:read	eventBusDestination:read	\N
eventBusDestination:update	eventBusDestination:update	\N
eventBusDestination:delete	eventBusDestination:delete	\N
eventBusDestination:list	eventBusDestination:list	\N
eventBusDestination:*	eventBusDestination:*	\N
ldap:sync	ldap:sync	\N
ldap:manage	ldap:manage	\N
ldap:*	ldap:*	\N
license:manage	license:manage	\N
license:*	license:*	\N
logStreaming:manage	logStreaming:manage	\N
logStreaming:*	logStreaming:*	\N
orchestration:read	orchestration:read	\N
orchestration:list	orchestration:list	\N
orchestration:*	orchestration:*	\N
project:create	project:create	\N
project:read	project:read	\N
project:update	project:update	\N
project:delete	project:delete	\N
project:list	project:list	\N
project:*	project:*	\N
saml:manage	saml:manage	\N
saml:*	saml:*	\N
securityAudit:generate	securityAudit:generate	\N
securityAudit:*	securityAudit:*	\N
securitySettings:manage	securitySettings:manage	\N
securitySettings:*	securitySettings:*	\N
sourceControl:pull	sourceControl:pull	\N
sourceControl:push	sourceControl:push	\N
sourceControl:manage	sourceControl:manage	\N
sourceControl:*	sourceControl:*	\N
tag:create	tag:create	\N
tag:read	tag:read	\N
tag:update	tag:update	\N
tag:delete	tag:delete	\N
tag:list	tag:list	\N
tag:*	tag:*	\N
user:resetPassword	user:resetPassword	\N
user:changeRole	user:changeRole	\N
user:enforceMfa	user:enforceMfa	\N
user:generateInviteLink	user:generateInviteLink	\N
user:create	user:create	\N
user:read	user:read	\N
user:update	user:update	\N
user:delete	user:delete	\N
user:list	user:list	\N
user:*	user:*	\N
variable:create	variable:create	\N
variable:read	variable:read	\N
variable:update	variable:update	\N
variable:delete	variable:delete	\N
variable:list	variable:list	\N
variable:*	variable:*	\N
projectVariable:create	projectVariable:create	\N
projectVariable:read	projectVariable:read	\N
projectVariable:update	projectVariable:update	\N
projectVariable:delete	projectVariable:delete	\N
projectVariable:list	projectVariable:list	\N
projectVariable:*	projectVariable:*	\N
workersView:manage	workersView:manage	\N
workersView:*	workersView:*	\N
workflow:share	workflow:share	\N
workflow:execute	workflow:execute	\N
workflow:execute-chat	workflow:execute-chat	\N
workflow:move	workflow:move	\N
workflow:activate	workflow:activate	\N
workflow:deactivate	workflow:deactivate	\N
workflow:updateRedactionSetting	workflow:updateRedactionSetting	\N
workflow:create	workflow:create	\N
workflow:read	workflow:read	\N
workflow:update	workflow:update	\N
workflow:delete	workflow:delete	\N
workflow:list	workflow:list	\N
workflow:*	workflow:*	\N
folder:create	folder:create	\N
folder:read	folder:read	\N
folder:update	folder:update	\N
folder:delete	folder:delete	\N
folder:list	folder:list	\N
folder:move	folder:move	\N
folder:*	folder:*	\N
insights:list	insights:list	\N
insights:read	Read Insights	Allows reading insights data.
insights:*	insights:*	\N
oidc:manage	oidc:manage	\N
oidc:*	oidc:*	\N
provisioning:manage	provisioning:manage	\N
provisioning:*	provisioning:*	\N
dataTable:create	dataTable:create	\N
dataTable:read	dataTable:read	\N
dataTable:update	dataTable:update	\N
dataTable:delete	dataTable:delete	\N
dataTable:list	dataTable:list	\N
dataTable:readRow	dataTable:readRow	\N
dataTable:writeRow	dataTable:writeRow	\N
dataTable:listProject	dataTable:listProject	\N
dataTable:*	dataTable:*	\N
execution:delete	execution:delete	\N
execution:read	execution:read	\N
execution:retry	execution:retry	\N
execution:list	execution:list	\N
execution:get	execution:get	\N
execution:reveal	execution:reveal	\N
execution:*	execution:*	\N
workflowTags:update	workflowTags:update	\N
workflowTags:list	workflowTags:list	\N
workflowTags:*	workflowTags:*	\N
role:manage	role:manage	\N
role:*	role:*	\N
mcp:manage	mcp:manage	\N
mcp:oauth	mcp:oauth	\N
mcp:*	mcp:*	\N
mcpApiKey:create	mcpApiKey:create	\N
mcpApiKey:rotate	mcpApiKey:rotate	\N
mcpApiKey:*	mcpApiKey:*	\N
chatHub:manage	chatHub:manage	\N
chatHub:message	chatHub:message	\N
chatHub:*	chatHub:*	\N
chatHubAgent:create	chatHubAgent:create	\N
chatHubAgent:read	chatHubAgent:read	\N
chatHubAgent:update	chatHubAgent:update	\N
chatHubAgent:delete	chatHubAgent:delete	\N
chatHubAgent:list	chatHubAgent:list	\N
chatHubAgent:*	chatHubAgent:*	\N
breakingChanges:list	breakingChanges:list	\N
breakingChanges:*	breakingChanges:*	\N
apiKey:manage	apiKey:manage	\N
apiKey:*	apiKey:*	\N
credentialResolver:create	credentialResolver:create	\N
credentialResolver:read	credentialResolver:read	\N
credentialResolver:update	credentialResolver:update	\N
credentialResolver:delete	credentialResolver:delete	\N
credentialResolver:list	credentialResolver:list	\N
credentialResolver:*	credentialResolver:*	\N
instanceAi:message	instanceAi:message	\N
instanceAi:manage	instanceAi:manage	\N
instanceAi:gateway	instanceAi:gateway	\N
instanceAi:*	instanceAi:*	\N
roleMappingRule:create	roleMappingRule:create	\N
roleMappingRule:read	roleMappingRule:read	\N
roleMappingRule:update	roleMappingRule:update	\N
roleMappingRule:delete	roleMappingRule:delete	\N
roleMappingRule:list	roleMappingRule:list	\N
roleMappingRule:*	roleMappingRule:*	\N
*	*	\N
workflow:publish	Publish Workflow	Allows publishing workflows.
\.


--
-- Data for Name: role_scope; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."role_scope" ("roleSlug", "scopeSlug") FROM stdin;
global:owner	workflow:unpublish
global:owner	workflow:unshare
global:owner	credential:unshare
global:owner	aiAssistant:manage
global:owner	annotationTag:create
global:owner	annotationTag:read
global:owner	annotationTag:update
global:owner	annotationTag:delete
global:owner	annotationTag:list
global:owner	auditLogs:manage
global:owner	banner:dismiss
global:owner	community:register
global:owner	communityPackage:install
global:owner	communityPackage:uninstall
global:owner	communityPackage:update
global:owner	communityPackage:list
global:owner	credential:share
global:owner	credential:shareGlobally
global:owner	credential:move
global:owner	credential:create
global:owner	credential:read
global:owner	credential:update
global:owner	credential:delete
global:owner	credential:list
global:owner	externalSecretsProvider:sync
global:owner	externalSecretsProvider:create
global:owner	externalSecretsProvider:read
global:owner	externalSecretsProvider:update
global:owner	externalSecretsProvider:delete
global:owner	externalSecretsProvider:list
global:owner	externalSecret:list
global:owner	eventBusDestination:test
global:owner	eventBusDestination:create
global:owner	eventBusDestination:read
global:owner	eventBusDestination:update
global:owner	eventBusDestination:delete
global:owner	eventBusDestination:list
global:owner	ldap:sync
global:owner	ldap:manage
global:owner	license:manage
global:owner	logStreaming:manage
global:owner	orchestration:read
global:owner	project:create
global:owner	project:read
global:owner	project:update
global:owner	project:delete
global:owner	project:list
global:owner	saml:manage
global:owner	securityAudit:generate
global:owner	securitySettings:manage
global:owner	sourceControl:pull
global:owner	sourceControl:push
global:owner	sourceControl:manage
global:owner	tag:create
global:owner	tag:read
global:owner	tag:update
global:owner	tag:delete
global:owner	tag:list
global:owner	user:resetPassword
global:owner	user:changeRole
global:owner	user:enforceMfa
global:owner	user:generateInviteLink
global:owner	user:create
global:owner	user:read
global:owner	user:update
global:owner	user:delete
global:owner	user:list
global:owner	variable:create
global:owner	variable:read
global:owner	variable:update
global:owner	variable:delete
global:owner	variable:list
global:owner	projectVariable:create
global:owner	projectVariable:read
global:owner	projectVariable:update
global:owner	projectVariable:delete
global:owner	projectVariable:list
global:owner	workersView:manage
global:owner	workflow:share
global:owner	workflow:execute
global:owner	workflow:execute-chat
global:owner	workflow:move
global:owner	workflow:updateRedactionSetting
global:owner	workflow:create
global:owner	workflow:read
global:owner	workflow:update
global:owner	workflow:delete
global:owner	workflow:list
global:owner	folder:create
global:owner	folder:read
global:owner	folder:update
global:owner	folder:delete
global:owner	folder:list
global:owner	folder:move
global:owner	insights:list
global:owner	insights:read
global:owner	oidc:manage
global:owner	provisioning:manage
global:owner	dataTable:create
global:owner	dataTable:read
global:owner	dataTable:update
global:owner	dataTable:delete
global:owner	dataTable:list
global:owner	dataTable:readRow
global:owner	dataTable:writeRow
global:owner	dataTable:listProject
global:owner	execution:reveal
global:owner	role:manage
global:owner	mcp:manage
global:owner	mcp:oauth
global:owner	mcpApiKey:create
global:owner	mcpApiKey:rotate
global:owner	chatHub:manage
global:owner	chatHub:message
global:owner	chatHubAgent:create
global:owner	chatHubAgent:read
global:owner	chatHubAgent:update
global:owner	chatHubAgent:delete
global:owner	chatHubAgent:list
global:owner	breakingChanges:list
global:owner	apiKey:manage
global:owner	credentialResolver:create
global:owner	credentialResolver:read
global:owner	credentialResolver:update
global:owner	credentialResolver:delete
global:owner	credentialResolver:list
global:owner	instanceAi:message
global:owner	instanceAi:manage
global:owner	instanceAi:gateway
global:owner	roleMappingRule:create
global:owner	roleMappingRule:read
global:owner	roleMappingRule:update
global:owner	roleMappingRule:delete
global:owner	roleMappingRule:list
global:owner	workflow:publish
global:admin	workflow:unpublish
global:admin	workflow:unshare
global:admin	credential:unshare
global:admin	aiAssistant:manage
global:admin	annotationTag:create
global:admin	annotationTag:read
global:admin	annotationTag:update
global:admin	annotationTag:delete
global:admin	annotationTag:list
global:admin	auditLogs:manage
global:admin	banner:dismiss
global:admin	community:register
global:admin	communityPackage:install
global:admin	communityPackage:uninstall
global:admin	communityPackage:update
global:admin	communityPackage:list
global:admin	credential:share
global:admin	credential:shareGlobally
global:admin	credential:move
global:admin	credential:create
global:admin	credential:read
global:admin	credential:update
global:admin	credential:delete
global:admin	credential:list
global:admin	externalSecretsProvider:sync
global:admin	externalSecretsProvider:create
global:admin	externalSecretsProvider:read
global:admin	externalSecretsProvider:update
global:admin	externalSecretsProvider:delete
global:admin	externalSecretsProvider:list
global:admin	externalSecret:list
global:admin	eventBusDestination:test
global:admin	eventBusDestination:create
global:admin	eventBusDestination:read
global:admin	eventBusDestination:update
global:admin	eventBusDestination:delete
global:admin	eventBusDestination:list
global:admin	ldap:sync
global:admin	ldap:manage
global:admin	license:manage
global:admin	logStreaming:manage
global:admin	orchestration:read
global:admin	project:create
global:admin	project:read
global:admin	project:update
global:admin	project:delete
global:admin	project:list
global:admin	saml:manage
global:admin	securityAudit:generate
global:admin	securitySettings:manage
global:admin	sourceControl:pull
global:admin	sourceControl:push
global:admin	sourceControl:manage
global:admin	tag:create
global:admin	tag:read
global:admin	tag:update
global:admin	tag:delete
global:admin	tag:list
global:admin	user:resetPassword
global:admin	user:changeRole
global:admin	user:enforceMfa
global:admin	user:generateInviteLink
global:admin	user:create
global:admin	user:read
global:admin	user:update
global:admin	user:delete
global:admin	user:list
global:admin	variable:create
global:admin	variable:read
global:admin	variable:update
global:admin	variable:delete
global:admin	variable:list
global:admin	projectVariable:create
global:admin	projectVariable:read
global:admin	projectVariable:update
global:admin	projectVariable:delete
global:admin	projectVariable:list
global:admin	workersView:manage
global:admin	workflow:share
global:admin	workflow:execute
global:admin	workflow:execute-chat
global:admin	workflow:move
global:admin	workflow:updateRedactionSetting
global:admin	workflow:create
global:admin	workflow:read
global:admin	workflow:update
global:admin	workflow:delete
global:admin	workflow:list
global:admin	folder:create
global:admin	folder:read
global:admin	folder:update
global:admin	folder:delete
global:admin	folder:list
global:admin	folder:move
global:admin	insights:list
global:admin	insights:read
global:admin	oidc:manage
global:admin	provisioning:manage
global:admin	dataTable:create
global:admin	dataTable:read
global:admin	dataTable:update
global:admin	dataTable:delete
global:admin	dataTable:list
global:admin	dataTable:readRow
global:admin	dataTable:writeRow
global:admin	dataTable:listProject
global:admin	execution:reveal
global:admin	role:manage
global:admin	mcp:manage
global:admin	mcp:oauth
global:admin	mcpApiKey:create
global:admin	mcpApiKey:rotate
global:admin	chatHub:manage
global:admin	chatHub:message
global:admin	chatHubAgent:create
global:admin	chatHubAgent:read
global:admin	chatHubAgent:update
global:admin	chatHubAgent:delete
global:admin	chatHubAgent:list
global:admin	breakingChanges:list
global:admin	apiKey:manage
global:admin	credentialResolver:create
global:admin	credentialResolver:read
global:admin	credentialResolver:update
global:admin	credentialResolver:delete
global:admin	credentialResolver:list
global:admin	instanceAi:message
global:admin	instanceAi:manage
global:admin	instanceAi:gateway
global:admin	roleMappingRule:create
global:admin	roleMappingRule:read
global:admin	roleMappingRule:update
global:admin	roleMappingRule:delete
global:admin	roleMappingRule:list
global:admin	workflow:publish
global:member	annotationTag:create
global:member	annotationTag:read
global:member	annotationTag:update
global:member	annotationTag:delete
global:member	annotationTag:list
global:member	eventBusDestination:test
global:member	eventBusDestination:list
global:member	tag:create
global:member	tag:read
global:member	tag:update
global:member	tag:list
global:member	user:list
global:member	variable:read
global:member	variable:list
global:member	insights:read
global:member	dataTable:list
global:member	mcp:oauth
global:member	mcpApiKey:create
global:member	mcpApiKey:rotate
global:member	chatHub:message
global:member	chatHubAgent:create
global:member	chatHubAgent:read
global:member	chatHubAgent:update
global:member	chatHubAgent:delete
global:member	chatHubAgent:list
global:member	apiKey:manage
global:member	credentialResolver:list
global:member	instanceAi:message
global:member	instanceAi:gateway
global:chatUser	chatHub:message
global:chatUser	chatHubAgent:create
global:chatUser	chatHubAgent:read
global:chatUser	chatHubAgent:update
global:chatUser	chatHubAgent:delete
global:chatUser	chatHubAgent:list
project:admin	workflow:unpublish
project:admin	credential:unshare
project:admin	credential:share
project:admin	credential:move
project:admin	credential:create
project:admin	credential:read
project:admin	credential:update
project:admin	credential:delete
project:admin	credential:list
project:admin	project:read
project:admin	project:update
project:admin	project:delete
project:admin	project:list
project:admin	sourceControl:push
project:admin	projectVariable:create
project:admin	projectVariable:read
project:admin	projectVariable:update
project:admin	projectVariable:delete
project:admin	projectVariable:list
project:admin	workflow:execute
project:admin	workflow:execute-chat
project:admin	workflow:move
project:admin	workflow:updateRedactionSetting
project:admin	workflow:create
project:admin	workflow:read
project:admin	workflow:update
project:admin	workflow:delete
project:admin	workflow:list
project:admin	folder:create
project:admin	folder:read
project:admin	folder:update
project:admin	folder:delete
project:admin	folder:list
project:admin	folder:move
project:admin	dataTable:create
project:admin	dataTable:read
project:admin	dataTable:update
project:admin	dataTable:delete
project:admin	dataTable:readRow
project:admin	dataTable:writeRow
project:admin	dataTable:listProject
project:admin	execution:reveal
project:admin	workflow:publish
project:personalOwner	workflow:unpublish
project:personalOwner	workflow:unshare
project:personalOwner	credential:unshare
project:personalOwner	credential:share
project:personalOwner	credential:move
project:personalOwner	credential:create
project:personalOwner	credential:read
project:personalOwner	credential:update
project:personalOwner	credential:delete
project:personalOwner	credential:list
project:personalOwner	project:read
project:personalOwner	project:list
project:personalOwner	workflow:share
project:personalOwner	workflow:execute
project:personalOwner	workflow:execute-chat
project:personalOwner	workflow:move
project:personalOwner	workflow:updateRedactionSetting
project:personalOwner	workflow:create
project:personalOwner	workflow:read
project:personalOwner	workflow:update
project:personalOwner	workflow:delete
project:personalOwner	workflow:list
project:personalOwner	folder:create
project:personalOwner	folder:read
project:personalOwner	folder:update
project:personalOwner	folder:delete
project:personalOwner	folder:list
project:personalOwner	folder:move
project:personalOwner	dataTable:create
project:personalOwner	dataTable:read
project:personalOwner	dataTable:update
project:personalOwner	dataTable:delete
project:personalOwner	dataTable:readRow
project:personalOwner	dataTable:writeRow
project:personalOwner	dataTable:listProject
project:personalOwner	execution:reveal
project:personalOwner	workflow:publish
project:editor	workflow:unpublish
project:editor	credential:create
project:editor	credential:read
project:editor	credential:update
project:editor	credential:delete
project:editor	credential:list
project:editor	project:read
project:editor	project:list
project:editor	projectVariable:create
project:editor	projectVariable:read
project:editor	projectVariable:update
project:editor	projectVariable:delete
project:editor	projectVariable:list
project:editor	workflow:execute
project:editor	workflow:execute-chat
project:editor	workflow:create
project:editor	workflow:read
project:editor	workflow:update
project:editor	workflow:delete
project:editor	workflow:list
project:editor	folder:create
project:editor	folder:read
project:editor	folder:update
project:editor	folder:delete
project:editor	folder:list
project:editor	dataTable:create
project:editor	dataTable:read
project:editor	dataTable:update
project:editor	dataTable:delete
project:editor	dataTable:readRow
project:editor	dataTable:writeRow
project:editor	dataTable:listProject
project:editor	workflow:publish
project:viewer	credential:read
project:viewer	credential:list
project:viewer	project:read
project:viewer	project:list
project:viewer	projectVariable:read
project:viewer	projectVariable:list
project:viewer	workflow:execute-chat
project:viewer	workflow:read
project:viewer	workflow:list
project:viewer	folder:read
project:viewer	folder:list
project:viewer	dataTable:read
project:viewer	dataTable:readRow
project:viewer	dataTable:listProject
project:chatUser	workflow:execute-chat
credential:owner	credential:unshare
credential:owner	credential:share
credential:owner	credential:move
credential:owner	credential:read
credential:owner	credential:update
credential:owner	credential:delete
credential:user	credential:read
workflow:owner	workflow:unpublish
workflow:owner	workflow:unshare
workflow:owner	workflow:share
workflow:owner	workflow:execute
workflow:owner	workflow:execute-chat
workflow:owner	workflow:move
workflow:owner	workflow:read
workflow:owner	workflow:update
workflow:owner	workflow:delete
workflow:owner	workflow:publish
workflow:editor	workflow:unpublish
workflow:editor	workflow:execute
workflow:editor	workflow:execute-chat
workflow:editor	workflow:read
workflow:editor	workflow:update
workflow:editor	workflow:publish
secretsProviderConnection:owner	externalSecretsProvider:sync
secretsProviderConnection:owner	externalSecretsProvider:read
secretsProviderConnection:owner	externalSecretsProvider:update
secretsProviderConnection:owner	externalSecretsProvider:delete
secretsProviderConnection:owner	externalSecretsProvider:list
secretsProviderConnection:owner	externalSecret:list
secretsProviderConnection:user	externalSecretsProvider:read
secretsProviderConnection:user	externalSecretsProvider:list
secretsProviderConnection:user	externalSecret:list
\.


--
-- Data for Name: settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."settings" ("key", "value", "loadOnStartup") FROM stdin;
ui.banners.dismissed	["V1"]	t
features.ldap	{"loginEnabled":false,"loginLabel":"","connectionUrl":"","allowUnauthorizedCerts":false,"connectionSecurity":"none","connectionPort":389,"baseDn":"","bindingAdminDn":"","bindingAdminPassword":"","firstNameAttribute":"","lastNameAttribute":"","emailAttribute":"","loginIdAttribute":"","ldapIdAttribute":"","userFilter":"","synchronizationEnabled":false,"synchronizationInterval":60,"searchPageSize":0,"searchTimeout":60,"enforceEmailUniqueness":true}	t
userManagement.isInstanceOwnerSetUp	true	t
license.cert	eyJsaWNlbnNlS2V5IjoiLS0tLS1CRUdJTiBMSUNFTlNFIEtFWS0tLS0tXG5UTGVodjhUbHc3NkpCSTk0dks3UUpycW5nNmYzRStLMjlFcjBHSU9PbGp3dVFLOEduZVNRVmtUb2JjTExEYStOXG5UVGJBRGlYM0gxb2hGa0M0bFdPSkZNYUtJZ2lPTmltdjhncDRySGVLSTh1TE1wSEhnbHFWVzZBY0JvVDFtM3hMXG5EZFIrdk4vODZQL2hDVmhUOXJZMXJxSEVKc0djaitNVW5ISG54SUFLc0FScmtlR2d1NjFBbTZ6UDBpazMraUxUXG5rMEZmWG1VOUhhVTdibkxHaEFmWnF6TlNJUVAxYlJualhxN2tvZFhweGQ1aDlxTkIxSnlIWGNidUxZYU1pciszXG40emdreS9EMkQ4NldrczRpOG1jeGV5QXFJa3BuVkYyVGNCZTJyQjZPTVZnS2NDTk9jTWhlcHdqR1hydi9ibkhFXG4rRDdkTUhtVHl3UXpGdyt0WlBpeHp3PT18fFUyRnNkR1ZrWDE5QUdJUmJFTHFRaERpcnQrdThyWnlPUitzRlJ1XG5lZ1RLK3gxQzl0VVgvK3VSZG5saElzRGJuTGl6Qk9BU0RGYmpERUF6ZUpZOGJzdzlwMFVyWjRYOGZSNGVhTkt3XG55emJVdWxmT0dlN1paTUtYRGNsZmoreEQ0dHZFeUdoSE93ZFV6bGc5YklFZHQzdFhxRnRDY2hLVGwzOW1mcUV5XG5xWWZVUGwyM3BBaFpWamVGcFI4aTl5TUNTeWtTVVRGTGdiWjhwZmpuTFk5VFNxOFdmL3oxcWpJbm5EdlMyK082XG5vR2FjdExET25xR0xnb2cyVUo0L0oxZU9ScDJ6RjlrU09xSndpc0N5YXM3YUw5MHhzUDV0MkIxaGx5SU9Md2IyXG5kaUdENjhoRE0xcE9wM29peGs1WDBieGNhOFFsaWI0d094dEg0WlEybThIVjFMM0tWS2RFLzdkWlFFNXFlTnowXG53dUgyTjYvdGJYNStxZFVjVHF6QzR2R2VFV3V2MFJCQWgrMEdsSnc5cHdEWXpnZW9lb2RNMFhwY1RjaGVmVWRRXG5HTkVPUHoxbVlGbG1nc0crRU55WEtvOHVZTi9VZitqUUhBK2JFUGJWYVg4RTc1RjNwNlZndnNCUElZZVJQaUt1XG5mVFRUbVJabUZyK3ZzZFhFMnpQcFA1bjd4M3RnU2NKWmFiay8wNlYwU0dPamxkYkJ0b1oxV0UrLytLVDByY3lBXG5hZmJXNkJQTUcxN0s2MTF6STNEbHAzbktHd0Zpa0s2UjlDVG5tSW12a0lndlBVano5bkFRdXp5aVNEcEJJMFBlXG5tNjlEdGVNWXcxYS9CT092QWN6R3BzcHhhekx2OGdYeW5yZDR2eUs3TnpiNGwxTUU3Mjlyc0tkVi84T3Rqd0RnXG4rRzZEZkZmOVFHeDJCYXZzd0FPZE9vbnNsWGMvbzVzRGgxOXg3TWJKZTNWMGN3ZjF2Kzd4QU1KUVNUOEcxNDVTXG41ZTdObFZEeUwyeXBGcXkyRmtEN3BzZGZoR1E4WUg4ZGoxUStMYU9yT1drcEtoMXRDZmwrY1FlTEFvWEFZTGtFXG52MHhpcXR4anFEbmlVSTREamFYclpBbk44VE1pRHErZmdOdWI5aGVqWTZBNC9QTlc2MWtYK1dMeWpsNlZyOWhrXG5xYUJCeHU0aENXdk8xbnBuT0dURUt6UDNRZ29lVFVsRjVQSlVJZEhrU0FzQUVES0RaTjMvZmtFZXB5WGw0VnVnXG5SVTFlY1lGVzdvWHFHMVdJamJsY09pSHNSMEp4UXg0encwdGJPcmIxSVdUczkwV2xOSTUwWGpLVDlFZ1RsYlBrXG55SElGaUhmdGRYT3FHS0JCb25PUk4xTThVOG9VMkk2VnBQaWtlckdNdDVFVXFmTVVTY1dCSUFZeHd3bFhTNHF6XG5hQ1RrQWZZKzVscHY5cENYcXNjTHFrdllkUXhVTHErVEdFSlIyd1dURDhHOUpQS0h0YzBQTEVOY1E4anhMWXZnXG5vMVpRRkxnU2F1L2VFenJxbnk3TkMrZXRrL240ek1OV1A0Ni9UZXgxUkI1OURaaTN4dnZsbFFBaGluUjVBbk43XG5ON0xWTklaaVZjMm85YWJIS2RUV05GL3hYQnAzcmlSa1BXdVhPMHJYUldkN1pHMTNHN0ZrZ2oxRFJSUHoyaHl6XG5ITVZkV3lyNDh4MC9lMGNvWnRCVlpkTnhCWmpSZ0sxT3ltNlJwKzdUTXJDRnNWU3FDalJlVUpiK2UxRUVkeVM1XG5VdnYxeCs4NC9USTFMKzRXaEh0V3RXMWhueFc0cllRT2dCSkRPRWc5LzNPbnp2b0ZOWlhFQjJqL2t5Wkk0ZVJKXG5DS1NXS3RlQXBaMnZMTW5PZDFveERaOEtMcFZIZjVZZjJDVytMazRFZy9YdDI0dnYrZ1FOL0d6cVRWUFQwUDl3XG5vVlZCeGR5aS9LUWowdHZldFpCWnZseitqYmNPQWl6eHo4ZHJpemJ4T1F0Tzh3Ni9TSWw2OWJwRDJ0cmRNZW40XG54SkdQMkpVWFpEcFFZMmlHenVyMFcrd0dJbGwvaGp1YTQ3cGxUbkxjalRTTUhKN0JEbUFGU3lPaGJHeDcxT0lhXG54eEZrZ0JRVVMwYVBzRThwNmU2NHR0NGZrWjEvUVFLZ1RydmlSYS9ySCs1MGNsNFdROXUrd0RWOU85L3h3eGJoXG5raUJ0M3pQMjE2UEM4ZzVEMkp5R0I0SW4xYWNHeFRFTkhXa1VJOUhqV2pQclhpaFU5R01Zd0loOWRlczNDTERnXG56enBsWmJBQytIb1hGSXcvSk1XZHNsdE91QjhaQlR0aVU5Yy9yNnNWcXlVLy9wTHU0bkZkY2VpSHRTamVBbHpjXG4wTnJYdEY2L0RVaVZpdFZKcGJVL0tLWmlZTzRPR2swR0w3L2o2UzdFMjNEenA5Y0VsSnExT0hDWkhvendSTnpjXG5wUnl5M3VwWGlTei9OUmxpWTZxR0F5RmxvbTUwYW9pbUgxM1Qvb1NVY3VPdTBNVWJmUzFna3VxY0FaV3NYck1QXG5QK1hTOGRhamdKUmNWWGNLUFdFamx1c1F1RU5tRWFRT2l4TFRHMXZSSHJDTkRNVEcvQUFoZjA5NXM3UTVYTGxuXG40T2ZkZ1lhNE1HSGllUUdSNG9sdE04dlVJaE9vMXZIUXR2Z1laenk0dGYrcGNPcGxadFAxbTlZS0JGY3AwbjIvXG5ZYlpoNXVoM2h0ZytyZTB3WUhWWUM2WlhWU3kvb1J2bG9vT0xIZ0lsTzdmRU9VWkNTY21saFJ6Z254RU9zV3NoXG5yMlQvVXV5R1RPNVRFejNLMWNxbXZtT2xJYVZ5WmVMUi9YWnllZEg1b01hTktSbzgxbTRKeFZ6K1cvUW1PS0lpXG5QaVpWaXZBb3RtTlhhdkpXdFNTRWtqYk5UZlNWeTN5ZGtSZHlCb2NmeHE4MmpudyszdlNCQXVVMTBEK3M0MFhYXG5FM2FZTDhMeS80RTVoTlVHL2ZOSzN3U1pjQUR3dDI5S3ZoWk8xVVFhVXFjWHduTFJRTmNqMzZZVGpVdDFqMkRaXG5rY2I5a2p3QkcxRHV1UkJsdk1ZTExmUjBLYk4yZzMxWUN0TEpOSHp3dHpCRWE3dmc9PXx8YjBCL2FyRC95NHAzXG5rbkFRWjFLaStmbFNWU2NheW1Zc1U0MHJ0WnAvc0hCbGl1Y0J4Zmc3eENiOWxocnEwS21xUVRhU3g3d1k2L3ZmXG5PMkltbnlidnp5WkZmRFhsUVJNUlFaQ3lXeG5oUkpxSUpJOWppN2JJS2hFL0ZteC9XdEs0Smo4dWVhc3ZJUEtqXG54c2tRVndDT09sNlY0UkNIZTRwV2h1ZktUYWhjRzdOL0VvR0x3UTh4TFFkZWZ3QlFmamJaSmlvb0NwQThxYWVtXG5xWFgveHJUOUFLVHc1bDNYN3FKVFh3VTA0dExhd21zSXN6VnBpcjAyRFM4YW45RlNuMnBTcFZQc2p4bHpWTHExXG4wbTZGbm94YmlLMnlDUnlhVHdsSEZROXQzbEZzbGdESlExYklQZ1lWLysrUmVBZUpXWTVwN2R4cVUzdm1KaU0zXG4wSUFTcTFyb1lnPT1cbi0tLS0tRU5EIExJQ0VOU0UgS0VZLS0tLS0iLCJ4NTA5IjoiLS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tXG5NSUlFRERDQ0FmUUNDUUNxZzJvRFQ4MHh3akFOQmdrcWhraUc5dzBCQVFVRkFEQklNUXN3Q1FZRFZRUUdFd0pFXG5SVEVQTUEwR0ExVUVDQXdHUW1WeWJHbHVNUTh3RFFZRFZRUUhEQVpDWlhKc2FXNHhGekFWQmdOVkJBTU1EbXhwXG5ZMlZ1YzJVdWJqaHVMbWx2TUI0WERUSXlNRFl5TkRBME1UQTBNRm9YRFRJek1EWXlOREEwTVRBME1Gb3dTREVMXG5NQWtHQTFVRUJoTUNSRVV4RHpBTkJnTlZCQWdNQmtKbGNteHBiakVQTUEwR0ExVUVCd3dHUW1WeWJHbHVNUmN3XG5GUVlEVlFRRERBNXNhV05sYm5ObExtNDRiaTVwYnpDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDXG5BUW9DZ2dFQkFNQk0wNVhCNDRnNXhmbUNMd2RwVVR3QVQ4K0NCa3lMS0ZzZXprRDVLLzZXaGFYL1hyc2QvUWQwXG4yMEo3d2w1V2RIVTRjVkJtRlJqVndWemtsQ0syeVlKaThtang4c1hzR3E5UTFsYlVlTUtmVjlkc2dmdWhubEFTXG50blFaZ2x1Z09uRjJGZ1JoWGIvakswdHhUb2FvK2JORTZyNGdJRXpwa3RITEJUWXZ2aXVKbXJlZjdXYlBSdDRJXG5uZDlEN2xoeWJlYnloVjdrdXpqUUEvcFBLSFRGczhNVEhaOGhZVXhSeXJwbTMrTVl6UUQrYmpBMlUxRkljdGFVXG53UVhZV2FON3QydVR3Q3Q5ekFLc21ZL1dlT2J2bDNUWk41T05MQXp5V0dDdWxtNWN3S1IzeGJsQlp6WG5CNmdzXG5Pbk4yT0FkU3RjelRWQ3ljbThwY0ZVcnl0S1NLa0dFQ0F3RUFBVEFOQmdrcWhraUc5dzBCQVFVRkFBT0NBZ0VBXG5sSjAxd2NuMXZqWFhDSHVvaTdSMERKMWxseDErZGFmcXlFcVBBMjdKdStMWG1WVkdYUW9yUzFiOHhqVXFVa2NaXG5UQndiV0ZPNXo1ZFptTnZuYnlqYXptKzZvT2cwUE1hWXhoNlRGd3NJMlBPYmM3YkZ2MmVheXdQdC8xQ3BuYzQwXG5xVU1oZnZSeC9HQ1pQQ1d6My8yUlBKV1g5alFEU0hYQ1hxOEJXK0kvM2N1TERaeVkzZkVZQkIwcDNEdlZtYWQ2XG42V0hRYVVyaU4wL0xxeVNPcC9MWmdsbC90MDI5Z1dWdDA1WmliR29LK2NWaFpFY3NMY1VJaHJqMnVGR0ZkM0ltXG5KTGcxSktKN2pLU0JVUU9kSU1EdnNGVUY3WWRNdk11ckNZQTJzT05OOENaK0k1eFFWMUtTOWV2R0hNNWZtd2dTXG5PUEZ2UHp0RENpMC8xdVc5dE9nSHBvcnVvZGFjdCtFWk5rQVRYQ3ZaaXUydy9xdEtSSkY0VTRJVEVtNWFXMGt3XG42enVDOHh5SWt0N3ZoZHM0OFV1UlNHSDlqSnJBZW1sRWl6dEdJTGhHRHF6UUdZYmxoVVFGR01iQmI3amhlTHlDXG5MSjFXT0c2MkYxc3B4Q0tCekVXNXg2cFIxelQxbWhFZ2Q0TWtMYTZ6UFRwYWNyZDk1QWd4YUdLRUxhMVJXU0ZwXG5NdmRoR2s0TnY3aG5iOHIrQnVNUkM2aWVkUE1DelhxL001MGNOOEFnOGJ3K0oxYUZvKzBFSzJoV0phN2tpRStzXG45R3ZGalNkekNGbFVQaEtra1Vaa1NvNWFPdGNRcTdKdTZrV0JoTG9GWUtncHJscDFRVkIwc0daQTZvNkR0cWphXG5HNy9SazZ2YmFZOHdzTllLMnpCWFRUOG5laDVab1JaL1BKTFV0RUV0YzdZPVxuLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLSJ9	f
\.


--
-- Data for Name: shared_credentials; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."shared_credentials" ("credentialsId", "projectId", "role", "createdAt", "updatedAt") FROM stdin;
HlkPrQcSaMxnhuGJ	HzKRUqQS3PtmBfjw	credential:owner	2026-04-28 07:02:50.111+00	2026-04-28 07:02:50.111+00
hujESDBlnw8wuny3	HzKRUqQS3PtmBfjw	credential:owner	2026-04-28 07:02:54.651+00	2026-04-28 07:02:54.651+00
PkT8NqTrHhmg09ym	HzKRUqQS3PtmBfjw	credential:owner	2026-04-28 07:14:55.146+00	2026-04-28 07:14:55.146+00
bnBO3m2UNnfNlLXq	HzKRUqQS3PtmBfjw	credential:owner	2026-04-28 07:26:24.977+00	2026-04-28 07:26:24.977+00
\.


--
-- Data for Name: shared_workflow; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."shared_workflow" ("workflowId", "projectId", "role", "createdAt", "updatedAt") FROM stdin;
byXk9ODoQGKNzIBu	HzKRUqQS3PtmBfjw	workflow:owner	2026-04-28 06:36:33.008+00	2026-04-28 06:36:33.008+00
\.


--
-- Data for Name: test_run; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."test_run" ("id", "workflowId", "status", "errorCode", "errorDetails", "runAt", "completedAt", "metrics", "createdAt", "updatedAt", "runningInstanceId", "cancelRequested") FROM stdin;
\.


--
-- Data for Name: test_case_execution; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."test_case_execution" ("id", "testRunId", "executionId", "status", "runAt", "completedAt", "errorCode", "errorDetails", "metrics", "createdAt", "updatedAt", "inputs", "outputs") FROM stdin;
\.


--
-- Data for Name: token_exchange_jti; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."token_exchange_jti" ("jti", "expiresAt", "createdAt") FROM stdin;
\.


--
-- Data for Name: trusted_key_source; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."trusted_key_source" ("id", "type", "config", "status", "lastError", "lastRefreshedAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: trusted_key; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."trusted_key" ("sourceId", "kid", "data", "createdAt") FROM stdin;
\.


--
-- Data for Name: user_api_keys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user_api_keys" ("id", "userId", "label", "apiKey", "createdAt", "updatedAt", "scopes", "audience") FROM stdin;
\.


--
-- Data for Name: variables; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."variables" ("key", "type", "value", "id", "projectId") FROM stdin;
\.


--
-- Data for Name: webhook_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."webhook_entity" ("webhookPath", "method", "node", "webhookId", "pathLength", "workflowId") FROM stdin;
\.


--
-- Data for Name: workflow_builder_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_builder_session" ("id", "workflowId", "userId", "messages", "previousSummary", "createdAt", "updatedAt", "activeVersionCardId", "resumeAfterRestoreMessageId") FROM stdin;
\.


--
-- Data for Name: workflow_dependency; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_dependency" ("id", "workflowId", "workflowVersionId", "dependencyType", "dependencyKey", "dependencyInfo", "indexVersionId", "createdAt", "publishedVersionId") FROM stdin;
73	byXk9ODoQGKNzIBu	33	nodeType	n8n-nodes-base.manualTrigger	{"nodeId":"13210c1d-71de-4b63-9f4e-ec3d4a779b57","nodeVersion":1}	1	2026-04-28 07:33:06.51+00	\N
\.


--
-- Data for Name: workflow_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_history" ("versionId", "workflowId", "authors", "createdAt", "updatedAt", "nodes", "connections", "name", "autosaved", "description") FROM stdin;
a193c39f-617e-4e59-a2b4-35a9de91a142	byXk9ODoQGKNzIBu	Rey Mart Dulla	2026-04-28 06:36:33.008+00	2026-04-28 06:36:33.008+00	[{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"35b12142-f670-4c09-b6e1-588cf1f2fc31","name":"When clicking ‘Execute workflow’"}]	{}	\N	t	\N
d43e8543-4dfe-41c7-846c-0be7b712f124	byXk9ODoQGKNzIBu	Rey Mart Dulla	2026-04-28 06:49:19.574+00	2026-04-28 06:49:19.574+00	[{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"13210c1d-71de-4b63-9f4e-ec3d4a779b57","name":"When clicking ‘Execute workflow’"},{"parameters":{"operation":"get"},"type":"n8n-nodes-base.googleDocs","typeVersion":2,"position":[208,0],"id":"8469e24c-561f-42c9-95b2-74034bcf25a9","name":"Get a document"}]	{"When clicking ‘Execute workflow’":{"main":[[{"node":"Get a document","type":"main","index":0}]]}}	\N	t	\N
343e5377-4402-49f7-8efe-9310e7002c81	byXk9ODoQGKNzIBu	Rey Mart Dulla	2026-04-28 06:59:12.324+00	2026-04-28 06:59:12.324+00	[{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"13210c1d-71de-4b63-9f4e-ec3d4a779b57","name":"When clicking ‘Execute workflow’"},{"parameters":{"operation":"get"},"type":"n8n-nodes-base.googleDocs","typeVersion":2,"position":[208,0],"id":"a4789d9e-57f3-4e64-a48b-b82f9ff50d37","name":"Get a document"}]	{"When clicking ‘Execute workflow’":{"main":[[{"node":"Get a document","type":"main","index":0}]]}}	\N	t	\N
304de286-a101-4a04-b821-4934041644bc	byXk9ODoQGKNzIBu	Rey Mart Dulla	2026-04-28 07:02:57.896+00	2026-04-28 07:02:57.896+00	[{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"13210c1d-71de-4b63-9f4e-ec3d4a779b57","name":"When clicking ‘Execute workflow’"},{"parameters":{"operation":"get"},"type":"n8n-nodes-base.googleDocs","typeVersion":2,"position":[208,0],"id":"a4789d9e-57f3-4e64-a48b-b82f9ff50d37","name":"Get a document","credentials":{"googleDocsOAuth2Api":{"id":"HlkPrQcSaMxnhuGJ","name":"Google Docs account"}}}]	{"When clicking ‘Execute workflow’":{"main":[[{"node":"Get a document","type":"main","index":0}]]}}	\N	t	\N
54018075-8300-4202-94d3-e54fdc9babfd	byXk9ODoQGKNzIBu	Rey Mart Dulla	2026-04-28 07:03:05.178+00	2026-04-28 07:03:05.178+00	[{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"13210c1d-71de-4b63-9f4e-ec3d4a779b57","name":"When clicking ‘Execute workflow’"},{"parameters":{"operation":"get"},"type":"n8n-nodes-base.googleDocs","typeVersion":2,"position":[208,0],"id":"a4789d9e-57f3-4e64-a48b-b82f9ff50d37","name":"Get a document","credentials":{"googleDocsOAuth2Api":{"id":"hujESDBlnw8wuny3","name":"Google Docs account"}}}]	{"When clicking ‘Execute workflow’":{"main":[[{"node":"Get a document","type":"main","index":0}]]}}	\N	t	\N
cdd865b9-6bfd-421e-b2ff-e481bb3a963e	byXk9ODoQGKNzIBu	Rey Mart Dulla	2026-04-28 07:08:25.252+00	2026-04-28 07:08:25.252+00	[{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"13210c1d-71de-4b63-9f4e-ec3d4a779b57","name":"When clicking ‘Execute workflow’"},{"parameters":{"operation":"get","documentURL":"1WgqHBF4Wyqi6tOIdkC6fAumPnLO2IrzkU1lIgkIuJIE"},"type":"n8n-nodes-base.googleDocs","typeVersion":2,"position":[208,0],"id":"a4789d9e-57f3-4e64-a48b-b82f9ff50d37","name":"Get a document","credentials":{"googleDocsOAuth2Api":{"id":"hujESDBlnw8wuny3","name":"Google Docs account"}}}]	{"When clicking ‘Execute workflow’":{"main":[[{"node":"Get a document","type":"main","index":0}]]}}	\N	t	\N
3c828702-0803-4659-a885-a59e785dbfc3	byXk9ODoQGKNzIBu	Rey Mart Dulla	2026-04-28 07:09:08.395+00	2026-04-28 07:09:08.395+00	[{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"13210c1d-71de-4b63-9f4e-ec3d4a779b57","name":"When clicking ‘Execute workflow’"},{"parameters":{"operation":"get"},"type":"n8n-nodes-base.googleDocs","typeVersion":2,"position":[96,112],"id":"94f2e4db-1397-46cc-9f92-3149f73d5ba5","name":"Get a document","credentials":{"googleDocsOAuth2Api":{"id":"hujESDBlnw8wuny3","name":"Google Docs account"}}}]	{"When clicking ‘Execute workflow’":{"main":[[]]}}	\N	t	\N
a97a3fc0-0609-43b2-a6ca-ea0c91827d5b	byXk9ODoQGKNzIBu	Rey Mart Dulla	2026-04-28 07:09:38.109+00	2026-04-28 07:09:38.109+00	[{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"13210c1d-71de-4b63-9f4e-ec3d4a779b57","name":"When clicking ‘Execute workflow’"},{"parameters":{},"type":"n8n-nodes-base.googleDocs","typeVersion":2,"position":[208,0],"id":"ddc992c7-5fdc-4a69-b9d3-a3f499cd4621","name":"Create a document","credentials":{"googleDocsOAuth2Api":{"id":"hujESDBlnw8wuny3","name":"Google Docs account"}}}]	{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create a document","type":"main","index":0}]]}}	\N	t	\N
06a86012-4fa5-4e2d-8a70-976b8ed75218	byXk9ODoQGKNzIBu	Rey Mart Dulla	2026-04-28 07:10:01.616+00	2026-04-28 07:10:01.616+00	[{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"13210c1d-71de-4b63-9f4e-ec3d4a779b57","name":"When clicking ‘Execute workflow’"},{"parameters":{"operation":"get"},"type":"n8n-nodes-base.googleDocs","typeVersion":2,"position":[208,0],"id":"0caa81dd-4e9c-4743-876e-3dad5ceb8390","name":"Get a document","credentials":{"googleDocsOAuth2Api":{"id":"hujESDBlnw8wuny3","name":"Google Docs account"}}}]	{"When clicking ‘Execute workflow’":{"main":[[{"node":"Get a document","type":"main","index":0}]]}}	\N	t	\N
9e407763-6a8e-4963-9fd6-c5f6d87234ce	byXk9ODoQGKNzIBu	Rey Mart Dulla	2026-04-28 07:10:48.934+00	2026-04-28 07:10:48.934+00	[{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"13210c1d-71de-4b63-9f4e-ec3d4a779b57","name":"When clicking ‘Execute workflow’"},{"parameters":{"operation":"get","documentURL":"1WgqHBF4Wyqi6tOIdkC6fAumPnLO2IrzkU1lIgkIuJIE"},"type":"n8n-nodes-base.googleDocs","typeVersion":2,"position":[208,0],"id":"0caa81dd-4e9c-4743-876e-3dad5ceb8390","name":"Get a document","credentials":{"googleDocsOAuth2Api":{"id":"hujESDBlnw8wuny3","name":"Google Docs account"}}}]	{"When clicking ‘Execute workflow’":{"main":[[{"node":"Get a document","type":"main","index":0}]]}}	\N	t	\N
70c8cf90-1160-4d57-9ddb-9599ffb2772d	byXk9ODoQGKNzIBu	Rey Mart Dulla	2026-04-28 07:11:50.027+00	2026-04-28 07:11:50.027+00	[{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"13210c1d-71de-4b63-9f4e-ec3d4a779b57","name":"When clicking ‘Execute workflow’"},{"parameters":{"operation":"get"},"type":"n8n-nodes-base.googleDocs","typeVersion":2,"position":[208,0],"id":"a409d0f4-0792-4c6c-b7f5-d59c0c7f4656","name":"Get a document","credentials":{"googleDocsOAuth2Api":{"id":"hujESDBlnw8wuny3","name":"Google Docs account"}}}]	{"When clicking ‘Execute workflow’":{"main":[[{"node":"Get a document","type":"main","index":0}]]}}	\N	t	\N
bb87a688-6729-4bb9-b763-7dd57160c6aa	byXk9ODoQGKNzIBu	Rey Mart Dulla	2026-04-28 07:12:03.853+00	2026-04-28 07:12:03.853+00	[{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"13210c1d-71de-4b63-9f4e-ec3d4a779b57","name":"When clicking ‘Execute workflow’"},{"parameters":{"resource":"__CUSTOM_API_CALL__"},"type":"n8n-nodes-base.googleDocs","typeVersion":2,"position":[208,0],"id":"a409d0f4-0792-4c6c-b7f5-d59c0c7f4656","name":"Google Docs","credentials":{"googleDocsOAuth2Api":{"id":"hujESDBlnw8wuny3","name":"Google Docs account"}}}]	{"When clicking ‘Execute workflow’":{"main":[[{"node":"Google Docs","type":"main","index":0}]]}}	\N	t	\N
ac2a3a38-0a9c-4172-9b1a-f453bfa2b73c	byXk9ODoQGKNzIBu	Rey Mart Dulla	2026-04-28 07:12:12.135+00	2026-04-28 07:12:12.135+00	[{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"13210c1d-71de-4b63-9f4e-ec3d4a779b57","name":"When clicking ‘Execute workflow’"},{"parameters":{},"type":"n8n-nodes-base.googleDocs","typeVersion":2,"position":[208,0],"id":"a409d0f4-0792-4c6c-b7f5-d59c0c7f4656","name":"Create a document","credentials":{"googleDocsOAuth2Api":{"id":"hujESDBlnw8wuny3","name":"Google Docs account"}}}]	{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create a document","type":"main","index":0}]]}}	\N	t	\N
b089f9a4-f922-4cf1-9147-39ed78f0389d	byXk9ODoQGKNzIBu	Rey Mart Dulla	2026-04-28 07:12:36.443+00	2026-04-28 07:12:36.443+00	[{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"13210c1d-71de-4b63-9f4e-ec3d4a779b57","name":"When clicking ‘Execute workflow’"},{"parameters":{"operation":"get"},"type":"n8n-nodes-base.googleDocs","typeVersion":2,"position":[208,0],"id":"bdcd5b83-178f-42e1-bdee-76dac63ca4d6","name":"Get a document","credentials":{"googleDocsOAuth2Api":{"id":"hujESDBlnw8wuny3","name":"Google Docs account"}}}]	{"When clicking ‘Execute workflow’":{"main":[[{"node":"Get a document","type":"main","index":0}]]}}	\N	t	\N
ce44a258-500a-4679-b3df-7119198691ba	byXk9ODoQGKNzIBu	Rey Mart Dulla	2026-04-28 07:15:02.141+00	2026-04-28 07:15:02.141+00	[{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"13210c1d-71de-4b63-9f4e-ec3d4a779b57","name":"When clicking ‘Execute workflow’"},{"parameters":{"operation":"get"},"type":"n8n-nodes-base.googleDocs","typeVersion":2,"position":[208,0],"id":"bdcd5b83-178f-42e1-bdee-76dac63ca4d6","name":"Get a document","credentials":{"googleDocsOAuth2Api":{"id":"PkT8NqTrHhmg09ym","name":"Google Docs account 3"}}}]	{"When clicking ‘Execute workflow’":{"main":[[{"node":"Get a document","type":"main","index":0}]]}}	\N	t	\N
564ca119-75ec-42ce-98a4-695f34ac5a23	byXk9ODoQGKNzIBu	Rey Mart Dulla	2026-04-28 07:23:08.306+00	2026-04-28 07:23:08.306+00	[{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"13210c1d-71de-4b63-9f4e-ec3d4a779b57","name":"When clicking ‘Execute workflow’"},{"parameters":{},"type":"n8n-nodes-base.googleDocs","typeVersion":2,"position":[208,0],"id":"2506f6f6-cb33-4d50-9939-17f596873e09","name":"Create a document","credentials":{"googleDocsOAuth2Api":{"id":"PkT8NqTrHhmg09ym","name":"Google Docs account 3"}}}]	{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create a document","type":"main","index":0}]]}}	\N	t	\N
792f8aba-c1c0-4abd-99e9-b9059475dc09	byXk9ODoQGKNzIBu	Rey Mart Dulla	2026-04-28 07:25:34.44+00	2026-04-28 07:25:34.44+00	[{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"13210c1d-71de-4b63-9f4e-ec3d4a779b57","name":"When clicking ‘Execute workflow’"},{"parameters":{"operation":"get"},"type":"n8n-nodes-base.googleDocs","typeVersion":2,"position":[208,0],"id":"0f60466b-c4d4-43f3-bb0c-0fbb04f9cb7c","name":"Get a document","credentials":{"googleDocsOAuth2Api":{"id":"PkT8NqTrHhmg09ym","name":"Google Docs account 3"}}}]	{"When clicking ‘Execute workflow’":{"main":[[{"node":"Get a document","type":"main","index":0}]]}}	\N	t	\N
7f8d7fa3-9ca8-4e5a-b5f4-549020b4da98	byXk9ODoQGKNzIBu	Rey Mart Dulla	2026-04-28 07:26:31.016+00	2026-04-28 07:26:31.016+00	[{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"13210c1d-71de-4b63-9f4e-ec3d4a779b57","name":"When clicking ‘Execute workflow’"},{"parameters":{"operation":"get"},"type":"n8n-nodes-base.googleDocs","typeVersion":2,"position":[208,0],"id":"0f60466b-c4d4-43f3-bb0c-0fbb04f9cb7c","name":"Get a document","credentials":{"googleDocsOAuth2Api":{"id":"bnBO3m2UNnfNlLXq","name":"Google Docs account 4"}}}]	{"When clicking ‘Execute workflow’":{"main":[[{"node":"Get a document","type":"main","index":0}]]}}	\N	t	\N
3556c943-9556-457d-8ac2-4918679ea0dc	byXk9ODoQGKNzIBu	Rey Mart Dulla	2026-04-28 07:32:37.085+00	2026-04-28 07:32:37.085+00	[{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"13210c1d-71de-4b63-9f4e-ec3d4a779b57","name":"When clicking ‘Execute workflow’"},{"parameters":{"operation":"get","documentURL":"1WgqHBF4Wyqi6tOIdkC6fAumPnLO2IrzkU1lIgkIuJIE"},"type":"n8n-nodes-base.googleDocs","typeVersion":2,"position":[208,0],"id":"0f60466b-c4d4-43f3-bb0c-0fbb04f9cb7c","name":"Get a document","credentials":{"googleDocsOAuth2Api":{"id":"bnBO3m2UNnfNlLXq","name":"Google Docs account 4"}}}]	{"When clicking ‘Execute workflow’":{"main":[[{"node":"Get a document","type":"main","index":0}]]}}	\N	t	\N
83cdae55-d932-45d3-9329-10b957e09d0b	byXk9ODoQGKNzIBu	Rey Mart Dulla	2026-04-28 07:33:04.203+00	2026-04-28 07:33:04.203+00	[{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"13210c1d-71de-4b63-9f4e-ec3d4a779b57","name":"When clicking ‘Execute workflow’"}]	{"When clicking ‘Execute workflow’":{"main":[[]]}}	\N	t	\N
\.


--
-- Data for Name: workflow_publish_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_publish_history" ("id", "workflowId", "versionId", "event", "userId", "createdAt") FROM stdin;
\.


--
-- Data for Name: workflow_published_version; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_published_version" ("workflowId", "publishedVersionId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: workflow_statistics; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_statistics" ("count", "latestEvent", "name", "workflowId", "rootCount", "id", "workflowName") FROM stdin;
3	2026-04-28 07:32:51.776+00	manual_error	byXk9ODoQGKNzIBu	0	1	My workflow
\.


--
-- Data for Name: workflows_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflows_tags" ("workflowId", "tagId") FROM stdin;
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id", "type") FROM stdin;
\.


--
-- Data for Name: buckets_analytics; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_analytics" ("name", "type", "format", "created_at", "updated_at", "id", "deleted_at") FROM stdin;
\.


--
-- Data for Name: buckets_vectors; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_vectors" ("id", "type", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads" ("id", "in_progress_size", "upload_signature", "bucket_id", "key", "version", "owner_id", "created_at", "user_metadata", "metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads_parts" ("id", "upload_id", "size", "part_number", "bucket_id", "key", "etag", "owner_id", "version", "created_at") FROM stdin;
\.


--
-- Data for Name: vector_indexes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."vector_indexes" ("id", "name", "bucket_id", "data_type", "dimension", "distance_metric", "metadata_configuration", "created_at", "updated_at") FROM stdin;
\.


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1, false);


--
-- Name: auth_provider_sync_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."auth_provider_sync_history_id_seq"', 1, false);


--
-- Name: credential_dependency_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."credential_dependency_id_seq"', 1, false);


--
-- Name: execution_annotations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."execution_annotations_id_seq"', 1, false);


--
-- Name: execution_entity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."execution_entity_id_seq"', 3, true);


--
-- Name: execution_metadata_temp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."execution_metadata_temp_id_seq"', 1, false);


--
-- Name: insights_by_period_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."insights_by_period_id_seq"', 1, false);


--
-- Name: insights_metadata_metaId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."insights_metadata_metaId_seq"', 1, false);


--
-- Name: insights_raw_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."insights_raw_id_seq"', 1, false);


--
-- Name: instance_version_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."instance_version_history_id_seq"', 1, true);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."migrations_id_seq"', 162, true);


--
-- Name: oauth_user_consents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."oauth_user_consents_id_seq"', 1, false);


--
-- Name: secrets_provider_connection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."secrets_provider_connection_id_seq"', 1, false);


--
-- Name: workflow_dependency_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."workflow_dependency_id_seq"', 73, true);


--
-- Name: workflow_publish_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."workflow_publish_history_id_seq"', 1, false);


--
-- Name: workflow_statistics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."workflow_statistics_id_seq"', 3, true);


--
-- PostgreSQL database dump complete
--

-- \unrestrict LNlbHZGzXrZUXCgT6bh7np6pIWIdCXlc9EouUR6q6uQcv3jrKwOtj0jT0HVEoMK

RESET ALL;
