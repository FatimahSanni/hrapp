json.array!(@leave_types) do |leave_type|
  json.extract! leave_type, :id, :name, :number_of_days
  json.url leave_type_url(leave_type, format: :json)
end
