json.array!(@playlists) do |playlist|
  json.extract! playlist, :id, :title, :description, :audio, :image, :published
  json.url playlist_url(playlist, format: :json)
end
