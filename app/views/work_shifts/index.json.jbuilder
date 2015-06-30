json.array!(@work_shifts) do |work_shift|
  json.extract! work_shift, :id, :name, :from, :to
  json.url work_shift_url(work_shift, format: :json)
end
