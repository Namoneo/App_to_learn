# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
Word.delete_all

user1 = User.create(email: "info@learn.com", password: "secret")

Word.create(name: "to read", translation: "lezen", know: true, active: true, user: user1)
Word.create(name: "to love", translation: "translation", know: true, active: true, user: user1)
Word.create(name: "to learn", translation: "translation", know: true, active: true, user: user1)
Word.create(name: "to stand", translation: "translation", know: true, active: true, user: user1)
Word.create(name: "to like", translation: "translation", know: true, active: true, user: user1)
Word.create(name: "to eat", translation: "translation", know: true, active: true, user: user1)
Word.create(name: "to go", translation: "translation", know: true, active: true, user: user1)
Word.create(name: "to work", translation: "translation", know: true, active: true, user: user1)
