json.array!(@interviews) do |interview|
  json.extract! interview, :id, :interviewer, :position
  json.url interview_url(interview, format: :json)
end
