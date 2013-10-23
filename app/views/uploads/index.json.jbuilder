json.array!(@uploads) do |upload|
  json.extract! upload, 
  json.url upload_url(upload, format: :json)
end
