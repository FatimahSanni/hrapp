json.array!(@leave_rules) do |leave_rule|
  json.extract! leave_rule, :id, :job_category_id, :days, :employment_type_id
  json.url leave_rule_url(leave_rule, format: :json)
end
