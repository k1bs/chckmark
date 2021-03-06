# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Note.destroy_all

k1bs = User.create(username: 'k1bs', email: 'test@test.com', password: 'password', name: 'k1bs')
test2 = User.create(username: 'test2', email: 'test2@test.com', password: 'password', name: 'other user')

Note.create!(user: k1bs, text: 'This is my first note!!')
Note.create!(user: k1bs, text: 'This is my _second_ note!!!')

Note.create!(user: test2, text: 'This is test2 first note!')
Note.create!(user: test2, text: '# And again!!')

puts "#{Note.count} notes created!"
