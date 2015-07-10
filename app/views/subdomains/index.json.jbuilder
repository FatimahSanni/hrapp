json.array!(@subdomains) do |subdomain|
  json.extract! subdomain, :id, :name
  json.url subdomain_url(subdomain, format: :json)
end
