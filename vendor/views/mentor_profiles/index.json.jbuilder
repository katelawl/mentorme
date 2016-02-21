json.array!(@mentor_profiles) do |mentor_profile|
  json.extract! mentor_profile, :id
  json.url mentor_profile_url(mentor_profile, format: :json)
end
