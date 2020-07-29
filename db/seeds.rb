# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all
Photographer.destroy_all
Appointment.destroy_all

User.reset_pk_sequence
Photographer.reset_pk_sequence
Appointment.reset_pk_sequence

10.times do 
    user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone_number: Faker::PhoneNumber.cell_phone, email: Faker::Internet.email, password: Faker::Alphanumeric.alpha(number: 10))

    photographer = Photographer.create(services: Faker::Lorem.word)

    Appointment.create!(date: Faker::Date.between(from: '2020-01-30', to: '2025-12-30'), user: user, photographer: photographer, message: Faker::Lorem.sentence(word_count: 3, supplemental: true, random_words_to_add: 10))
end