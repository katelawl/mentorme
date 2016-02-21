json.array!(@mentee_profiles) do |mentee_profile|
  json.extract! mentee_profile, :id
  json.url mentee_profile_url(mentee_profile, format: :json)
end
