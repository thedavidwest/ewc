json.array!(@wearables) do |wearable|
  json.extract! wearable, :id, :description
  json.url wearable_url(wearable, format: :json)
end
