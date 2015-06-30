json.array!(@interview_reports) do |interview_report|
  json.extract! interview_report, :id, :name, :education, :work, :job_knowledge, :communication, :initiative, :enthusiasm, :company_knowledge, :note
  json.url interview_report_url(interview_report, format: :json)
end
