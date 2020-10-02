# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(username: 'Umarbin Siddiki')
user2 = User.create(username: 'Nikolay Shatalov')

question1 = Question.create(text: 'Can I have 130k salary please?')
question2 = Question.create(text: 'I want to get 150k, can I?')