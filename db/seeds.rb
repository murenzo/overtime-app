user = User.create(email: 'test@test.com', password: 'password123', password_confirmation: 'password123', first_name: 'test', last_name: 'account')

AdminUser.create(email: 'azeez@test.com', password: 'password123', password_confirmation: 'password123', first_name: 'azeez', last_name: 'banjoko')

puts '1 admin user created'

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: user.id)
end

puts '100 Posts have been created'