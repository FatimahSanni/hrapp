json.array!(@announcements) do |announcement|
  json.extract! announcement, :id, :topic, :information
  json.url announcement_url(announcement, format: :json)
end
