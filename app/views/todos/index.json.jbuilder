json.array!(@todos) do |todo|
  json.extract! todo, :id, :task, :onboarding_id
  json.url todo_url(todo, format: :json)
end
