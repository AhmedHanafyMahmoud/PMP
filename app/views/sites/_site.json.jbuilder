json.extract! site, :id, :name, :address, :displayNumber, :description, :created_at, :updated_at
json.url site_url(site, format: :json)
