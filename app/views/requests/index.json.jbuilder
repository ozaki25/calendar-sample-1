json.array!(@requests) do |request|
  json.extract! request, :id, :date, :name, :department, :status, :controller, :division, :block
  json.url request_url(request, format: :json)
end
