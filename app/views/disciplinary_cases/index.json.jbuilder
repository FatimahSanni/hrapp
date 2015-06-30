json.array!(@disciplinary_cases) do |disciplinary_case|
  json.extract! disciplinary_case, :id, :staff_id, :reason, :report
  json.url disciplinary_case_url(disciplinary_case, format: :json)
end
