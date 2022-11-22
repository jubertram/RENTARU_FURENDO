# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Partner.destroy_all
User.destroy_all
Appointment.destroy_all
require "open-uri"

user_1 = User.create!(first_name: "Historia", last_name: "Reiss", email: "historia.reiss@gmail.com", password: "*********")
user_2 = User.create!(first_name: "Monkey", last_name: "D. Luffy", email: "monkey.d@gmail.com", password: "********")
user_3 = User.create!(first_name: "Gojo", last_name: "Satoru", email: "gojo.satoru@gmail.com", password: "********")
user_4 = User.create!(first_name: "Ransie", last_name: "Lupescu", email: "r.lupescu@gmail.com", password: "***********")
user_5 = User.create!(first_name: "Suiren", last_name: "Shibazeki", email: "suiren.s@gmail.com", password: "*****************")

file1 = URI.open("https://res.cloudinary.com/ddz8gswxn/image/upload/v1669117785/Partners/image_2_gpmxpo.jpg")
partner = Partner.new(first_name: "Historia", last_name: "Reiss", gender: "Female", address: "Wall Sina", temperament: "Shy", interest: "Sport", age: 20, user_id: user_1.id)
partner.photo_url.attach(io: file1, filename: "photo1.png", content_type: "image/png")
partner.save

file2 = URI.open("https://res.cloudinary.com/ddz8gswxn/image/upload/v1669117784/Partners/image_lujvw9.jpg")
partner1 = Partner.new(first_name: "Monkey", last_name: "D. Luffy", gender: "Male", address: "Foosha Village", temperament: "Extrovert", interest: "Traveling", age: 22, user_id: user_2.id)
partner1.photo_url.attach(io: file2, filename: "photo1.png", content_type: "image/png")
partner1.save

file3 = URI.open("https://res.cloudinary.com/ddz8gswxn/image/upload/v1669117782/Partners/image_4_hwxlti.jpg")
partner2 = Partner.new(first_name: "Gojo", last_name: "Satoru", gender: "Male", address: "Tokyo", temperament: "Extrovert", interest: "Reading", age: 28, user_id: user_3.id)
partner2.photo_url.attach(io: file3, filename: "photo1.png", content_type: "image/png")
partner2.save

file4 = URI.open("https://res.cloudinary.com/ddz8gswxn/image/upload/v1669117783/Partners/image_5_mw1djo.jpg")
partner3 = Partner.new(first_name: "Ransie", last_name: "Lupescu", gender: "Female", address: "Brasov, Romania", temperament: "Extrovert", interest: "Music", age: 25, user_id: user_4.id)
partner3.photo_url.attach(io: file4, filename: "photo1.png", content_type: "image/png")
partner3.save

file5 = URI.open("https://res.cloudinary.com/ddz8gswxn/image/upload/v1669117779/Partners/image_3_daj8nv.jpg")
partner4 = Partner.new(first_name: "Suiren", last_name: "Shibazeki", gender: "Female", address: "Shuusei High School", temperament: "Shy", interest: "Reading", age: 19, user_id: user_5.id)
partner4.photo_url.attach(io: file5, filename: "photo1.png", content_type: "image/png")
partner4.save
