json.extract! request, :id, :location, :complain, :open, :closed, :cancelled, :Date, :created_at, :updated_at
json.url request_url(request, format: :json)
