json.array!(@friday_13ths) do |friday_13th|
  json.extract! friday_13th, :id, :name, :superstition
  json.url friday_13th_url(friday_13th, format: :json)
end
