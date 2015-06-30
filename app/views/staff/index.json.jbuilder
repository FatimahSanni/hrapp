json.array!(@staff) do |staff|
  json.extract! staff, :id, :name, :dob, :gender, :emergency_phone, :emergency_name, :emergency_address
  json.url staff_url(staff, format: :json)
end
