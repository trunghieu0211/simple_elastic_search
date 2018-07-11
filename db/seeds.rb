30.times do |n|
  User.create!(name: FFaker::NameVN.name,
    email: "email#{n + 1}@gmail.com",
    password: "123456")
end

20.times do |n|
  Post.create!(title: FFaker::Lorem.paragraph[0..15],
    description: FFaker::Lorem.paragraph[0..1000],
    user_id: rand(1..30)) 
end