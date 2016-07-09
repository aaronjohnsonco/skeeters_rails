json.array!(@events) do |event|
  json.extract! event, :id, :title, :description
  json.start event.start_date
  if event.end_date.present?
  	json.end event.end_date + 1
  end
  json.url event_url(event, format: :html)
end
