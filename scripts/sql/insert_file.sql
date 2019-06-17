INSERT INTO PUSH_EVENTS(
		commit_count,
		branch_name
)
	SELECT json_data
	json_data -> commit_count,
	json_data -> branch_name
	FROM event_raw
	WHERE json_data
	type -> "PUSH_EVENTS"
