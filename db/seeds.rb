30.times do
  user = User.create(username: Faker::Internet.user_name)

  rand(1..7).times do
    Twit.create!(body: Faker::Hipster.paragraph,
    user_id: user.id)

  end
end
