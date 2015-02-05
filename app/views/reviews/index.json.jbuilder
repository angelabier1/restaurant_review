json.array!(@reviews) do |review|
  json.extract! review, :id, :user_name, :body, :restaurant_id
  json.url review_url(review, format: :json)
end
