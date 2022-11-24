# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Appointment.destroy_all
Partner.destroy_all
User.destroy_all

require "open-uri"

user_1 = User.create!(first_name: "Rodrigo", last_name: "Gómez", email: "rodr.gom@gmail.com", password: "*********")
user_2 = User.create!(first_name: "María", last_name: "Martínez", email: "m.m@gmail.com", password: "********")
user_3 = User.create!(first_name: "Dulce", last_name: "Hernández", email: "dulce.hernandez@gmail.com", password: "********")
user_4 = User.create!(first_name: "Thiago", last_name: "Sánchez", email: "thiago_s@gmail.com", password: "***********")
user_5 = User.create!(first_name: "Juan Carlos", last_name: "González", email: "suiren.s@gmail.com", password: "*****************")
user_6 = User.create!(first_name: "Julien", last_name: "Bertram", email: "lewagon@test.com", password: "password")
user_7 = User.create!(first_name: "Axel", last_name: "Logan", email: "axel@logan.com", password: "coucou")
user_8 = User.create!(first_name: "Martina", last_name: "Trotta", email: "martina@gmail.com", password: "martina")
user_9 = User.create!(first_name: "Gabriel", last_name: "Sanchez", email: "cannes@gmail.com", password: "password")
user_10 = User.create!(first_name: "Juan David", last_name: "Ortiz", email: "jdo@gmail.com", password: "*********")
user_11 = User.create!(first_name: "Luciana", last_name: "Quintero", email: "luquintero@gmail.com", password: "********")
user_12 = User.create!(first_name: "Belén", last_name: "Álvarez", email: "belen@gmail.com", password: "********")
user_13 = User.create!(first_name: "Samuel David", last_name: "Giraldo", email: "samuel-david@gmail.com", password: "***********")
user_14 = User.create!(first_name: "Mathias", last_name: "Jiménez", email: "matt@gmail.com", password: "*****************")
user_15 = User.create!(first_name: "Ana Lucía", last_name: "Moreno", email: "anamaria_moreno@gmail.com", password: "password")
user_16 = User.create!(first_name: "Isabella", last_name: "Romero", email: "isa.romero@gmail.com", password: "coucou")
user_17 = User.create!(first_name: "Sofía", last_name: "Rivera", email: "sofia.rivera@gmail.com", password: "******")
user_18 = User.create!(first_name: "Maximiliano", last_name: "Valencia", email: "maxval@gmail.com", password: "password")
user_19 = User.create!(first_name: "Martín", last_name: "Suárez", email: "martin@gmail.com", password: "********")
user_20 = User.create!(first_name: "María Fernanda", last_name: "Castro", email: "mfernandac@gmail.com", password: "********")


file1 = URI.open("https://res.cloudinary.com/ddz8gswxn/image/upload/v1669297027/Partners/image_oeqsp5.jpg")
partner = Partner.new(first_name: "María", last_name: "Martínez", gender: "Female", address: "Cra 79A #45d 62, Los Pinos, Medellín, La América, Medellín, Antioquia, Colombia", temperament: "Shy", interest: "Gaming", age: 20, user_id: user_1.id)
partner.photo_url.attach(io: file1, filename: "photo1.png", content_type: "image/png")
partner.save

file2 = URI.open("https://res.cloudinary.com/ddz8gswxn/image/upload/v1669297026/Partners/image_2_y300b1.jpg")
partner1 = Partner.new(first_name: "Rodrigo", last_name: "Gómez", gender: "Male", address: "Cra. 79, Los Pinos, Medellín, La América, Medellín, Antioquia, Colombia", temperament: "Extrovert", interest: "Traveling", age: 22, user_id: user_2.id)
partner1.photo_url.attach(io: file2, filename: "photo1.png", content_type: "image/png")
partner1.save

file3 = URI.open("https://res.cloudinary.com/ddz8gswxn/image/upload/v1669297024/Partners/image_5_prubrl.jpg")
partner2 = Partner.new(first_name: "Thiago", last_name: "Sánchez", gender: "Male", address: "Cra. 79bb #45e-17, La Floresta, Medellín, La América, Medellín, Antioquia, Colombia", temperament: "Neutral", interest: "Reading", age: 28, user_id: user_3.id)
partner2.photo_url.attach(io: file3, filename: "photo1.png", content_type: "image/png")
partner2.save

file4 = URI.open("https://res.cloudinary.com/ddz8gswxn/image/upload/v1669297025/Partners/image_3_leiovg.jpg")
partner3 = Partner.new(first_name: "Dulce", last_name: "Hernández", gender: "Female", address: "Av. 80 #45-9, Los Pinos, Medellín, La América, Medellín, Antioquia, Colombia", temperament: "Extrovert", interest: "Music", age: 25, user_id: user_4.id)
partner3.photo_url.attach(io: file4, filename: "photo1.png", content_type: "image/png")
partner3.save

file5 = URI.open("https://res.cloudinary.com/ddz8gswxn/image/upload/v1669297023/Partners/image_4_lnul9z.jpg")
partner4 = Partner.new(first_name: "Ana Lucía", last_name: "Moreno", gender: "Female", address: "Cra. 79 #45E - 54, Los Pinos, Medellín, La América, Medellín, Antioquia, Colombia", temperament: "Shy", interest: "Nature", age: 19, user_id: user_5.id)
partner4.photo_url.attach(io: file5, filename: "photo1.png", content_type: "image/png")
partner4.save

file6 = URI.open("https://res.cloudinary.com/ddz8gswxn/image/upload/v1669297022/Partners/image_6_hteauk.jpg")
partner5 = Partner.new(first_name: "Juan David", last_name: "Ortiz", gender: "Male", address: "Cra. 77 #45b-153, Laureles - Estadio, Medellín, Laureles, Medellín, Antioquia, Colombia", temperament: "Neutral", interest: "Sport", age: 30, user_id: user_6.id)
partner5.photo_url.attach(io: file6, filename: "photo1.png", content_type: "image/png")
partner5.save

file7 = URI.open("https://res.cloudinary.com/ddz8gswxn/image/upload/v1669297020/Partners/image_8_y5usbd.jpg")
partner6 = Partner.new(first_name: "Santiago", last_name: "Vargas", gender: "Other", address: "Cl. 45a #79a-26, Los Pinos, Medellín, La América, Medellín, Antioquia, Colombia", temperament: "Extrovert", interest: "Traveling", age: 27, user_id: user_7.id)
partner6.photo_url.attach(io: file7, filename: "photo1.png", content_type: "image/png")
partner6.save

file8 = URI.open("https://res.cloudinary.com/ddz8gswxn/image/upload/v1669297019/Partners/image_9_eyk9pd.jpg")
partner7 = Partner.new(first_name: "Mathias", last_name: "Jiménez", gender: "Male", address: "Cl 45F #77a50, Laureles - Estadio, Medellín, Laureles, Medellín, Antioquia, Colombia", temperament: "Neutral", interest: "Reading", age: 25, user_id: user_8.id)
partner7.photo_url.attach(io: file8, filename: "photo1.png", content_type: "image/png")
partner7.save

file9 = URI.open("https://res.cloudinary.com/ddz8gswxn/image/upload/v1669297015/Partners/image_12_lwgujy.jpg")
partner8 = Partner.new(first_name: "María Fernanda", last_name: "Castro", gender: "Female", address: "Cra. 78 #45d4, Laureles - Estadio, Medellín, Laureles, Medellín, Antioquia, Colombia", temperament: "Shy", interest: "Reading", age: 24, user_id: user_9.id)
partner8.photo_url.attach(io: file9, filename: "photo1.png", content_type: "image/png")
partner8.save

file10 = URI.open("https://res.cloudinary.com/ddz8gswxn/image/upload/v1669297018/Partners/image_10_lnzzi5.jpg")
partner9 = Partner.new(first_name: "Mariangel", last_name: "Gutiérrez", gender: "Other", address: "Cl. 45E #76-63, Laureles - Estadio, Medellín, Laureles, Medellín, Antioquia, Colombia", temperament: "Neutral", interest: "Nature", age: 26, user_id: user_10.id)
partner9.photo_url.attach(io: file10, filename: "photo1.png", content_type: "image/png")
partner9.save

file11 = URI.open("https://res.cloudinary.com/ddz8gswxn/image/upload/v1669297013/Partners/image_14_t1050h.jpg")
partner10 = Partner.new(first_name: "Belén", last_name: "Álvarez", gender: "Female", address: "Cra. 79 #46-75, Laureles - Estadio, Medellín, Laureles, Medellín, Antioquia, Colombia", temperament: "Extrovert", interest: "Sport", age: 30, user_id: user_11.id)
partner10.photo_url.attach(io: file11, filename: "photo1.png", content_type: "image/png")
partner10.save

file12 = URI.open("https://res.cloudinary.com/ddz8gswxn/image/upload/v1669297008/Partners/image_18_gvzkbe.jpg")
partner11 = Partner.new(first_name: "Maximiliano", last_name: "Valencia", gender: "Male", address: "Cra. 78A # 46 -19, Los Pinos, Medellín, Laureles, Medellín, Antioquia, Colombia", temperament: "Shy", interest: "Music", age: 32, user_id: user_12.id)
partner11.photo_url.attach(io: file12, filename: "photo1.png", content_type: "image/png")
partner11.save

file13 = URI.open("https://res.cloudinary.com/ddz8gswxn/image/upload/v1669296999/Partners/image_19_ry7z2j.jpg")
partner12 = Partner.new(first_name: "Jerónimo", last_name: "Ruiz", gender: "Male", address: "#79cc-10, Tv. 45, Medellín, Antioquia, Colombia", temperament: "Extrovert", interest: "Sport", age: 30, user_id: user_13.id)
partner12.photo_url.attach(io: file13, filename: "photo1.png", content_type: "image/png")
partner12.save

file14 = URI.open("https://res.cloudinary.com/ddz8gswxn/image/upload/v1669296946/Partners/image_20_cgiiv6.jpg")
partner13 = Partner.new(first_name: "Martín", last_name: "Suárez", gender: "Male", address: "a 40a-56, Cra. 80B #40a-2, Medellín, Antioquia, Colombia", temperament: "Extrovert", interest: "Gaming", age: 31, user_id: user_14.id)
partner13.photo_url.attach(io: file14, filename: "photo1.png", content_type: "image/png")
partner13.save

file15 = URI.open("https://res.cloudinary.com/ddz8gswxn/image/upload/v1669297021/Partners/image_7_h6nabf.jpg")
partner14 = Partner.new(first_name: "Juan Diego", last_name: "Herrera", gender: "Male", address: "Cra. 72b #45F-22, Laureles - Estadio, Medellín, Laureles, Medellín, Antioquia, Colombia", temperament: "Neutral", interest: "Nature", age: 35, user_id: user_15.id)
partner14.photo_url.attach(io: file15, filename: "photo1.png", content_type: "image/png")
partner14.save

file16 = URI.open("https://res.cloudinary.com/ddz8gswxn/image/upload/v1669297010/Partners/image_17_xa043z.jpg")
partner15 = Partner.new(first_name: "Isabella", last_name: "Romero", gender: "Female", address: "Cra. 77 #4130, Laureles - Estadio, Medellín, Laureles, Medellín, Antioquia, Colombia", temperament: "Extrovert", interest: "Reading", age: 35, user_id: user_16.id)
partner15.photo_url.attach(io: file16, filename: "photo1.png", content_type: "image/png")
partner15.save

file17 = URI.open("https://res.cloudinary.com/ddz8gswxn/image/upload/v1669297012/Partners/image_15_pc1wrl.jpg")
partner16 = Partner.new(first_name: "Luciana", last_name: "Quintero", gender: "Female", address: "Cl. 41 #77-32, Laureles - Estadio, Medellín, Laureles, Medellín, Antioquia, Colombia", temperament: "Neutral", interest: "Reading", age: 31, user_id: user_17.id)
partner16.photo_url.attach(io: file17, filename: "photo1.png", content_type: "image/png")
partner16.save

file18 = URI.open("https://res.cloudinary.com/ddz8gswxn/image/upload/v1669297015/Partners/image_13_qlmqvc.jpg")
partner17 = Partner.new(first_name: "Andrés Felipe", last_name: "Morales", gender: "Male", address: "50031, Medellín, Antioquia, Colombia", temperament: "Extrovert", interest: "Sport", age: 32, user_id: user_18.id)
partner17.photo_url.attach(io: file18, filename: "photo1.png", content_type: "image/png")
partner17.save

file19 = URI.open("https://res.cloudinary.com/ddz8gswxn/image/upload/v1669297016/Partners/image_11_oqdg1x.jpg")
partner18 = Partner.new(first_name: "Samuel David", last_name: "Giraldo", gender: "Other", address: "Cl. 38a #79-48, Laureles - Estadio, Medellín, Laureles, Medellín, Antioquia, Colombia", temperament: "Shy", interest: "Nature", age: 24, user_id: user_19.id)
partner18.photo_url.attach(io: file19, filename: "photo1.png", content_type: "image/png")
partner18.save

file20 = URI.open("https://res.cloudinary.com/ddz8gswxn/image/upload/v1669297011/Partners/image_16_lxdrth.jpg")
partner19 = Partner.new(first_name: "Sofía", last_name: "Rivera", gender: "Female", address: "Cl. 38 #79-02, Laureles - Estadio, Medellín, Laureles, Medellín, Antioquia, Colombia", temperament: "Extrovert", interest: "Sport", age: 34, user_id: user_20.id)
partner19.photo_url.attach(io: file20, filename: "photo1.png", content_type: "image/png")
partner19.save
