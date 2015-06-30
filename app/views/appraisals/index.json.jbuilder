json.array!(@appraisals) do |appraisal|
  json.extract! appraisal, :id, :staff_id, :from, :to, :appraisal_type, :job_knowledge, :quality_of_work, :productivity, :dependability, :attendance, :relation_with_others, :commitment_with_safety, :supervisory_ability, :overall, :comment
  json.url appraisal_url(appraisal, format: :json)
end
