json.array!(@boards) do |board|
  json.extract! board, :id, :board_name, :board_description
  json.url board_url(board, format: :json)
end
