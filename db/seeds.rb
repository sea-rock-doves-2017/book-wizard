# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

75.times do
  User.create(username: Faker::Internet.user_name, email: Faker::Internet.safe_email, password: Faker::Internet.password)
end

20.times do
  Genre.create(type: Faker::Book.genre)
end

50.times do
  Book.create(title: Faker::Book.title, author: Faker::Book.author, synopsis: Faker::HarryPotter.quote, genre_id: Genre.all.sample.id)
end

100.times do
  Review.create(body: Faker::Friends.quote, user_id: User.all.sample.id, book_id: Book.all.sample.id)
end
