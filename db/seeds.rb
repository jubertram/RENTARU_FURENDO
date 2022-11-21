# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Partner.destroy_all
User.destroy_all

user_1 = User.create!(first_name: "Historia", last_name: "Reiss", email: "historia.reiss@gmail.com", password: "*********")
user_2 = User.create!(first_name: "Monkey", last_name: "D. Luffy", email: "monkey.d@gmail.com", password: "********")
user_3 = User.create!(first_name: "Gojo", last_name: "Satoru", email: "gojo.satoru@gmail.com", password: "********")
user_4 = User.create!(first_name: "Ransie", last_name: "Lupescu", email: "r.lupescu@gmail.com", password: "***********")
user_5 = User.create!(first_name: "Suiren", last_name: "Shibazeki", email: "suiren.s@gmail.com", password: "*****************")

Partner.create!(first_name: "Historia", last_name: "Reiss", gender: "Female", address: "Wall Sina", temperament: "Shy", interest: "Sport", age: 20, user_id: user_1.id)
Partner.create!(first_name: "Monkey", last_name: "D. Luffy", gender: "Male", address: "Foosha Village", temperament: "Extrovert", interest: "Traveling", age: 22, user_id: user_2.id)
Partner.create!(first_name: "Gojo", last_name: "Satoru", gender: "Male", address: "Tokyo", temperament: "Extrovert", interest: "Reading", age: 28, user_id: user_3.id)
Partner.create!(first_name: "Ransie", last_name: "Lupescu", gender: "Female", address: "Brasov, Romania", temperament: "Extrovert", interest: "Music", age: 25, user_id: user_4.id)
Partner.create!(first_name: "Suiren", last_name: "Shibazeki", gender: "Female", address: "Shuusei High School", temperament: "Shy", interest: "Reading", age: 19, user_id: user_5.id)
