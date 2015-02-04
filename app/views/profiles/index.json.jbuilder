json.array!(@profiles) do |profile|
  json.extract! profile, :id, :display_name, :user_id, :bio, :dob, :image, :twitter
  json.url profile_url(profile, format: :json)
end
