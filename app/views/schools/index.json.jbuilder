json.array!(@schools) do |school|
  json.extract! school, :id, :name, :state
  json.url school_url(school, format: :json)
end
