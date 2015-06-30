json.array!(@disciplinary_actions) do |disciplinary_action|
  json.extract! disciplinary_action, :id, :name
  json.url disciplinary_action_url(disciplinary_action, format: :json)
end
