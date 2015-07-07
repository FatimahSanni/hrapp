json.array!(@company_assets) do |company_asset|
  json.extract! company_asset, :id, :name, :staff_id
  json.url company_asset_url(company_asset, format: :json)
end
