json.array!(@events) do |event|
  json.extract! event, :id, :title, :star_date, :end_date, :location, :agenda, :address, :organizer_id, :created_at, :time, :updated_at, :time
  json.url event_url(event, format: :json)
end
