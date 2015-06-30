json.array!(@people) do |person|
  json.extract! person, :id, :name, :position, :phone, :email, :comment, :resume
  json.url person_url(person, format: :json)
end
