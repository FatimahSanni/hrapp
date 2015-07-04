json.array!(@leaves) do |leave|
  json.extract! leave, :id, :leave_type_id, :staff_id, :from, :to, :comment
  json.url leave_url(leave, format: :json)
end
