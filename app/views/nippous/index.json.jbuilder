json.array!(@nippous) do |nippou|
  json.extract! nippou, :content, :user_id
  json.url nippou_url(nippou, format: :json)
end