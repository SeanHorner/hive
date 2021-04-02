--     CLICKSTREAM     --

CREATE TABLE clickstream_data
(referrer String, request String, link_type String, number int)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n';

CREATE TABLE clicked_in
(page_title String, total_traffic int);

CREATE TABLE internal_links
(page_title String, total_int_links int);

CREATE TABLE link_percents
(page_title String, internal_links int, total_traffic int, percentage decimal(10,2))


--     PAGEVIEWS       --

CREATE TABLE pageviews_data
(domain_code String, page_title String, count_views int, total_response_size int)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ' '
LINES TERMINATED BY '\n';

CREATE TABLE pageviews_au
(page_title String, views_count int, hour int, viewer_fraction decimal(10,4));

CREATE TABLE pageviews_uk
(page_title String, views_count int, hour int, viewer_fraction decimal(10,4));

CREATE TABLE pageviews_us
(page_title String, views_count int, hour int, viewer_fraction decimal(10,4));

CREATE TABLE pageviews_comparison
(page_title String, us_views int, uk_views int, au_views int);

CREATE TABLE pageviews_totals
(page_title String, total_views);


--     REVISION HISTORY    --

CREATE TABLE revisions 
( wiki_db String, 
  event_entity String, 
  event_type String, 
  event_timestamp String, 
  event_comment String,
  event_user_id bigint,
  event_user_text_historical String,
  event_user_text String,
  event_user_blocks_historical String,
  event_user_blocks Array<String>,
  event_user_groups_historical Array<String>,
  event_user_groups Array<String>,
  event_user_is_bot_by_historical Array<String>, 
  event_user_is_bot_by Array<String>,
  event_user_is_created_by_self boolean,
  event_user_is_created_by_system boolean,
  event_user_is_created_by_peer boolean,
  event_user_is_anonymous boolean,
  event_user_registration_timestamp String,
  event_user_creation_timestamp String,
  event_user_first_edit_timestamp String,
  event_user_revision_count bigint,
  event_user_seconds_since_previous_revision bigint,
  page_id bigint,
  page_title_historical String, 
  page_title String,
  page_namespace_historical int,
  page_namespace_is_content_historical boolean,
  page_namespace int,
  page_namespace_is_content boolean,
  page_is_redirect boolean,
  page_is_deleted boolean,
  page_creation_timestamp String,
  page_first_edit_timestamp String,
  page_revision_count bigint,
  page_seconds_since_previous_revision bigint,
  user_id bigint,
  user_text_historical String,
  user_text String,
  user_blocks_historical Array<String>,
  user_blocks Array<String>,
  user_groups_historical Array<String>,
  user_groups Array<String>,
  user_is_bot_by_historical Array<String>,
  user_is_bot_by Array<String>,
  user_is_created_by_self boolean,
  user_is_created_by_system boolean,
  user_is_created_by_peer boolean,
  user_is_anonymous boolean,
  user_registration_timestamp String,
  user_creation_timestamp String,
  user_first_edit_timestamp String,
  revision_id bigint,
  revision_parent_id bigint,
  revision_minor_edit boolean,
  revision_deleted_parts Array<String>,
  revision_deleted_parts_are_suppressed boolean,
  revision_text_bytes bigint,
  revision_text_bytes_diff bigint,
  revision_text_sha1 String,
  revision_content_model String,
  revision_content_format String,
  revision_is_deleted_by_page_deletion boolean,
  revision_deleted_by_page_deletion_timestamp String,
  revision_is_identity_reverted boolean,
  revision_first_identity_reverting_revision_id bigint,
  revision_seconds_to_identity_revert bigint,
  revision_is_identity_revert boolean,
  revision_is_from_before_page_creation boolean,
  revision_tags Array<String>)
ROW FORMAT DELIMITED 
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n';

CREATE TABLE vandalism
(page_title String, revert_time_sec bigint, revert_time_min bigint);