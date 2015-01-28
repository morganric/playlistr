json.array!(@tracks) do |track|
  json.extract! track, :id, :song, :artist, :audio, :playlist_id
  json.url track_url(track, format: :json)
end
