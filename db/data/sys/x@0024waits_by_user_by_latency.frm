TYPE=VIEW
query=select if(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null,\'background\',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where `performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` <> \'idle\' and `performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is not null and `performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` > 0 order by if(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null,\'background\',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc
md5=c1f2d1207467817a5938ea4cd03c4e55
updatable=1
algorithm=1
definer_user=mariadb.sys
definer_host=localhost
suid=0
with_check_option=0
timestamp=2021-09-28 11:11:16
create-version=2
source=SELECT IF(user IS NULL, \'background\', user) AS user,\n       event_name AS event,\n       count_star AS total,\n       sum_timer_wait AS total_latency,\n       avg_timer_wait AS avg_latency,\n       max_timer_wait AS max_latency\n  FROM performance_schema.events_waits_summary_by_user_by_event_name\n WHERE event_name != \'idle\'\n   AND user IS NOT NULL\n   AND sum_timer_wait > 0\n ORDER BY user, sum_timer_wait DESC;
client_cs_name=utf8mb3
connection_cl_name=utf8mb3_general_ci
view_body_utf8=select if(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null,\'background\',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where `performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` <> \'idle\' and `performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is not null and `performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` > 0 order by if(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null,\'background\',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc
mariadb-version=100604
