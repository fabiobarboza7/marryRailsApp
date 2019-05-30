# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
Religion.create(title: "Adv");
Religion.create(title: "CcC");

id_user = 0
20.times do 
  User.create(
    email: Faker::Internet.unique.free_email,
    password: 123123
  )
  gender = Faker::Gender.binary_type
  Profile.create(
    user_id: id_user,
    first_name: gender == "Male" ? Faker::Name.male_first_name : Faker::Name.female_first_name,
    last_name: Faker::Name.unique.last_name,
    gender: gender,
    date_of_birth: Faker::Date.birthday(18, 59),
    photo: Faker::Avatar.unique.image,
    occupation: Faker::Job.title,
    about_me: Faker::GreekPhilosophers.quote,
    religion_id: Religion.all.sample.id
  )
  id_user += 1
end
