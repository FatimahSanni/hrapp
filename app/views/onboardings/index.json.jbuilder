json.array!(@onboardings) do |onboarding|
  json.extract! onboarding, :id, :staff_id
  json.url onboarding_url(onboarding, format: :json)
end
