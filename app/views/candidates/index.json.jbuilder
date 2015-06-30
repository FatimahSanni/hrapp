json.array!(@candidates) do |candidate|
  json.extract! candidate, :id, :name, :email, :phone, :comment
  json.url candidate_url(candidate, format: :json)
end
