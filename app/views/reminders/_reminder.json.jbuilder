json.extract! reminder, :id, :event_id, :remind_at, :message, :created_at, :updated_at
json.url reminder_url(reminder, format: :json)
