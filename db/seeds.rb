# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
	user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.free_email)
end

20.times do 
	link = Link.create(title: Faker::GameOfThrones.house, url: Faker::Internet.url, user_id: rand(1..10))
end

30.times do
	comment = Comment.create(content: Faker::GameOfThrones.quote, user_id: rand(1..10), link_id: rand(1..20))
end

20.times do
	comment_of_comment = CommentOfComment.create(content: Faker::GameOfThrones.character, user_id: rand(1..10), comment_id: rand(1..30))
end	