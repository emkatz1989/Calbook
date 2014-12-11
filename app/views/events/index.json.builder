json.array!(@events) do |event|
	json.extract! event, :calendar_id, :day_id, :event_id, :title, :text
	json.start event.start_time
	json.end event.end_time
	json.url event_url(event, format: :html)






