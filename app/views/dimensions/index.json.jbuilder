json.array!(@dimensions) do |dimension|
  json.extract! dimension, :id, :length, :width, :thickness, :board_id, :volume
  json.url dimension_url(dimension, format: :json)
end
