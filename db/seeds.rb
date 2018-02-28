# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# create an user
User.destroy_all
user = User.create(
     email: "user@example.com",
  password: "secret"
)
puts %{
  create an user:
     email: "user@example.com"
  password: "secret"
}

# Create 10 courses
Course.destroy_all
10.times do |i|
  Course.create!(
          title: "#{i}_#{Faker::Lorem.word}",
    description: Faker::Lorem.paragraph,
        user_id: user.id
  )
end
puts "Create 10 courses!"
